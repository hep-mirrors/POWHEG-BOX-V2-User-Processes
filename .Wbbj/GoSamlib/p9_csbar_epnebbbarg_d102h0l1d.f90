module     p9_csbar_epnebbbarg_d102h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d102h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d102
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd102
      complex(ki) :: brack
      acd102(1)=dotproduct(k1,qshift)
      acd102(2)=dotproduct(k3,qshift)
      acd102(3)=abb102(44)
      acd102(4)=dotproduct(k4,qshift)
      acd102(5)=dotproduct(e7,qshift)
      acd102(6)=dotproduct(qshift,spvak4k3)
      acd102(7)=abb102(68)
      acd102(8)=dotproduct(qshift,qshift)
      acd102(9)=abb102(37)
      acd102(10)=abb102(50)
      acd102(11)=abb102(49)
      acd102(12)=dotproduct(k2,qshift)
      acd102(13)=abb102(31)
      acd102(14)=abb102(14)
      acd102(15)=abb102(38)
      acd102(16)=abb102(12)
      acd102(17)=abb102(13)
      acd102(18)=dotproduct(l5,qshift)
      acd102(19)=dotproduct(l6,qshift)
      acd102(20)=abb102(65)
      acd102(21)=dotproduct(qshift,spvak2k3)
      acd102(22)=abb102(15)
      acd102(23)=dotproduct(qshift,spval5k1)
      acd102(24)=abb102(47)
      acd102(25)=dotproduct(qshift,spval5k2)
      acd102(26)=abb102(75)
      acd102(27)=dotproduct(qshift,spval6k1)
      acd102(28)=abb102(74)
      acd102(29)=dotproduct(qshift,spval6k2)
      acd102(30)=abb102(77)
      acd102(31)=abb102(41)
      acd102(32)=dotproduct(k7,qshift)
      acd102(33)=abb102(39)
      acd102(34)=abb102(9)
      acd102(35)=abb102(54)
      acd102(36)=abb102(10)
      acd102(37)=abb102(66)
      acd102(38)=dotproduct(qshift,spvak2k1)
      acd102(39)=abb102(28)
      acd102(40)=dotproduct(qshift,spvak2l5)
      acd102(41)=abb102(26)
      acd102(42)=dotproduct(qshift,spvak2l6)
      acd102(43)=abb102(24)
      acd102(44)=abb102(20)
      acd102(45)=abb102(22)
      acd102(46)=abb102(29)
      acd102(47)=abb102(16)
      acd102(48)=abb102(27)
      acd102(49)=abb102(42)
      acd102(50)=abb102(45)
      acd102(51)=abb102(73)
      acd102(52)=abb102(76)
      acd102(53)=abb102(34)
      acd102(54)=abb102(21)
      acd102(55)=abb102(23)
      acd102(56)=abb102(53)
      acd102(57)=abb102(19)
      acd102(58)=abb102(25)
      acd102(59)=dotproduct(qshift,spvak2k4)
      acd102(60)=dotproduct(qshift,spvak2e7)
      acd102(61)=abb102(18)
      acd102(62)=abb102(17)
      acd102(63)=abb102(11)
      acd102(64)=abb102(33)
      acd102(65)=abb102(32)
      acd102(66)=abb102(52)
      acd102(67)=abb102(71)
      acd102(68)=-acd102(1)+acd102(18)+acd102(19)
      acd102(69)=acd102(7)*acd102(68)
      acd102(70)=-acd102(42)*acd102(43)
      acd102(71)=-acd102(40)*acd102(41)
      acd102(72)=-acd102(38)*acd102(39)
      acd102(73)=-acd102(29)*acd102(37)
      acd102(74)=-acd102(27)*acd102(36)
      acd102(75)=-acd102(25)*acd102(35)
      acd102(76)=-acd102(23)*acd102(34)
      acd102(77)=-acd102(12)*acd102(14)
      acd102(69)=acd102(77)+acd102(76)+acd102(75)+acd102(74)+acd102(73)+acd102(&
      &72)+acd102(71)+acd102(44)+acd102(70)+acd102(69)
      acd102(69)=acd102(5)*acd102(69)
      acd102(70)=acd102(2)+acd102(4)
      acd102(71)=acd102(32)+acd102(70)
      acd102(71)=acd102(20)*acd102(71)
      acd102(72)=acd102(10)*acd102(68)
      acd102(73)=acd102(60)*acd102(61)
      acd102(74)=acd102(48)*acd102(59)
      acd102(75)=acd102(29)*acd102(58)
      acd102(76)=acd102(27)*acd102(57)
      acd102(77)=acd102(25)*acd102(56)
      acd102(78)=acd102(23)*acd102(55)
      acd102(79)=acd102(21)*acd102(54)
      acd102(80)=acd102(12)*acd102(16)
      acd102(81)=-acd102(8)*acd102(47)
      acd102(69)=acd102(69)+acd102(81)+acd102(80)+acd102(79)+acd102(78)+acd102(&
      &77)+acd102(76)+acd102(75)+acd102(74)-acd102(62)+acd102(73)+acd102(72)+ac&
      &d102(71)
      acd102(69)=acd102(6)*acd102(69)
      acd102(71)=acd102(3)*acd102(68)
      acd102(72)=acd102(29)*acd102(30)
      acd102(73)=acd102(27)*acd102(28)
      acd102(74)=acd102(25)*acd102(26)
      acd102(75)=acd102(23)*acd102(24)
      acd102(76)=acd102(21)*acd102(22)
      acd102(77)=acd102(12)*acd102(13)
      acd102(71)=acd102(75)+acd102(76)+acd102(77)+acd102(31)-acd102(74)+acd102(&
      &72)+acd102(73)+acd102(71)
      acd102(70)=-acd102(71)*acd102(70)
      acd102(71)=-acd102(9)*acd102(68)
      acd102(72)=-acd102(29)*acd102(52)
      acd102(73)=-acd102(27)*acd102(51)
      acd102(74)=-acd102(25)*acd102(50)
      acd102(75)=-acd102(23)*acd102(49)
      acd102(76)=-acd102(21)*acd102(48)
      acd102(77)=-acd102(12)*acd102(15)
      acd102(71)=acd102(77)+acd102(76)+acd102(75)+acd102(74)+acd102(73)+acd102(&
      &53)+acd102(72)+acd102(71)
      acd102(71)=acd102(8)*acd102(71)
      acd102(68)=-acd102(11)*acd102(68)
      acd102(72)=-acd102(32)*acd102(33)
      acd102(73)=-acd102(29)*acd102(67)
      acd102(74)=-acd102(27)*acd102(66)
      acd102(75)=-acd102(25)*acd102(65)
      acd102(76)=-acd102(23)*acd102(64)
      acd102(77)=-acd102(21)*acd102(63)
      acd102(78)=-acd102(12)*acd102(17)
      acd102(79)=acd102(21)*acd102(45)
      acd102(79)=-acd102(46)+acd102(79)
      acd102(79)=acd102(5)*acd102(79)
      brack=acd102(68)+acd102(69)+acd102(70)+acd102(71)+acd102(72)+acd102(73)+a&
      &cd102(74)+acd102(75)+acd102(76)+acd102(77)+acd102(78)+acd102(79)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(105) :: acd102
      complex(ki) :: brack
      acd102(1)=k1(iv1)
      acd102(2)=dotproduct(k3,qshift)
      acd102(3)=abb102(44)
      acd102(4)=dotproduct(k4,qshift)
      acd102(5)=dotproduct(e7,qshift)
      acd102(6)=dotproduct(qshift,spvak4k3)
      acd102(7)=abb102(68)
      acd102(8)=dotproduct(qshift,qshift)
      acd102(9)=abb102(37)
      acd102(10)=abb102(50)
      acd102(11)=abb102(49)
      acd102(12)=k2(iv1)
      acd102(13)=abb102(31)
      acd102(14)=abb102(14)
      acd102(15)=abb102(38)
      acd102(16)=abb102(12)
      acd102(17)=abb102(13)
      acd102(18)=k3(iv1)
      acd102(19)=dotproduct(k1,qshift)
      acd102(20)=dotproduct(k2,qshift)
      acd102(21)=dotproduct(l5,qshift)
      acd102(22)=dotproduct(l6,qshift)
      acd102(23)=abb102(65)
      acd102(24)=dotproduct(qshift,spvak2k3)
      acd102(25)=abb102(15)
      acd102(26)=dotproduct(qshift,spval5k1)
      acd102(27)=abb102(47)
      acd102(28)=dotproduct(qshift,spval5k2)
      acd102(29)=abb102(75)
      acd102(30)=dotproduct(qshift,spval6k1)
      acd102(31)=abb102(74)
      acd102(32)=dotproduct(qshift,spval6k2)
      acd102(33)=abb102(77)
      acd102(34)=abb102(41)
      acd102(35)=k4(iv1)
      acd102(36)=l5(iv1)
      acd102(37)=l6(iv1)
      acd102(38)=k7(iv1)
      acd102(39)=abb102(39)
      acd102(40)=e7(iv1)
      acd102(41)=abb102(9)
      acd102(42)=abb102(54)
      acd102(43)=abb102(10)
      acd102(44)=abb102(66)
      acd102(45)=dotproduct(qshift,spvak2k1)
      acd102(46)=abb102(28)
      acd102(47)=dotproduct(qshift,spvak2l5)
      acd102(48)=abb102(26)
      acd102(49)=dotproduct(qshift,spvak2l6)
      acd102(50)=abb102(24)
      acd102(51)=abb102(20)
      acd102(52)=abb102(22)
      acd102(53)=abb102(29)
      acd102(54)=qshift(iv1)
      acd102(55)=abb102(16)
      acd102(56)=abb102(27)
      acd102(57)=abb102(42)
      acd102(58)=abb102(45)
      acd102(59)=abb102(73)
      acd102(60)=abb102(76)
      acd102(61)=abb102(34)
      acd102(62)=spvak4k3(iv1)
      acd102(63)=dotproduct(k7,qshift)
      acd102(64)=abb102(21)
      acd102(65)=abb102(23)
      acd102(66)=abb102(53)
      acd102(67)=abb102(19)
      acd102(68)=abb102(25)
      acd102(69)=dotproduct(qshift,spvak2k4)
      acd102(70)=dotproduct(qshift,spvak2e7)
      acd102(71)=abb102(18)
      acd102(72)=abb102(17)
      acd102(73)=spvak2k3(iv1)
      acd102(74)=abb102(11)
      acd102(75)=spval5k1(iv1)
      acd102(76)=abb102(33)
      acd102(77)=spval5k2(iv1)
      acd102(78)=abb102(32)
      acd102(79)=spval6k1(iv1)
      acd102(80)=abb102(52)
      acd102(81)=spval6k2(iv1)
      acd102(82)=abb102(71)
      acd102(83)=spvak2k1(iv1)
      acd102(84)=spvak2l5(iv1)
      acd102(85)=spvak2l6(iv1)
      acd102(86)=spvak2k4(iv1)
      acd102(87)=spvak2e7(iv1)
      acd102(88)=acd102(50)*acd102(49)
      acd102(89)=acd102(48)*acd102(47)
      acd102(90)=acd102(46)*acd102(45)
      acd102(91)=-acd102(22)+acd102(19)-acd102(21)
      acd102(92)=acd102(91)*acd102(7)
      acd102(93)=acd102(32)*acd102(44)
      acd102(94)=acd102(30)*acd102(43)
      acd102(95)=acd102(28)*acd102(42)
      acd102(96)=acd102(26)*acd102(41)
      acd102(97)=acd102(20)*acd102(14)
      acd102(88)=acd102(88)+acd102(93)+acd102(94)+acd102(89)+acd102(90)+acd102(&
      &92)+acd102(95)+acd102(96)+acd102(97)-acd102(51)
      acd102(89)=-acd102(40)*acd102(88)
      acd102(90)=-acd102(50)*acd102(85)
      acd102(92)=-acd102(48)*acd102(84)
      acd102(93)=-acd102(46)*acd102(83)
      acd102(94)=-acd102(81)*acd102(44)
      acd102(95)=-acd102(79)*acd102(43)
      acd102(96)=-acd102(77)*acd102(42)
      acd102(97)=-acd102(75)*acd102(41)
      acd102(98)=-acd102(12)*acd102(14)
      acd102(99)=-acd102(1)+acd102(36)+acd102(37)
      acd102(100)=acd102(7)*acd102(99)
      acd102(90)=acd102(100)+acd102(98)+acd102(97)+acd102(96)+acd102(95)+acd102&
      &(94)+acd102(93)+acd102(90)+acd102(92)
      acd102(90)=acd102(5)*acd102(90)
      acd102(92)=acd102(10)*acd102(99)
      acd102(93)=acd102(18)+acd102(35)
      acd102(94)=acd102(38)+acd102(93)
      acd102(94)=acd102(23)*acd102(94)
      acd102(95)=acd102(71)*acd102(87)
      acd102(96)=acd102(56)*acd102(86)
      acd102(97)=acd102(81)*acd102(68)
      acd102(98)=acd102(79)*acd102(67)
      acd102(100)=acd102(77)*acd102(66)
      acd102(101)=acd102(75)*acd102(65)
      acd102(102)=acd102(73)*acd102(64)
      acd102(103)=acd102(12)*acd102(16)
      acd102(104)=2.0_ki*acd102(54)
      acd102(105)=-acd102(55)*acd102(104)
      acd102(89)=acd102(90)+acd102(89)+acd102(105)+acd102(103)+acd102(102)+acd1&
      &02(101)+acd102(100)+acd102(98)+acd102(97)+acd102(95)+acd102(96)+acd102(9&
      &4)+acd102(92)
      acd102(89)=acd102(6)*acd102(89)
      acd102(88)=-acd102(5)*acd102(88)
      acd102(90)=acd102(2)+acd102(4)
      acd102(92)=acd102(63)+acd102(90)
      acd102(92)=acd102(23)*acd102(92)
      acd102(94)=acd102(71)*acd102(70)
      acd102(95)=acd102(56)*acd102(69)
      acd102(96)=acd102(24)*acd102(64)
      acd102(97)=acd102(32)*acd102(68)
      acd102(98)=acd102(30)*acd102(67)
      acd102(100)=acd102(28)*acd102(66)
      acd102(101)=acd102(26)*acd102(65)
      acd102(102)=acd102(20)*acd102(16)
      acd102(103)=-acd102(10)*acd102(91)
      acd102(105)=-acd102(8)*acd102(55)
      acd102(88)=acd102(88)+acd102(105)+acd102(103)+acd102(102)+acd102(101)+acd&
      &102(100)+acd102(98)+acd102(97)+acd102(96)+acd102(95)-acd102(72)+acd102(9&
      &4)+acd102(92)
      acd102(88)=acd102(62)*acd102(88)
      acd102(92)=-acd102(9)*acd102(99)
      acd102(94)=-acd102(81)*acd102(60)
      acd102(95)=-acd102(79)*acd102(59)
      acd102(96)=-acd102(77)*acd102(58)
      acd102(97)=-acd102(75)*acd102(57)
      acd102(98)=-acd102(73)*acd102(56)
      acd102(100)=-acd102(12)*acd102(15)
      acd102(92)=acd102(100)+acd102(98)+acd102(97)+acd102(96)+acd102(94)+acd102&
      &(95)+acd102(92)
      acd102(92)=acd102(8)*acd102(92)
      acd102(94)=-acd102(24)*acd102(56)
      acd102(95)=-acd102(32)*acd102(60)
      acd102(96)=-acd102(30)*acd102(59)
      acd102(97)=-acd102(28)*acd102(58)
      acd102(98)=-acd102(26)*acd102(57)
      acd102(100)=-acd102(20)*acd102(15)
      acd102(101)=acd102(9)*acd102(91)
      acd102(94)=acd102(101)+acd102(100)+acd102(98)+acd102(97)+acd102(96)+acd10&
      &2(95)+acd102(61)+acd102(94)
      acd102(94)=acd102(94)*acd102(104)
      acd102(95)=acd102(81)*acd102(33)
      acd102(96)=acd102(79)*acd102(31)
      acd102(97)=acd102(77)*acd102(29)
      acd102(98)=acd102(75)*acd102(27)
      acd102(100)=acd102(73)*acd102(25)
      acd102(101)=acd102(12)*acd102(13)
      acd102(95)=acd102(98)+acd102(95)+acd102(100)+acd102(101)+acd102(96)-acd10&
      &2(97)
      acd102(95)=-acd102(95)*acd102(90)
      acd102(96)=acd102(24)*acd102(25)
      acd102(97)=acd102(32)*acd102(33)
      acd102(98)=acd102(30)*acd102(31)
      acd102(100)=acd102(28)*acd102(29)
      acd102(101)=acd102(26)*acd102(27)
      acd102(102)=acd102(20)*acd102(13)
      acd102(96)=-acd102(100)+acd102(101)+acd102(102)+acd102(34)+acd102(96)+acd&
      &102(97)+acd102(98)
      acd102(96)=-acd102(96)*acd102(93)
      acd102(91)=acd102(91)*acd102(93)
      acd102(90)=-acd102(99)*acd102(90)
      acd102(90)=acd102(90)+acd102(91)
      acd102(90)=acd102(3)*acd102(90)
      acd102(91)=acd102(5)*acd102(52)
      acd102(91)=acd102(91)-acd102(74)
      acd102(91)=acd102(73)*acd102(91)
      acd102(93)=-acd102(11)*acd102(99)
      acd102(97)=-acd102(38)*acd102(39)
      acd102(98)=-acd102(81)*acd102(82)
      acd102(99)=-acd102(79)*acd102(80)
      acd102(100)=-acd102(77)*acd102(78)
      acd102(101)=-acd102(75)*acd102(76)
      acd102(102)=-acd102(12)*acd102(17)
      acd102(103)=acd102(24)*acd102(52)
      acd102(103)=-acd102(53)+acd102(103)
      acd102(103)=acd102(40)*acd102(103)
      brack=acd102(88)+acd102(89)+acd102(90)+acd102(91)+acd102(92)+acd102(93)+a&
      &cd102(94)+acd102(95)+acd102(96)+acd102(97)+acd102(98)+acd102(99)+acd102(&
      &100)+acd102(101)+acd102(102)+acd102(103)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(113) :: acd102
      complex(ki) :: brack
      acd102(1)=d(iv1,iv2)
      acd102(2)=dotproduct(k1,qshift)
      acd102(3)=abb102(37)
      acd102(4)=dotproduct(k2,qshift)
      acd102(5)=abb102(38)
      acd102(6)=dotproduct(l5,qshift)
      acd102(7)=dotproduct(l6,qshift)
      acd102(8)=dotproduct(qshift,spvak2k3)
      acd102(9)=abb102(27)
      acd102(10)=dotproduct(qshift,spvak4k3)
      acd102(11)=abb102(16)
      acd102(12)=dotproduct(qshift,spval5k1)
      acd102(13)=abb102(42)
      acd102(14)=dotproduct(qshift,spval5k2)
      acd102(15)=abb102(45)
      acd102(16)=dotproduct(qshift,spval6k1)
      acd102(17)=abb102(73)
      acd102(18)=dotproduct(qshift,spval6k2)
      acd102(19)=abb102(76)
      acd102(20)=abb102(34)
      acd102(21)=k1(iv1)
      acd102(22)=k3(iv2)
      acd102(23)=abb102(44)
      acd102(24)=k4(iv2)
      acd102(25)=e7(iv2)
      acd102(26)=abb102(68)
      acd102(27)=qshift(iv2)
      acd102(28)=spvak4k3(iv2)
      acd102(29)=dotproduct(e7,qshift)
      acd102(30)=abb102(50)
      acd102(31)=k1(iv2)
      acd102(32)=k3(iv1)
      acd102(33)=k4(iv1)
      acd102(34)=e7(iv1)
      acd102(35)=qshift(iv1)
      acd102(36)=spvak4k3(iv1)
      acd102(37)=k2(iv1)
      acd102(38)=abb102(31)
      acd102(39)=abb102(14)
      acd102(40)=abb102(12)
      acd102(41)=k2(iv2)
      acd102(42)=l5(iv2)
      acd102(43)=l6(iv2)
      acd102(44)=spvak2k3(iv2)
      acd102(45)=abb102(15)
      acd102(46)=abb102(65)
      acd102(47)=spval5k1(iv2)
      acd102(48)=abb102(47)
      acd102(49)=spval5k2(iv2)
      acd102(50)=abb102(75)
      acd102(51)=spval6k1(iv2)
      acd102(52)=abb102(74)
      acd102(53)=spval6k2(iv2)
      acd102(54)=abb102(77)
      acd102(55)=l5(iv1)
      acd102(56)=l6(iv1)
      acd102(57)=spvak2k3(iv1)
      acd102(58)=spval5k1(iv1)
      acd102(59)=spval5k2(iv1)
      acd102(60)=spval6k1(iv1)
      acd102(61)=spval6k2(iv1)
      acd102(62)=k7(iv1)
      acd102(63)=k7(iv2)
      acd102(64)=abb102(22)
      acd102(65)=abb102(9)
      acd102(66)=abb102(54)
      acd102(67)=abb102(10)
      acd102(68)=abb102(66)
      acd102(69)=dotproduct(qshift,spvak2k1)
      acd102(70)=abb102(28)
      acd102(71)=dotproduct(qshift,spvak2l5)
      acd102(72)=abb102(26)
      acd102(73)=dotproduct(qshift,spvak2l6)
      acd102(74)=abb102(24)
      acd102(75)=abb102(20)
      acd102(76)=spvak2k1(iv2)
      acd102(77)=spvak2l5(iv2)
      acd102(78)=spvak2l6(iv2)
      acd102(79)=spvak2k1(iv1)
      acd102(80)=spvak2l5(iv1)
      acd102(81)=spvak2l6(iv1)
      acd102(82)=abb102(21)
      acd102(83)=abb102(23)
      acd102(84)=abb102(53)
      acd102(85)=abb102(19)
      acd102(86)=abb102(25)
      acd102(87)=spvak2k4(iv2)
      acd102(88)=spvak2e7(iv2)
      acd102(89)=abb102(18)
      acd102(90)=spvak2k4(iv1)
      acd102(91)=spvak2e7(iv1)
      acd102(92)=acd102(74)*acd102(78)
      acd102(93)=acd102(72)*acd102(77)
      acd102(94)=acd102(70)*acd102(76)
      acd102(95)=acd102(53)*acd102(68)
      acd102(96)=acd102(51)*acd102(67)
      acd102(97)=acd102(49)*acd102(66)
      acd102(98)=-acd102(43)+acd102(31)-acd102(42)
      acd102(99)=acd102(98)*acd102(26)
      acd102(100)=acd102(47)*acd102(65)
      acd102(101)=acd102(39)*acd102(41)
      acd102(92)=acd102(95)+acd102(96)+acd102(97)+acd102(99)+acd102(92)+acd102(&
      &100)+acd102(101)+acd102(93)+acd102(94)
      acd102(93)=-acd102(29)*acd102(92)
      acd102(94)=acd102(74)*acd102(73)
      acd102(95)=acd102(72)*acd102(71)
      acd102(96)=acd102(70)*acd102(69)
      acd102(97)=acd102(68)*acd102(18)
      acd102(99)=acd102(67)*acd102(16)
      acd102(100)=acd102(66)*acd102(14)
      acd102(101)=acd102(65)*acd102(12)
      acd102(102)=-acd102(7)+acd102(2)-acd102(6)
      acd102(103)=acd102(102)*acd102(26)
      acd102(104)=acd102(39)*acd102(4)
      acd102(94)=acd102(103)+acd102(97)+acd102(99)+acd102(100)+acd102(101)+acd1&
      &02(94)+acd102(104)-acd102(75)+acd102(95)+acd102(96)
      acd102(95)=-acd102(25)*acd102(94)
      acd102(96)=acd102(22)+acd102(24)
      acd102(97)=acd102(63)+acd102(96)
      acd102(97)=acd102(46)*acd102(97)
      acd102(99)=acd102(89)*acd102(88)
      acd102(100)=acd102(44)*acd102(82)
      acd102(101)=acd102(9)*acd102(87)
      acd102(103)=acd102(53)*acd102(86)
      acd102(104)=acd102(51)*acd102(85)
      acd102(105)=acd102(49)*acd102(84)
      acd102(106)=acd102(47)*acd102(83)
      acd102(107)=acd102(41)*acd102(40)
      acd102(108)=-acd102(30)*acd102(98)
      acd102(109)=2.0_ki*acd102(11)
      acd102(110)=-acd102(27)*acd102(109)
      acd102(93)=acd102(95)+acd102(93)+acd102(110)+acd102(108)+acd102(107)+acd1&
      &02(106)+acd102(105)+acd102(104)+acd102(103)+acd102(101)+acd102(99)+acd10&
      &2(100)+acd102(97)
      acd102(93)=acd102(36)*acd102(93)
      acd102(95)=acd102(74)*acd102(81)
      acd102(97)=acd102(72)*acd102(80)
      acd102(99)=acd102(70)*acd102(79)
      acd102(100)=acd102(61)*acd102(68)
      acd102(101)=acd102(60)*acd102(67)
      acd102(103)=acd102(59)*acd102(66)
      acd102(104)=acd102(58)*acd102(65)
      acd102(105)=-acd102(21)+acd102(55)+acd102(56)
      acd102(106)=acd102(105)*acd102(26)
      acd102(107)=acd102(37)*acd102(39)
      acd102(95)=acd102(107)+acd102(101)+acd102(103)+acd102(104)-acd102(106)+ac&
      &d102(95)+acd102(97)+acd102(99)+acd102(100)
      acd102(97)=-acd102(29)*acd102(95)
      acd102(94)=-acd102(34)*acd102(94)
      acd102(99)=acd102(30)*acd102(105)
      acd102(100)=acd102(32)+acd102(33)
      acd102(101)=acd102(62)+acd102(100)
      acd102(101)=acd102(46)*acd102(101)
      acd102(103)=acd102(89)*acd102(91)
      acd102(104)=acd102(57)*acd102(82)
      acd102(106)=acd102(9)*acd102(90)
      acd102(107)=acd102(61)*acd102(86)
      acd102(108)=acd102(60)*acd102(85)
      acd102(110)=acd102(59)*acd102(84)
      acd102(111)=acd102(58)*acd102(83)
      acd102(112)=acd102(37)*acd102(40)
      acd102(113)=-acd102(35)*acd102(109)
      acd102(94)=acd102(94)+acd102(97)+acd102(113)+acd102(112)+acd102(111)+acd1&
      &02(110)+acd102(108)+acd102(107)+acd102(106)+acd102(103)+acd102(104)+acd1&
      &02(101)+acd102(99)
      acd102(94)=acd102(28)*acd102(94)
      acd102(92)=-acd102(10)*acd102(92)
      acd102(97)=acd102(44)*acd102(64)
      acd102(92)=acd102(97)+acd102(92)
      acd102(92)=acd102(34)*acd102(92)
      acd102(95)=-acd102(10)*acd102(95)
      acd102(97)=acd102(57)*acd102(64)
      acd102(95)=acd102(97)+acd102(95)
      acd102(95)=acd102(25)*acd102(95)
      acd102(97)=-acd102(9)*acd102(44)
      acd102(99)=-acd102(53)*acd102(19)
      acd102(101)=-acd102(51)*acd102(17)
      acd102(103)=-acd102(49)*acd102(15)
      acd102(104)=-acd102(47)*acd102(13)
      acd102(106)=-acd102(41)*acd102(5)
      acd102(107)=acd102(3)*acd102(98)
      acd102(97)=acd102(107)+acd102(106)+acd102(104)+acd102(103)+acd102(101)+ac&
      &d102(97)+acd102(99)
      acd102(97)=acd102(35)*acd102(97)
      acd102(99)=-acd102(9)*acd102(57)
      acd102(101)=-acd102(61)*acd102(19)
      acd102(103)=-acd102(60)*acd102(17)
      acd102(104)=-acd102(59)*acd102(15)
      acd102(106)=-acd102(58)*acd102(13)
      acd102(107)=-acd102(37)*acd102(5)
      acd102(108)=-acd102(3)*acd102(105)
      acd102(99)=acd102(108)+acd102(107)+acd102(106)+acd102(104)+acd102(103)+ac&
      &d102(99)+acd102(101)
      acd102(99)=acd102(27)*acd102(99)
      acd102(97)=acd102(97)+acd102(99)
      acd102(99)=-acd102(18)*acd102(19)
      acd102(101)=-acd102(16)*acd102(17)
      acd102(103)=-acd102(14)*acd102(15)
      acd102(104)=-acd102(12)*acd102(13)
      acd102(106)=-acd102(4)*acd102(5)
      acd102(107)=-acd102(9)*acd102(8)
      acd102(102)=acd102(3)*acd102(102)
      acd102(99)=acd102(102)+acd102(107)+acd102(106)+acd102(104)+acd102(103)+ac&
      &d102(101)+acd102(20)+acd102(99)
      acd102(101)=-acd102(10)*acd102(109)
      acd102(99)=acd102(101)+2.0_ki*acd102(99)
      acd102(99)=acd102(1)*acd102(99)
      acd102(101)=acd102(57)*acd102(45)
      acd102(102)=acd102(61)*acd102(54)
      acd102(103)=acd102(60)*acd102(52)
      acd102(104)=acd102(59)*acd102(50)
      acd102(106)=acd102(58)*acd102(48)
      acd102(107)=acd102(37)*acd102(38)
      acd102(101)=acd102(101)+acd102(102)+acd102(103)-acd102(104)+acd102(106)+a&
      &cd102(107)
      acd102(101)=-acd102(101)*acd102(96)
      acd102(102)=acd102(44)*acd102(45)
      acd102(103)=acd102(53)*acd102(54)
      acd102(104)=acd102(51)*acd102(52)
      acd102(106)=acd102(49)*acd102(50)
      acd102(107)=acd102(47)*acd102(48)
      acd102(108)=acd102(41)*acd102(38)
      acd102(102)=-acd102(106)+acd102(102)+acd102(107)+acd102(108)+acd102(103)+&
      &acd102(104)
      acd102(102)=-acd102(102)*acd102(100)
      acd102(98)=acd102(98)*acd102(100)
      acd102(96)=-acd102(105)*acd102(96)
      acd102(96)=acd102(96)+acd102(98)
      acd102(96)=acd102(23)*acd102(96)
      brack=acd102(92)+acd102(93)+acd102(94)+acd102(95)+acd102(96)+2.0_ki*acd10&
      &2(97)+acd102(99)+acd102(101)+acd102(102)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd102
      complex(ki) :: brack
      acd102(1)=d(iv1,iv2)
      acd102(2)=k1(iv3)
      acd102(3)=abb102(37)
      acd102(4)=k2(iv3)
      acd102(5)=abb102(38)
      acd102(6)=l5(iv3)
      acd102(7)=l6(iv3)
      acd102(8)=spvak2k3(iv3)
      acd102(9)=abb102(27)
      acd102(10)=spvak4k3(iv3)
      acd102(11)=abb102(16)
      acd102(12)=spval5k1(iv3)
      acd102(13)=abb102(42)
      acd102(14)=spval5k2(iv3)
      acd102(15)=abb102(45)
      acd102(16)=spval6k1(iv3)
      acd102(17)=abb102(73)
      acd102(18)=spval6k2(iv3)
      acd102(19)=abb102(76)
      acd102(20)=d(iv1,iv3)
      acd102(21)=k1(iv2)
      acd102(22)=k2(iv2)
      acd102(23)=l5(iv2)
      acd102(24)=l6(iv2)
      acd102(25)=spvak2k3(iv2)
      acd102(26)=spvak4k3(iv2)
      acd102(27)=spval5k1(iv2)
      acd102(28)=spval5k2(iv2)
      acd102(29)=spval6k1(iv2)
      acd102(30)=spval6k2(iv2)
      acd102(31)=d(iv2,iv3)
      acd102(32)=k1(iv1)
      acd102(33)=k2(iv1)
      acd102(34)=l5(iv1)
      acd102(35)=l6(iv1)
      acd102(36)=spvak2k3(iv1)
      acd102(37)=spvak4k3(iv1)
      acd102(38)=spval5k1(iv1)
      acd102(39)=spval5k2(iv1)
      acd102(40)=spval6k1(iv1)
      acd102(41)=spval6k2(iv1)
      acd102(42)=e7(iv2)
      acd102(43)=abb102(68)
      acd102(44)=e7(iv3)
      acd102(45)=e7(iv1)
      acd102(46)=abb102(14)
      acd102(47)=abb102(9)
      acd102(48)=abb102(54)
      acd102(49)=abb102(10)
      acd102(50)=abb102(66)
      acd102(51)=spvak2k1(iv3)
      acd102(52)=abb102(28)
      acd102(53)=spvak2l5(iv3)
      acd102(54)=abb102(26)
      acd102(55)=spvak2l6(iv3)
      acd102(56)=abb102(24)
      acd102(57)=spvak2k1(iv2)
      acd102(58)=spvak2l5(iv2)
      acd102(59)=spvak2l6(iv2)
      acd102(60)=spvak2k1(iv1)
      acd102(61)=spvak2l5(iv1)
      acd102(62)=spvak2l6(iv1)
      acd102(63)=acd102(56)*acd102(59)
      acd102(64)=acd102(54)*acd102(58)
      acd102(65)=acd102(52)*acd102(57)
      acd102(66)=acd102(50)*acd102(30)
      acd102(67)=acd102(49)*acd102(29)
      acd102(68)=acd102(48)*acd102(28)
      acd102(69)=-acd102(24)+acd102(21)-acd102(23)
      acd102(70)=acd102(69)*acd102(43)
      acd102(71)=acd102(47)*acd102(27)
      acd102(72)=acd102(46)*acd102(22)
      acd102(63)=acd102(66)+acd102(67)+acd102(68)+acd102(70)+acd102(63)+acd102(&
      &71)+acd102(72)+acd102(64)+acd102(65)
      acd102(64)=-acd102(44)*acd102(63)
      acd102(65)=acd102(56)*acd102(55)
      acd102(66)=acd102(54)*acd102(53)
      acd102(67)=acd102(52)*acd102(51)
      acd102(68)=acd102(50)*acd102(18)
      acd102(70)=acd102(49)*acd102(16)
      acd102(71)=-acd102(7)+acd102(2)-acd102(6)
      acd102(72)=acd102(71)*acd102(43)
      acd102(73)=acd102(48)*acd102(14)
      acd102(74)=acd102(47)*acd102(12)
      acd102(75)=acd102(46)*acd102(4)
      acd102(65)=acd102(68)+acd102(70)+acd102(72)+acd102(75)+acd102(65)+acd102(&
      &73)+acd102(74)+acd102(66)+acd102(67)
      acd102(66)=-acd102(42)*acd102(65)
      acd102(67)=2.0_ki*acd102(11)
      acd102(68)=-acd102(31)*acd102(67)
      acd102(64)=acd102(66)+acd102(68)+acd102(64)
      acd102(64)=acd102(37)*acd102(64)
      acd102(65)=-acd102(45)*acd102(65)
      acd102(66)=acd102(56)*acd102(62)
      acd102(68)=acd102(54)*acd102(61)
      acd102(70)=acd102(52)*acd102(60)
      acd102(72)=acd102(50)*acd102(41)
      acd102(73)=acd102(49)*acd102(40)
      acd102(74)=acd102(48)*acd102(39)
      acd102(75)=-acd102(35)+acd102(32)-acd102(34)
      acd102(76)=acd102(75)*acd102(43)
      acd102(77)=acd102(47)*acd102(38)
      acd102(78)=acd102(46)*acd102(33)
      acd102(66)=acd102(72)+acd102(73)+acd102(74)+acd102(76)+acd102(66)+acd102(&
      &77)+acd102(78)+acd102(68)+acd102(70)
      acd102(68)=-acd102(44)*acd102(66)
      acd102(70)=-acd102(20)*acd102(67)
      acd102(65)=acd102(68)+acd102(70)+acd102(65)
      acd102(65)=acd102(26)*acd102(65)
      acd102(63)=-acd102(45)*acd102(63)
      acd102(66)=-acd102(42)*acd102(66)
      acd102(67)=-acd102(1)*acd102(67)
      acd102(63)=acd102(66)+acd102(67)+acd102(63)
      acd102(63)=acd102(10)*acd102(63)
      acd102(66)=-acd102(19)*acd102(41)
      acd102(67)=-acd102(17)*acd102(40)
      acd102(68)=-acd102(15)*acd102(39)
      acd102(70)=-acd102(13)*acd102(38)
      acd102(72)=-acd102(9)*acd102(36)
      acd102(73)=-acd102(5)*acd102(33)
      acd102(74)=acd102(3)*acd102(75)
      acd102(66)=acd102(74)+acd102(73)+acd102(72)+acd102(70)+acd102(68)+acd102(&
      &66)+acd102(67)
      acd102(66)=acd102(31)*acd102(66)
      acd102(67)=-acd102(19)*acd102(30)
      acd102(68)=-acd102(17)*acd102(29)
      acd102(70)=-acd102(15)*acd102(28)
      acd102(72)=-acd102(13)*acd102(27)
      acd102(73)=-acd102(9)*acd102(25)
      acd102(74)=-acd102(5)*acd102(22)
      acd102(69)=acd102(3)*acd102(69)
      acd102(67)=acd102(69)+acd102(74)+acd102(73)+acd102(72)+acd102(70)+acd102(&
      &67)+acd102(68)
      acd102(67)=acd102(20)*acd102(67)
      acd102(68)=-acd102(18)*acd102(19)
      acd102(69)=-acd102(16)*acd102(17)
      acd102(70)=-acd102(14)*acd102(15)
      acd102(72)=-acd102(12)*acd102(13)
      acd102(73)=-acd102(9)*acd102(8)
      acd102(74)=-acd102(4)*acd102(5)
      acd102(71)=acd102(3)*acd102(71)
      acd102(68)=acd102(71)+acd102(74)+acd102(73)+acd102(72)+acd102(70)+acd102(&
      &68)+acd102(69)
      acd102(68)=acd102(1)*acd102(68)
      acd102(66)=acd102(68)+acd102(66)+acd102(67)
      brack=acd102(63)+acd102(64)+acd102(65)+2.0_ki*acd102(66)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd102h0
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d102:
   subroutine     reconstruct_d102(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_102:
      coeffs%coeffs_102%c0 = derivative(czip)
      coeffs%coeffs_102%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_102%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_102%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_102%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_102%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_102%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_102%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_102%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_102%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_102%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_102%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_102%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_102%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_102%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_102%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_102%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_102%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_102%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_102%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_102%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_102%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_102%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_102%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_102%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_102%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_102%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_102%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_102%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_102%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_102%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_102%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_102%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_102%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_102%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_102:
   end subroutine reconstruct_d102
!---#] subroutine reconstruct_d102:
end module     p9_csbar_epnebbbarg_d102h0l1d
