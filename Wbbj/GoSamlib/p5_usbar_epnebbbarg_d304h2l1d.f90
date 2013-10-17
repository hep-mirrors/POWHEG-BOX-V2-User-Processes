module     p5_usbar_epnebbbarg_d304h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d304h2l1d.f90
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
   public :: derivative , reconstruct_d304
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd304
      complex(ki) :: brack
      acd304(1)=dotproduct(k1,qshift)
      acd304(2)=dotproduct(k2,qshift)
      acd304(3)=abb304(53)
      acd304(4)=dotproduct(e7,qshift)
      acd304(5)=dotproduct(qshift,spvak2l6)
      acd304(6)=abb304(49)
      acd304(7)=abb304(39)
      acd304(8)=dotproduct(qshift,qshift)
      acd304(9)=abb304(55)
      acd304(10)=abb304(43)
      acd304(11)=dotproduct(qshift,spvak2l5)
      acd304(12)=abb304(12)
      acd304(13)=dotproduct(qshift,spvak2k7)
      acd304(14)=abb304(36)
      acd304(15)=dotproduct(qshift,spvak2e7)
      acd304(16)=abb304(61)
      acd304(17)=abb304(33)
      acd304(18)=dotproduct(k3,qshift)
      acd304(19)=dotproduct(k4,qshift)
      acd304(20)=abb304(28)
      acd304(21)=abb304(54)
      acd304(22)=dotproduct(qshift,spvak2k1)
      acd304(23)=abb304(38)
      acd304(24)=dotproduct(qshift,spvak2k3)
      acd304(25)=abb304(40)
      acd304(26)=dotproduct(qshift,spvak4k1)
      acd304(27)=abb304(29)
      acd304(28)=dotproduct(qshift,spvak4k3)
      acd304(29)=abb304(37)
      acd304(30)=abb304(18)
      acd304(31)=dotproduct(l5,qshift)
      acd304(32)=abb304(48)
      acd304(33)=abb304(35)
      acd304(34)=abb304(30)
      acd304(35)=dotproduct(k7,qshift)
      acd304(36)=abb304(22)
      acd304(37)=abb304(10)
      acd304(38)=abb304(32)
      acd304(39)=dotproduct(qshift,spval5k1)
      acd304(40)=abb304(59)
      acd304(41)=dotproduct(qshift,spval5k3)
      acd304(42)=abb304(58)
      acd304(43)=abb304(20)
      acd304(44)=dotproduct(qshift,spval5l6)
      acd304(45)=abb304(24)
      acd304(46)=abb304(25)
      acd304(47)=abb304(17)
      acd304(48)=abb304(26)
      acd304(49)=abb304(15)
      acd304(50)=abb304(23)
      acd304(51)=abb304(46)
      acd304(52)=abb304(50)
      acd304(53)=abb304(34)
      acd304(54)=abb304(44)
      acd304(55)=abb304(19)
      acd304(56)=abb304(11)
      acd304(57)=abb304(31)
      acd304(58)=abb304(56)
      acd304(59)=abb304(57)
      acd304(60)=abb304(47)
      acd304(61)=abb304(9)
      acd304(62)=abb304(13)
      acd304(63)=abb304(41)
      acd304(64)=abb304(45)
      acd304(65)=abb304(27)
      acd304(66)=abb304(42)
      acd304(67)=abb304(14)
      acd304(68)=abb304(21)
      acd304(69)=abb304(16)
      acd304(70)=acd304(31)-acd304(35)
      acd304(71)=acd304(32)*acd304(70)
      acd304(72)=-acd304(19)+acd304(1)-acd304(18)
      acd304(73)=acd304(10)*acd304(72)
      acd304(74)=acd304(41)*acd304(59)
      acd304(75)=-acd304(39)*acd304(58)
      acd304(76)=acd304(28)*acd304(57)
      acd304(77)=acd304(26)*acd304(56)
      acd304(78)=-acd304(8)*acd304(50)
      acd304(79)=acd304(2)*acd304(21)
      acd304(71)=acd304(79)+acd304(78)+acd304(77)+acd304(76)+acd304(75)-acd304(&
      &60)+acd304(74)+acd304(73)+acd304(71)
      acd304(71)=acd304(5)*acd304(71)
      acd304(73)=acd304(6)*acd304(72)
      acd304(74)=-acd304(41)*acd304(42)
      acd304(75)=acd304(39)*acd304(40)
      acd304(76)=-acd304(28)*acd304(38)
      acd304(77)=-acd304(26)*acd304(37)
      acd304(73)=acd304(77)+acd304(76)+acd304(75)+acd304(43)+acd304(74)+acd304(&
      &73)
      acd304(73)=acd304(5)*acd304(73)
      acd304(74)=acd304(7)*acd304(72)
      acd304(75)=acd304(44)*acd304(42)
      acd304(75)=acd304(46)+acd304(75)
      acd304(75)=acd304(24)*acd304(75)
      acd304(76)=-acd304(44)*acd304(40)
      acd304(76)=acd304(45)+acd304(76)
      acd304(76)=acd304(22)*acd304(76)
      acd304(77)=acd304(28)*acd304(48)
      acd304(78)=acd304(26)*acd304(47)
      acd304(79)=-acd304(8)*acd304(36)
      acd304(80)=acd304(2)*acd304(20)
      acd304(73)=acd304(73)+acd304(80)+acd304(79)+acd304(78)+acd304(77)+acd304(&
      &76)-acd304(49)+acd304(75)+acd304(74)
      acd304(73)=acd304(4)*acd304(73)
      acd304(74)=-acd304(9)*acd304(72)
      acd304(75)=-acd304(24)*acd304(52)
      acd304(76)=-acd304(22)*acd304(51)
      acd304(77)=-acd304(28)*acd304(54)
      acd304(78)=-acd304(26)*acd304(53)
      acd304(74)=acd304(78)+acd304(77)+acd304(76)+acd304(55)+acd304(75)+acd304(&
      &74)
      acd304(74)=acd304(8)*acd304(74)
      acd304(75)=acd304(3)*acd304(72)
      acd304(76)=acd304(24)*acd304(25)
      acd304(77)=acd304(22)*acd304(23)
      acd304(78)=acd304(28)*acd304(29)
      acd304(79)=acd304(26)*acd304(27)
      acd304(75)=acd304(79)+acd304(78)+acd304(77)-acd304(30)+acd304(76)+acd304(&
      &75)
      acd304(75)=acd304(2)*acd304(75)
      acd304(76)=acd304(15)*acd304(16)
      acd304(77)=acd304(13)*acd304(14)
      acd304(78)=acd304(11)*acd304(12)
      acd304(76)=-acd304(76)-acd304(77)+acd304(78)-acd304(17)
      acd304(72)=-acd304(76)*acd304(72)
      acd304(76)=acd304(15)*acd304(66)
      acd304(77)=acd304(13)*acd304(64)
      acd304(78)=acd304(11)*acd304(62)
      acd304(76)=acd304(78)+acd304(77)-acd304(68)+acd304(76)
      acd304(76)=acd304(28)*acd304(76)
      acd304(77)=acd304(15)*acd304(65)
      acd304(78)=acd304(13)*acd304(63)
      acd304(79)=acd304(11)*acd304(61)
      acd304(77)=acd304(79)+acd304(78)-acd304(67)+acd304(77)
      acd304(77)=acd304(26)*acd304(77)
      acd304(78)=acd304(34)*acd304(70)
      acd304(79)=-acd304(44)*acd304(59)
      acd304(78)=acd304(79)+acd304(78)
      acd304(78)=acd304(24)*acd304(78)
      acd304(70)=-acd304(33)*acd304(70)
      acd304(79)=acd304(44)*acd304(58)
      acd304(70)=acd304(79)+acd304(70)
      acd304(70)=acd304(22)*acd304(70)
      brack=acd304(69)+acd304(70)+acd304(71)+acd304(72)+acd304(73)+acd304(74)+a&
      &cd304(75)+acd304(76)+acd304(77)+acd304(78)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(107) :: acd304
      complex(ki) :: brack
      acd304(1)=k1(iv1)
      acd304(2)=dotproduct(k2,qshift)
      acd304(3)=abb304(53)
      acd304(4)=dotproduct(e7,qshift)
      acd304(5)=dotproduct(qshift,spvak2l6)
      acd304(6)=abb304(49)
      acd304(7)=abb304(39)
      acd304(8)=dotproduct(qshift,qshift)
      acd304(9)=abb304(55)
      acd304(10)=abb304(43)
      acd304(11)=dotproduct(qshift,spvak2l5)
      acd304(12)=abb304(12)
      acd304(13)=dotproduct(qshift,spvak2k7)
      acd304(14)=abb304(36)
      acd304(15)=dotproduct(qshift,spvak2e7)
      acd304(16)=abb304(61)
      acd304(17)=abb304(33)
      acd304(18)=k2(iv1)
      acd304(19)=dotproduct(k1,qshift)
      acd304(20)=dotproduct(k3,qshift)
      acd304(21)=dotproduct(k4,qshift)
      acd304(22)=abb304(28)
      acd304(23)=abb304(54)
      acd304(24)=dotproduct(qshift,spvak2k1)
      acd304(25)=abb304(38)
      acd304(26)=dotproduct(qshift,spvak2k3)
      acd304(27)=abb304(40)
      acd304(28)=dotproduct(qshift,spvak4k1)
      acd304(29)=abb304(29)
      acd304(30)=dotproduct(qshift,spvak4k3)
      acd304(31)=abb304(37)
      acd304(32)=abb304(18)
      acd304(33)=k3(iv1)
      acd304(34)=k4(iv1)
      acd304(35)=l5(iv1)
      acd304(36)=abb304(48)
      acd304(37)=abb304(35)
      acd304(38)=abb304(30)
      acd304(39)=k7(iv1)
      acd304(40)=e7(iv1)
      acd304(41)=abb304(22)
      acd304(42)=abb304(10)
      acd304(43)=abb304(32)
      acd304(44)=dotproduct(qshift,spval5k1)
      acd304(45)=abb304(59)
      acd304(46)=dotproduct(qshift,spval5k3)
      acd304(47)=abb304(58)
      acd304(48)=abb304(20)
      acd304(49)=dotproduct(qshift,spval5l6)
      acd304(50)=abb304(24)
      acd304(51)=abb304(25)
      acd304(52)=abb304(17)
      acd304(53)=abb304(26)
      acd304(54)=abb304(15)
      acd304(55)=qshift(iv1)
      acd304(56)=abb304(23)
      acd304(57)=abb304(46)
      acd304(58)=abb304(50)
      acd304(59)=abb304(34)
      acd304(60)=abb304(44)
      acd304(61)=abb304(19)
      acd304(62)=spvak2l6(iv1)
      acd304(63)=dotproduct(l5,qshift)
      acd304(64)=dotproduct(k7,qshift)
      acd304(65)=abb304(11)
      acd304(66)=abb304(31)
      acd304(67)=abb304(56)
      acd304(68)=abb304(57)
      acd304(69)=abb304(47)
      acd304(70)=spvak2l5(iv1)
      acd304(71)=abb304(9)
      acd304(72)=abb304(13)
      acd304(73)=spvak2k7(iv1)
      acd304(74)=abb304(41)
      acd304(75)=abb304(45)
      acd304(76)=spvak2e7(iv1)
      acd304(77)=abb304(27)
      acd304(78)=abb304(42)
      acd304(79)=spvak2k1(iv1)
      acd304(80)=spvak2k3(iv1)
      acd304(81)=spvak4k1(iv1)
      acd304(82)=abb304(14)
      acd304(83)=spvak4k3(iv1)
      acd304(84)=abb304(21)
      acd304(85)=spval5l6(iv1)
      acd304(86)=spval5k1(iv1)
      acd304(87)=spval5k3(iv1)
      acd304(88)=acd304(47)*acd304(46)
      acd304(89)=-acd304(21)+acd304(19)-acd304(20)
      acd304(90)=acd304(89)*acd304(6)
      acd304(91)=acd304(45)*acd304(44)
      acd304(92)=acd304(30)*acd304(43)
      acd304(93)=acd304(28)*acd304(42)
      acd304(88)=acd304(48)-acd304(88)+acd304(91)-acd304(92)+acd304(90)-acd304(&
      &93)
      acd304(90)=acd304(62)*acd304(88)
      acd304(91)=acd304(33)+acd304(34)
      acd304(92)=acd304(91)-acd304(1)
      acd304(93)=-acd304(6)*acd304(92)
      acd304(94)=-acd304(47)*acd304(87)
      acd304(95)=acd304(45)*acd304(86)
      acd304(96)=-acd304(83)*acd304(43)
      acd304(97)=-acd304(81)*acd304(42)
      acd304(93)=acd304(97)+acd304(96)+acd304(94)+acd304(95)+acd304(93)
      acd304(93)=acd304(5)*acd304(93)
      acd304(94)=acd304(26)*acd304(47)
      acd304(95)=-acd304(24)*acd304(45)
      acd304(94)=acd304(95)+acd304(94)
      acd304(94)=acd304(85)*acd304(94)
      acd304(95)=-acd304(7)*acd304(92)
      acd304(96)=acd304(47)*acd304(49)
      acd304(96)=acd304(96)+acd304(51)
      acd304(97)=acd304(80)*acd304(96)
      acd304(98)=acd304(45)*acd304(49)
      acd304(98)=acd304(98)-acd304(50)
      acd304(99)=-acd304(79)*acd304(98)
      acd304(100)=acd304(83)*acd304(53)
      acd304(101)=acd304(81)*acd304(52)
      acd304(102)=2.0_ki*acd304(55)
      acd304(103)=-acd304(41)*acd304(102)
      acd304(104)=acd304(18)*acd304(22)
      acd304(90)=acd304(93)+acd304(90)+acd304(104)+acd304(103)+acd304(101)+acd3&
      &04(100)+acd304(97)+acd304(99)+acd304(95)+acd304(94)
      acd304(90)=acd304(4)*acd304(90)
      acd304(88)=acd304(40)*acd304(88)
      acd304(92)=-acd304(10)*acd304(92)
      acd304(93)=acd304(68)*acd304(87)
      acd304(94)=-acd304(67)*acd304(86)
      acd304(95)=acd304(35)-acd304(39)
      acd304(97)=acd304(36)*acd304(95)
      acd304(99)=acd304(83)*acd304(66)
      acd304(100)=acd304(81)*acd304(65)
      acd304(101)=-acd304(56)*acd304(102)
      acd304(103)=acd304(18)*acd304(23)
      acd304(88)=acd304(88)+acd304(103)+acd304(101)+acd304(100)+acd304(99)+acd3&
      &04(97)+acd304(93)+acd304(94)+acd304(92)
      acd304(88)=acd304(5)*acd304(88)
      acd304(92)=acd304(10)*acd304(89)
      acd304(93)=acd304(68)*acd304(46)
      acd304(94)=-acd304(67)*acd304(44)
      acd304(97)=acd304(63)-acd304(64)
      acd304(99)=acd304(36)*acd304(97)
      acd304(100)=acd304(30)*acd304(66)
      acd304(101)=acd304(28)*acd304(65)
      acd304(103)=-acd304(8)*acd304(56)
      acd304(104)=acd304(2)*acd304(23)
      acd304(92)=acd304(104)+acd304(103)+acd304(101)+acd304(100)+acd304(99)+acd&
      &304(94)-acd304(69)+acd304(93)+acd304(92)
      acd304(92)=acd304(62)*acd304(92)
      acd304(93)=acd304(7)*acd304(89)
      acd304(94)=acd304(26)*acd304(96)
      acd304(96)=-acd304(24)*acd304(98)
      acd304(98)=acd304(30)*acd304(53)
      acd304(99)=acd304(28)*acd304(52)
      acd304(100)=-acd304(8)*acd304(41)
      acd304(101)=acd304(2)*acd304(22)
      acd304(93)=acd304(101)+acd304(100)+acd304(99)+acd304(98)+acd304(96)-acd30&
      &4(54)+acd304(94)+acd304(93)
      acd304(93)=acd304(40)*acd304(93)
      acd304(94)=acd304(9)*acd304(91)
      acd304(96)=-acd304(80)*acd304(58)
      acd304(98)=-acd304(79)*acd304(57)
      acd304(99)=-acd304(83)*acd304(60)
      acd304(100)=-acd304(81)*acd304(59)
      acd304(94)=acd304(100)+acd304(99)+acd304(96)+acd304(98)+acd304(94)
      acd304(94)=acd304(8)*acd304(94)
      acd304(96)=-acd304(3)*acd304(91)
      acd304(98)=acd304(80)*acd304(27)
      acd304(99)=acd304(79)*acd304(25)
      acd304(100)=acd304(83)*acd304(31)
      acd304(101)=acd304(81)*acd304(29)
      acd304(96)=acd304(101)+acd304(100)+acd304(98)+acd304(99)+acd304(96)
      acd304(96)=acd304(2)*acd304(96)
      acd304(98)=-acd304(9)*acd304(89)
      acd304(99)=-acd304(26)*acd304(58)
      acd304(100)=-acd304(24)*acd304(57)
      acd304(101)=-acd304(30)*acd304(60)
      acd304(103)=-acd304(28)*acd304(59)
      acd304(98)=acd304(103)+acd304(101)+acd304(100)+acd304(61)+acd304(99)+acd3&
      &04(98)
      acd304(98)=acd304(98)*acd304(102)
      acd304(99)=acd304(3)*acd304(89)
      acd304(100)=acd304(26)*acd304(27)
      acd304(101)=acd304(24)*acd304(25)
      acd304(102)=acd304(30)*acd304(31)
      acd304(103)=acd304(28)*acd304(29)
      acd304(99)=acd304(103)+acd304(102)+acd304(101)-acd304(32)+acd304(100)+acd&
      &304(99)
      acd304(99)=acd304(18)*acd304(99)
      acd304(100)=acd304(16)*acd304(15)
      acd304(101)=acd304(14)*acd304(13)
      acd304(102)=acd304(12)*acd304(11)
      acd304(100)=acd304(17)-acd304(102)+acd304(100)+acd304(101)
      acd304(91)=-acd304(100)*acd304(91)
      acd304(101)=acd304(16)*acd304(76)
      acd304(102)=acd304(14)*acd304(73)
      acd304(103)=acd304(12)*acd304(70)
      acd304(101)=-acd304(103)+acd304(101)+acd304(102)
      acd304(89)=acd304(101)*acd304(89)
      acd304(101)=acd304(15)*acd304(78)
      acd304(102)=acd304(13)*acd304(75)
      acd304(103)=acd304(11)*acd304(72)
      acd304(101)=acd304(103)+acd304(102)-acd304(84)+acd304(101)
      acd304(101)=acd304(83)*acd304(101)
      acd304(102)=acd304(15)*acd304(77)
      acd304(103)=acd304(13)*acd304(74)
      acd304(104)=acd304(11)*acd304(71)
      acd304(102)=acd304(104)+acd304(103)-acd304(82)+acd304(102)
      acd304(102)=acd304(81)*acd304(102)
      acd304(103)=acd304(76)*acd304(78)
      acd304(104)=acd304(73)*acd304(75)
      acd304(105)=acd304(70)*acd304(72)
      acd304(103)=acd304(105)+acd304(103)+acd304(104)
      acd304(103)=acd304(30)*acd304(103)
      acd304(104)=acd304(76)*acd304(77)
      acd304(105)=acd304(73)*acd304(74)
      acd304(106)=acd304(70)*acd304(71)
      acd304(104)=acd304(106)+acd304(104)+acd304(105)
      acd304(104)=acd304(28)*acd304(104)
      acd304(105)=-acd304(8)*acd304(9)
      acd304(106)=acd304(2)*acd304(3)
      acd304(100)=acd304(106)+acd304(105)+acd304(100)
      acd304(100)=acd304(1)*acd304(100)
      acd304(105)=acd304(38)*acd304(97)
      acd304(106)=-acd304(49)*acd304(68)
      acd304(105)=acd304(105)+acd304(106)
      acd304(105)=acd304(80)*acd304(105)
      acd304(97)=-acd304(37)*acd304(97)
      acd304(106)=acd304(49)*acd304(67)
      acd304(97)=acd304(97)+acd304(106)
      acd304(97)=acd304(79)*acd304(97)
      acd304(106)=-acd304(68)*acd304(85)
      acd304(107)=acd304(38)*acd304(95)
      acd304(106)=acd304(106)+acd304(107)
      acd304(106)=acd304(26)*acd304(106)
      acd304(107)=acd304(67)*acd304(85)
      acd304(95)=-acd304(37)*acd304(95)
      acd304(95)=acd304(107)+acd304(95)
      acd304(95)=acd304(24)*acd304(95)
      brack=acd304(88)+acd304(89)+acd304(90)+acd304(91)+acd304(92)+acd304(93)+a&
      &cd304(94)+acd304(95)+acd304(96)+acd304(97)+acd304(98)+acd304(99)+acd304(&
      &100)+acd304(101)+acd304(102)+acd304(103)+acd304(104)+acd304(105)+acd304(&
      &106)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(119) :: acd304
      complex(ki) :: brack
      acd304(1)=d(iv1,iv2)
      acd304(2)=dotproduct(k1,qshift)
      acd304(3)=abb304(55)
      acd304(4)=dotproduct(k3,qshift)
      acd304(5)=dotproduct(k4,qshift)
      acd304(6)=dotproduct(e7,qshift)
      acd304(7)=abb304(22)
      acd304(8)=dotproduct(qshift,spvak2k1)
      acd304(9)=abb304(46)
      acd304(10)=dotproduct(qshift,spvak2k3)
      acd304(11)=abb304(50)
      acd304(12)=dotproduct(qshift,spvak2l6)
      acd304(13)=abb304(23)
      acd304(14)=dotproduct(qshift,spvak4k1)
      acd304(15)=abb304(34)
      acd304(16)=dotproduct(qshift,spvak4k3)
      acd304(17)=abb304(44)
      acd304(18)=abb304(19)
      acd304(19)=k1(iv1)
      acd304(20)=k2(iv2)
      acd304(21)=abb304(53)
      acd304(22)=e7(iv2)
      acd304(23)=abb304(49)
      acd304(24)=abb304(39)
      acd304(25)=qshift(iv2)
      acd304(26)=spvak2l6(iv2)
      acd304(27)=abb304(43)
      acd304(28)=spvak2l5(iv2)
      acd304(29)=abb304(12)
      acd304(30)=spvak2k7(iv2)
      acd304(31)=abb304(36)
      acd304(32)=spvak2e7(iv2)
      acd304(33)=abb304(61)
      acd304(34)=k1(iv2)
      acd304(35)=k2(iv1)
      acd304(36)=e7(iv1)
      acd304(37)=qshift(iv1)
      acd304(38)=spvak2l6(iv1)
      acd304(39)=spvak2l5(iv1)
      acd304(40)=spvak2k7(iv1)
      acd304(41)=spvak2e7(iv1)
      acd304(42)=k3(iv2)
      acd304(43)=k4(iv2)
      acd304(44)=abb304(28)
      acd304(45)=spvak2k1(iv2)
      acd304(46)=abb304(38)
      acd304(47)=spvak2k3(iv2)
      acd304(48)=abb304(40)
      acd304(49)=abb304(54)
      acd304(50)=spvak4k1(iv2)
      acd304(51)=abb304(29)
      acd304(52)=spvak4k3(iv2)
      acd304(53)=abb304(37)
      acd304(54)=k3(iv1)
      acd304(55)=k4(iv1)
      acd304(56)=spvak2k1(iv1)
      acd304(57)=spvak2k3(iv1)
      acd304(58)=spvak4k1(iv1)
      acd304(59)=spvak4k3(iv1)
      acd304(60)=l5(iv1)
      acd304(61)=abb304(35)
      acd304(62)=abb304(30)
      acd304(63)=abb304(48)
      acd304(64)=l5(iv2)
      acd304(65)=k7(iv1)
      acd304(66)=k7(iv2)
      acd304(67)=dotproduct(qshift,spval5l6)
      acd304(68)=abb304(59)
      acd304(69)=abb304(24)
      acd304(70)=abb304(58)
      acd304(71)=abb304(25)
      acd304(72)=abb304(10)
      acd304(73)=abb304(32)
      acd304(74)=dotproduct(qshift,spval5k1)
      acd304(75)=dotproduct(qshift,spval5k3)
      acd304(76)=abb304(20)
      acd304(77)=abb304(17)
      acd304(78)=abb304(26)
      acd304(79)=spval5l6(iv2)
      acd304(80)=spval5k1(iv2)
      acd304(81)=spval5k3(iv2)
      acd304(82)=spval5l6(iv1)
      acd304(83)=spval5k1(iv1)
      acd304(84)=spval5k3(iv1)
      acd304(85)=abb304(56)
      acd304(86)=abb304(57)
      acd304(87)=abb304(11)
      acd304(88)=abb304(31)
      acd304(89)=abb304(9)
      acd304(90)=abb304(41)
      acd304(91)=abb304(27)
      acd304(92)=abb304(13)
      acd304(93)=abb304(45)
      acd304(94)=abb304(42)
      acd304(95)=acd304(73)*acd304(16)
      acd304(96)=acd304(72)*acd304(14)
      acd304(97)=-acd304(5)+acd304(2)-acd304(4)
      acd304(98)=acd304(97)*acd304(23)
      acd304(99)=acd304(70)*acd304(75)
      acd304(100)=acd304(68)*acd304(74)
      acd304(95)=-acd304(76)+acd304(95)+acd304(99)-acd304(100)+acd304(96)-acd30&
      &4(98)
      acd304(96)=-acd304(26)*acd304(95)
      acd304(98)=acd304(52)*acd304(73)
      acd304(99)=acd304(50)*acd304(72)
      acd304(100)=acd304(70)*acd304(81)
      acd304(101)=acd304(68)*acd304(80)
      acd304(98)=-acd304(101)+acd304(98)+acd304(99)+acd304(100)
      acd304(99)=-acd304(12)*acd304(98)
      acd304(100)=acd304(23)*acd304(12)
      acd304(100)=acd304(100)+acd304(24)
      acd304(101)=acd304(42)+acd304(43)
      acd304(102)=acd304(101)-acd304(34)
      acd304(103)=-acd304(102)*acd304(100)
      acd304(104)=acd304(79)*acd304(10)
      acd304(105)=acd304(47)*acd304(67)
      acd304(104)=acd304(104)+acd304(105)
      acd304(104)=acd304(70)*acd304(104)
      acd304(105)=-acd304(79)*acd304(8)
      acd304(106)=-acd304(45)*acd304(67)
      acd304(105)=acd304(105)+acd304(106)
      acd304(105)=acd304(68)*acd304(105)
      acd304(106)=acd304(47)*acd304(71)
      acd304(107)=acd304(45)*acd304(69)
      acd304(108)=acd304(52)*acd304(78)
      acd304(109)=acd304(50)*acd304(77)
      acd304(110)=2.0_ki*acd304(25)
      acd304(111)=-acd304(7)*acd304(110)
      acd304(112)=acd304(20)*acd304(44)
      acd304(96)=acd304(96)+acd304(99)+acd304(105)+acd304(104)+acd304(112)+acd3&
      &04(111)+acd304(109)+acd304(108)+acd304(106)+acd304(107)+acd304(103)
      acd304(96)=acd304(36)*acd304(96)
      acd304(95)=-acd304(38)*acd304(95)
      acd304(99)=acd304(59)*acd304(73)
      acd304(103)=acd304(58)*acd304(72)
      acd304(104)=acd304(70)*acd304(84)
      acd304(105)=acd304(68)*acd304(83)
      acd304(99)=acd304(103)+acd304(99)+acd304(104)-acd304(105)
      acd304(103)=-acd304(12)*acd304(99)
      acd304(104)=acd304(54)+acd304(55)
      acd304(105)=acd304(104)-acd304(19)
      acd304(100)=-acd304(105)*acd304(100)
      acd304(106)=acd304(82)*acd304(10)
      acd304(107)=acd304(57)*acd304(67)
      acd304(106)=acd304(106)+acd304(107)
      acd304(106)=acd304(70)*acd304(106)
      acd304(107)=-acd304(82)*acd304(8)
      acd304(108)=-acd304(56)*acd304(67)
      acd304(107)=acd304(107)+acd304(108)
      acd304(107)=acd304(68)*acd304(107)
      acd304(108)=acd304(57)*acd304(71)
      acd304(109)=acd304(56)*acd304(69)
      acd304(111)=acd304(59)*acd304(78)
      acd304(112)=acd304(58)*acd304(77)
      acd304(113)=2.0_ki*acd304(37)
      acd304(114)=-acd304(7)*acd304(113)
      acd304(115)=acd304(35)*acd304(44)
      acd304(95)=acd304(95)+acd304(103)+acd304(107)+acd304(106)+acd304(115)+acd&
      &304(114)+acd304(112)+acd304(111)+acd304(108)+acd304(109)+acd304(100)
      acd304(95)=acd304(22)*acd304(95)
      acd304(100)=-acd304(23)*acd304(102)
      acd304(98)=acd304(100)-acd304(98)
      acd304(98)=acd304(6)*acd304(98)
      acd304(100)=-acd304(27)*acd304(102)
      acd304(103)=acd304(86)*acd304(81)
      acd304(106)=-acd304(85)*acd304(80)
      acd304(107)=acd304(64)-acd304(66)
      acd304(108)=acd304(63)*acd304(107)
      acd304(109)=acd304(52)*acd304(88)
      acd304(111)=acd304(50)*acd304(87)
      acd304(112)=-acd304(13)*acd304(110)
      acd304(114)=acd304(20)*acd304(49)
      acd304(98)=acd304(98)+acd304(114)+acd304(112)+acd304(111)+acd304(109)+acd&
      &304(108)+acd304(103)+acd304(106)+acd304(100)
      acd304(98)=acd304(38)*acd304(98)
      acd304(100)=-acd304(23)*acd304(105)
      acd304(99)=acd304(100)-acd304(99)
      acd304(99)=acd304(6)*acd304(99)
      acd304(100)=-acd304(27)*acd304(105)
      acd304(103)=acd304(86)*acd304(84)
      acd304(106)=-acd304(85)*acd304(83)
      acd304(108)=acd304(60)-acd304(65)
      acd304(109)=acd304(63)*acd304(108)
      acd304(111)=acd304(59)*acd304(88)
      acd304(112)=acd304(58)*acd304(87)
      acd304(114)=-acd304(13)*acd304(113)
      acd304(115)=acd304(35)*acd304(49)
      acd304(99)=acd304(99)+acd304(115)+acd304(114)+acd304(112)+acd304(111)+acd&
      &304(109)+acd304(103)+acd304(106)+acd304(100)
      acd304(99)=acd304(26)*acd304(99)
      acd304(100)=-acd304(16)*acd304(17)
      acd304(103)=-acd304(14)*acd304(15)
      acd304(106)=-acd304(10)*acd304(11)
      acd304(109)=-acd304(8)*acd304(9)
      acd304(97)=-acd304(3)*acd304(97)
      acd304(111)=-acd304(12)*acd304(13)
      acd304(97)=acd304(111)+acd304(97)+acd304(109)+acd304(106)+acd304(103)+acd&
      &304(18)+acd304(100)
      acd304(100)=2.0_ki*acd304(1)
      acd304(97)=acd304(100)*acd304(97)
      acd304(103)=-acd304(21)*acd304(101)
      acd304(106)=acd304(47)*acd304(48)
      acd304(109)=acd304(45)*acd304(46)
      acd304(111)=acd304(52)*acd304(53)
      acd304(112)=acd304(50)*acd304(51)
      acd304(103)=acd304(112)+acd304(111)+acd304(106)+acd304(109)+acd304(103)
      acd304(103)=acd304(35)*acd304(103)
      acd304(106)=-acd304(21)*acd304(104)
      acd304(109)=acd304(57)*acd304(48)
      acd304(111)=acd304(56)*acd304(46)
      acd304(112)=acd304(59)*acd304(53)
      acd304(114)=acd304(58)*acd304(51)
      acd304(106)=acd304(114)+acd304(112)+acd304(109)+acd304(111)+acd304(106)
      acd304(106)=acd304(20)*acd304(106)
      acd304(109)=-acd304(47)*acd304(11)
      acd304(111)=-acd304(45)*acd304(9)
      acd304(112)=-acd304(52)*acd304(17)
      acd304(114)=-acd304(50)*acd304(15)
      acd304(109)=acd304(114)+acd304(112)+acd304(109)+acd304(111)
      acd304(109)=acd304(109)*acd304(113)
      acd304(111)=-acd304(57)*acd304(11)
      acd304(112)=-acd304(56)*acd304(9)
      acd304(113)=-acd304(59)*acd304(17)
      acd304(114)=-acd304(58)*acd304(15)
      acd304(111)=acd304(114)+acd304(113)+acd304(111)+acd304(112)
      acd304(110)=acd304(111)*acd304(110)
      acd304(111)=acd304(33)*acd304(32)
      acd304(112)=acd304(31)*acd304(30)
      acd304(113)=acd304(29)*acd304(28)
      acd304(111)=-acd304(113)+acd304(111)+acd304(112)
      acd304(104)=-acd304(111)*acd304(104)
      acd304(112)=acd304(33)*acd304(41)
      acd304(113)=acd304(31)*acd304(40)
      acd304(114)=acd304(29)*acd304(39)
      acd304(112)=-acd304(114)+acd304(112)+acd304(113)
      acd304(101)=-acd304(112)*acd304(101)
      acd304(113)=acd304(32)*acd304(94)
      acd304(114)=acd304(30)*acd304(93)
      acd304(115)=acd304(28)*acd304(92)
      acd304(113)=acd304(115)+acd304(113)+acd304(114)
      acd304(113)=acd304(59)*acd304(113)
      acd304(114)=acd304(32)*acd304(91)
      acd304(115)=acd304(30)*acd304(90)
      acd304(116)=acd304(28)*acd304(89)
      acd304(114)=acd304(116)+acd304(114)+acd304(115)
      acd304(114)=acd304(58)*acd304(114)
      acd304(115)=acd304(41)*acd304(94)
      acd304(116)=acd304(40)*acd304(93)
      acd304(117)=acd304(39)*acd304(92)
      acd304(115)=acd304(117)+acd304(115)+acd304(116)
      acd304(115)=acd304(52)*acd304(115)
      acd304(116)=acd304(41)*acd304(91)
      acd304(117)=acd304(40)*acd304(90)
      acd304(118)=acd304(39)*acd304(89)
      acd304(116)=acd304(118)+acd304(116)+acd304(117)
      acd304(116)=acd304(50)*acd304(116)
      acd304(117)=acd304(35)*acd304(21)
      acd304(112)=acd304(117)+acd304(112)
      acd304(112)=acd304(34)*acd304(112)
      acd304(117)=acd304(20)*acd304(21)
      acd304(111)=acd304(117)+acd304(111)
      acd304(111)=acd304(19)*acd304(111)
      acd304(117)=acd304(57)*acd304(79)
      acd304(118)=acd304(47)*acd304(82)
      acd304(117)=acd304(117)+acd304(118)
      acd304(117)=acd304(70)*acd304(117)
      acd304(118)=-acd304(56)*acd304(79)
      acd304(119)=-acd304(45)*acd304(82)
      acd304(118)=acd304(118)+acd304(119)
      acd304(118)=acd304(68)*acd304(118)
      acd304(100)=-acd304(7)*acd304(100)
      acd304(100)=acd304(118)+acd304(100)+acd304(117)
      acd304(100)=acd304(6)*acd304(100)
      acd304(117)=acd304(62)*acd304(107)
      acd304(118)=-acd304(79)*acd304(86)
      acd304(117)=acd304(117)+acd304(118)
      acd304(117)=acd304(57)*acd304(117)
      acd304(107)=-acd304(61)*acd304(107)
      acd304(118)=acd304(79)*acd304(85)
      acd304(107)=acd304(107)+acd304(118)
      acd304(107)=acd304(56)*acd304(107)
      acd304(118)=acd304(62)*acd304(108)
      acd304(119)=-acd304(82)*acd304(86)
      acd304(118)=acd304(118)+acd304(119)
      acd304(118)=acd304(47)*acd304(118)
      acd304(108)=-acd304(61)*acd304(108)
      acd304(119)=acd304(82)*acd304(85)
      acd304(108)=acd304(108)+acd304(119)
      acd304(108)=acd304(45)*acd304(108)
      acd304(102)=acd304(37)*acd304(102)
      acd304(105)=acd304(25)*acd304(105)
      acd304(102)=acd304(105)+acd304(102)
      acd304(102)=acd304(3)*acd304(102)
      brack=acd304(95)+acd304(96)+acd304(97)+acd304(98)+acd304(99)+acd304(100)+&
      &acd304(101)+2.0_ki*acd304(102)+acd304(103)+acd304(104)+acd304(106)+acd30&
      &4(107)+acd304(108)+acd304(109)+acd304(110)+acd304(111)+acd304(112)+acd30&
      &4(113)+acd304(114)+acd304(115)+acd304(116)+acd304(117)+acd304(118)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd304h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd304
      complex(ki) :: brack
      acd304(1)=d(iv1,iv2)
      acd304(2)=k1(iv3)
      acd304(3)=abb304(55)
      acd304(4)=k3(iv3)
      acd304(5)=k4(iv3)
      acd304(6)=e7(iv3)
      acd304(7)=abb304(22)
      acd304(8)=spvak2k1(iv3)
      acd304(9)=abb304(46)
      acd304(10)=spvak2k3(iv3)
      acd304(11)=abb304(50)
      acd304(12)=spvak2l6(iv3)
      acd304(13)=abb304(23)
      acd304(14)=spvak4k1(iv3)
      acd304(15)=abb304(34)
      acd304(16)=spvak4k3(iv3)
      acd304(17)=abb304(44)
      acd304(18)=d(iv1,iv3)
      acd304(19)=k1(iv2)
      acd304(20)=k3(iv2)
      acd304(21)=k4(iv2)
      acd304(22)=e7(iv2)
      acd304(23)=spvak2k1(iv2)
      acd304(24)=spvak2k3(iv2)
      acd304(25)=spvak2l6(iv2)
      acd304(26)=spvak4k1(iv2)
      acd304(27)=spvak4k3(iv2)
      acd304(28)=d(iv2,iv3)
      acd304(29)=k1(iv1)
      acd304(30)=k3(iv1)
      acd304(31)=k4(iv1)
      acd304(32)=e7(iv1)
      acd304(33)=spvak2k1(iv1)
      acd304(34)=spvak2k3(iv1)
      acd304(35)=spvak2l6(iv1)
      acd304(36)=spvak4k1(iv1)
      acd304(37)=spvak4k3(iv1)
      acd304(38)=abb304(49)
      acd304(39)=spval5l6(iv3)
      acd304(40)=abb304(59)
      acd304(41)=spval5l6(iv2)
      acd304(42)=abb304(58)
      acd304(43)=abb304(10)
      acd304(44)=abb304(32)
      acd304(45)=spval5k1(iv3)
      acd304(46)=spval5k3(iv3)
      acd304(47)=spval5k1(iv2)
      acd304(48)=spval5k3(iv2)
      acd304(49)=spval5l6(iv1)
      acd304(50)=spval5k1(iv1)
      acd304(51)=spval5k3(iv1)
      acd304(52)=-acd304(16)*acd304(17)
      acd304(53)=-acd304(14)*acd304(15)
      acd304(54)=-acd304(10)*acd304(11)
      acd304(55)=-acd304(8)*acd304(9)
      acd304(56)=-acd304(5)+acd304(2)-acd304(4)
      acd304(57)=-acd304(3)*acd304(56)
      acd304(52)=acd304(57)+acd304(55)+acd304(54)+acd304(52)+acd304(53)
      acd304(52)=acd304(1)*acd304(52)
      acd304(53)=-acd304(17)*acd304(37)
      acd304(54)=-acd304(15)*acd304(36)
      acd304(55)=-acd304(11)*acd304(34)
      acd304(57)=-acd304(9)*acd304(33)
      acd304(53)=acd304(57)+acd304(55)+acd304(53)+acd304(54)
      acd304(53)=acd304(28)*acd304(53)
      acd304(54)=-acd304(17)*acd304(27)
      acd304(55)=-acd304(15)*acd304(26)
      acd304(57)=-acd304(11)*acd304(24)
      acd304(58)=-acd304(9)*acd304(23)
      acd304(54)=acd304(58)+acd304(57)+acd304(54)+acd304(55)
      acd304(54)=acd304(18)*acd304(54)
      acd304(55)=-acd304(35)*acd304(28)
      acd304(57)=-acd304(25)*acd304(18)
      acd304(58)=-acd304(12)*acd304(1)
      acd304(55)=acd304(58)+acd304(57)+acd304(55)
      acd304(55)=acd304(13)*acd304(55)
      acd304(57)=-acd304(31)+acd304(29)-acd304(30)
      acd304(58)=-acd304(28)*acd304(57)
      acd304(59)=-acd304(21)+acd304(19)-acd304(20)
      acd304(60)=-acd304(18)*acd304(59)
      acd304(58)=acd304(58)+acd304(60)
      acd304(58)=acd304(3)*acd304(58)
      acd304(52)=acd304(52)+acd304(58)+acd304(53)+acd304(54)+acd304(55)
      acd304(53)=acd304(44)*acd304(16)
      acd304(54)=acd304(43)*acd304(14)
      acd304(55)=acd304(42)*acd304(46)
      acd304(58)=acd304(40)*acd304(45)
      acd304(53)=-acd304(58)+acd304(53)+acd304(54)+acd304(55)
      acd304(54)=-acd304(25)*acd304(53)
      acd304(55)=acd304(44)*acd304(27)
      acd304(58)=acd304(43)*acd304(26)
      acd304(60)=acd304(42)*acd304(48)
      acd304(61)=acd304(40)*acd304(47)
      acd304(55)=acd304(58)+acd304(55)+acd304(60)-acd304(61)
      acd304(58)=-acd304(12)*acd304(55)
      acd304(60)=acd304(41)*acd304(10)
      acd304(61)=acd304(39)*acd304(24)
      acd304(60)=acd304(60)+acd304(61)
      acd304(60)=acd304(42)*acd304(60)
      acd304(61)=-acd304(41)*acd304(8)
      acd304(62)=-acd304(39)*acd304(23)
      acd304(61)=acd304(61)+acd304(62)
      acd304(61)=acd304(40)*acd304(61)
      acd304(62)=acd304(25)*acd304(56)
      acd304(63)=acd304(12)*acd304(59)
      acd304(62)=acd304(62)+acd304(63)
      acd304(62)=acd304(38)*acd304(62)
      acd304(63)=2.0_ki*acd304(7)
      acd304(64)=-acd304(28)*acd304(63)
      acd304(54)=acd304(62)+acd304(58)+acd304(54)+acd304(61)+acd304(64)+acd304(&
      &60)
      acd304(54)=acd304(32)*acd304(54)
      acd304(53)=-acd304(35)*acd304(53)
      acd304(58)=acd304(44)*acd304(37)
      acd304(60)=acd304(43)*acd304(36)
      acd304(61)=acd304(42)*acd304(51)
      acd304(62)=acd304(40)*acd304(50)
      acd304(58)=acd304(60)+acd304(58)+acd304(61)-acd304(62)
      acd304(60)=-acd304(12)*acd304(58)
      acd304(61)=acd304(49)*acd304(10)
      acd304(62)=acd304(39)*acd304(34)
      acd304(61)=acd304(61)+acd304(62)
      acd304(61)=acd304(42)*acd304(61)
      acd304(62)=-acd304(49)*acd304(8)
      acd304(64)=-acd304(39)*acd304(33)
      acd304(62)=acd304(62)+acd304(64)
      acd304(62)=acd304(40)*acd304(62)
      acd304(56)=acd304(35)*acd304(56)
      acd304(64)=acd304(12)*acd304(57)
      acd304(56)=acd304(56)+acd304(64)
      acd304(56)=acd304(38)*acd304(56)
      acd304(64)=-acd304(18)*acd304(63)
      acd304(53)=acd304(56)+acd304(60)+acd304(53)+acd304(62)+acd304(64)+acd304(&
      &61)
      acd304(53)=acd304(22)*acd304(53)
      acd304(55)=-acd304(35)*acd304(55)
      acd304(56)=-acd304(25)*acd304(58)
      acd304(58)=acd304(49)*acd304(24)
      acd304(60)=acd304(41)*acd304(34)
      acd304(58)=acd304(58)+acd304(60)
      acd304(58)=acd304(42)*acd304(58)
      acd304(60)=-acd304(49)*acd304(23)
      acd304(61)=-acd304(41)*acd304(33)
      acd304(60)=acd304(60)+acd304(61)
      acd304(60)=acd304(40)*acd304(60)
      acd304(59)=acd304(35)*acd304(59)
      acd304(57)=acd304(25)*acd304(57)
      acd304(57)=acd304(59)+acd304(57)
      acd304(57)=acd304(38)*acd304(57)
      acd304(59)=-acd304(1)*acd304(63)
      acd304(55)=acd304(57)+acd304(56)+acd304(55)+acd304(60)+acd304(59)+acd304(&
      &58)
      acd304(55)=acd304(6)*acd304(55)
      brack=2.0_ki*acd304(52)+acd304(53)+acd304(54)+acd304(55)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd304h2
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
!---#[ subroutine reconstruct_d304:
   subroutine     reconstruct_d304(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_304:
      coeffs%coeffs_304%c0 = derivative(czip)
      coeffs%coeffs_304%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_304%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_304%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_304%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_304%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_304%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_304%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_304%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_304%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_304%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_304%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_304%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_304%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_304%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_304%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_304%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_304%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_304%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_304%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_304%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_304%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_304%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_304%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_304%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_304%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_304%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_304%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_304%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_304%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_304%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_304%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_304%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_304%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_304%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_304:
   end subroutine reconstruct_d304
!---#] subroutine reconstruct_d304:
end module     p5_usbar_epnebbbarg_d304h2l1d