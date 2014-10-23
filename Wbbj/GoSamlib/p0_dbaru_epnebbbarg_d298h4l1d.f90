module     p0_dbaru_epnebbbarg_d298h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d298h4l1d.f90
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
   public :: derivative , reconstruct_d298
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(88) :: acd298
      complex(ki) :: brack
      acd298(1)=dotproduct(k2,qshift)
      acd298(2)=dotproduct(qshift,spvak1k2)
      acd298(3)=dotproduct(qshift,spvak7k2)
      acd298(4)=abb298(27)
      acd298(5)=abb298(18)
      acd298(6)=dotproduct(qshift,spval5k2)
      acd298(7)=abb298(80)
      acd298(8)=abb298(52)
      acd298(9)=abb298(48)
      acd298(10)=dotproduct(qshift,spval6k2)
      acd298(11)=abb298(62)
      acd298(12)=abb298(42)
      acd298(13)=dotproduct(l5,qshift)
      acd298(14)=abb298(17)
      acd298(15)=abb298(15)
      acd298(16)=abb298(28)
      acd298(17)=abb298(60)
      acd298(18)=abb298(36)
      acd298(19)=dotproduct(qshift,qshift)
      acd298(20)=abb298(35)
      acd298(21)=abb298(23)
      acd298(22)=abb298(63)
      acd298(23)=abb298(59)
      acd298(24)=abb298(33)
      acd298(25)=dotproduct(qshift,spvak4k3)
      acd298(26)=abb298(53)
      acd298(27)=abb298(49)
      acd298(28)=dotproduct(qshift,spval5k1)
      acd298(29)=abb298(34)
      acd298(30)=dotproduct(qshift,spval5k3)
      acd298(31)=abb298(43)
      acd298(32)=dotproduct(qshift,spval5l6)
      acd298(33)=abb298(39)
      acd298(34)=dotproduct(qshift,spval5k7)
      acd298(35)=abb298(38)
      acd298(36)=abb298(14)
      acd298(37)=abb298(50)
      acd298(38)=abb298(22)
      acd298(39)=abb298(31)
      acd298(40)=abb298(40)
      acd298(41)=abb298(16)
      acd298(42)=abb298(37)
      acd298(43)=abb298(11)
      acd298(44)=abb298(99)
      acd298(45)=abb298(78)
      acd298(46)=abb298(66)
      acd298(47)=abb298(46)
      acd298(48)=abb298(84)
      acd298(49)=dotproduct(qshift,spvak4k2)
      acd298(50)=abb298(26)
      acd298(51)=abb298(51)
      acd298(52)=abb298(79)
      acd298(53)=abb298(76)
      acd298(54)=abb298(77)
      acd298(55)=abb298(88)
      acd298(56)=abb298(70)
      acd298(57)=abb298(21)
      acd298(58)=abb298(24)
      acd298(59)=abb298(47)
      acd298(60)=abb298(10)
      acd298(61)=abb298(20)
      acd298(62)=abb298(19)
      acd298(63)=abb298(25)
      acd298(64)=dotproduct(qshift,spval6k3)
      acd298(65)=abb298(44)
      acd298(66)=dotproduct(qshift,spval6l5)
      acd298(67)=abb298(45)
      acd298(68)=abb298(13)
      acd298(69)=abb298(30)
      acd298(70)=abb298(41)
      acd298(71)=abb298(81)
      acd298(72)=abb298(89)
      acd298(73)=abb298(87)
      acd298(74)=abb298(32)
      acd298(75)=abb298(12)
      acd298(76)=abb298(29)
      acd298(77)=-acd298(34)*acd298(35)
      acd298(78)=-acd298(30)*acd298(31)
      acd298(79)=-acd298(28)*acd298(29)
      acd298(80)=-acd298(32)*acd298(33)
      acd298(81)=acd298(19)*acd298(20)
      acd298(82)=-acd298(13)*acd298(14)
      acd298(83)=-acd298(1)*acd298(4)
      acd298(84)=acd298(25)*acd298(26)
      acd298(84)=-acd298(27)+acd298(84)
      acd298(84)=acd298(6)*acd298(84)
      acd298(77)=acd298(84)+acd298(83)+acd298(82)+acd298(81)+acd298(80)+acd298(&
      &79)+acd298(78)+acd298(36)+acd298(77)
      acd298(77)=acd298(2)*acd298(77)
      acd298(78)=-acd298(49)*acd298(50)
      acd298(79)=-acd298(25)*acd298(48)
      acd298(80)=-acd298(1)*acd298(7)
      acd298(81)=-acd298(10)*acd298(47)
      acd298(82)=-acd298(6)*acd298(46)
      acd298(78)=acd298(82)+acd298(81)+acd298(80)+acd298(79)+acd298(51)+acd298(&
      &78)
      acd298(78)=acd298(6)*acd298(78)
      acd298(79)=acd298(49)*acd298(57)
      acd298(80)=acd298(34)*acd298(56)
      acd298(81)=acd298(30)*acd298(54)
      acd298(82)=acd298(28)*acd298(53)
      acd298(83)=acd298(32)*acd298(55)
      acd298(84)=-acd298(19)*acd298(22)
      acd298(85)=acd298(13)*acd298(16)
      acd298(86)=acd298(1)*acd298(8)
      acd298(87)=acd298(10)*acd298(52)
      acd298(88)=-acd298(6)*acd298(44)
      acd298(88)=acd298(45)+acd298(88)
      acd298(88)=acd298(3)*acd298(88)
      acd298(77)=acd298(88)+acd298(77)+acd298(78)+acd298(87)+acd298(86)+acd298(&
      &85)+acd298(84)+acd298(83)+acd298(82)+acd298(81)+acd298(80)-acd298(58)+ac&
      &d298(79)
      acd298(77)=acd298(3)*acd298(77)
      acd298(78)=acd298(34)*acd298(42)
      acd298(79)=acd298(30)*acd298(40)
      acd298(80)=acd298(28)*acd298(39)
      acd298(81)=acd298(32)*acd298(41)
      acd298(82)=-acd298(19)*acd298(21)
      acd298(83)=acd298(13)*acd298(15)
      acd298(84)=acd298(1)*acd298(5)
      acd298(85)=-acd298(25)*acd298(37)
      acd298(85)=acd298(38)+acd298(85)
      acd298(85)=acd298(6)*acd298(85)
      acd298(78)=acd298(85)+acd298(84)+acd298(83)+acd298(82)+acd298(81)+acd298(&
      &80)+acd298(79)-acd298(43)+acd298(78)
      acd298(78)=acd298(2)*acd298(78)
      acd298(79)=acd298(66)*acd298(67)
      acd298(80)=acd298(64)*acd298(65)
      acd298(81)=acd298(49)*acd298(63)
      acd298(82)=acd298(25)*acd298(62)
      acd298(83)=acd298(1)*acd298(9)
      acd298(84)=-acd298(25)*acd298(60)
      acd298(84)=acd298(61)+acd298(84)
      acd298(84)=acd298(10)*acd298(84)
      acd298(85)=acd298(6)*acd298(59)
      acd298(79)=acd298(85)+acd298(84)+acd298(83)+acd298(82)+acd298(81)+acd298(&
      &80)-acd298(68)+acd298(79)
      acd298(79)=acd298(6)*acd298(79)
      acd298(80)=acd298(32)*acd298(69)
      acd298(81)=-acd298(19)*acd298(23)
      acd298(82)=acd298(13)*acd298(17)
      acd298(83)=acd298(1)*acd298(11)
      acd298(80)=acd298(83)+acd298(82)+acd298(81)-acd298(70)+acd298(80)
      acd298(80)=acd298(10)*acd298(80)
      acd298(81)=-acd298(49)*acd298(75)
      acd298(82)=-acd298(34)*acd298(74)
      acd298(83)=-acd298(30)*acd298(72)
      acd298(84)=-acd298(28)*acd298(71)
      acd298(85)=-acd298(32)*acd298(73)
      acd298(86)=acd298(19)*acd298(24)
      acd298(87)=-acd298(13)*acd298(18)
      acd298(88)=-acd298(1)*acd298(12)
      brack=acd298(76)+acd298(77)+acd298(78)+acd298(79)+acd298(80)+acd298(81)+a&
      &cd298(82)+acd298(83)+acd298(84)+acd298(85)+acd298(86)+acd298(87)+acd298(&
      &88)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(109) :: acd298
      complex(ki) :: brack
      acd298(1)=k2(iv1)
      acd298(2)=dotproduct(qshift,spvak1k2)
      acd298(3)=dotproduct(qshift,spvak7k2)
      acd298(4)=abb298(27)
      acd298(5)=abb298(18)
      acd298(6)=dotproduct(qshift,spval5k2)
      acd298(7)=abb298(80)
      acd298(8)=abb298(52)
      acd298(9)=abb298(48)
      acd298(10)=dotproduct(qshift,spval6k2)
      acd298(11)=abb298(62)
      acd298(12)=abb298(42)
      acd298(13)=l5(iv1)
      acd298(14)=abb298(17)
      acd298(15)=abb298(15)
      acd298(16)=abb298(28)
      acd298(17)=abb298(60)
      acd298(18)=abb298(36)
      acd298(19)=qshift(iv1)
      acd298(20)=abb298(35)
      acd298(21)=abb298(23)
      acd298(22)=abb298(63)
      acd298(23)=abb298(59)
      acd298(24)=abb298(33)
      acd298(25)=spvak1k2(iv1)
      acd298(26)=dotproduct(k2,qshift)
      acd298(27)=dotproduct(l5,qshift)
      acd298(28)=dotproduct(qshift,qshift)
      acd298(29)=dotproduct(qshift,spvak4k3)
      acd298(30)=abb298(53)
      acd298(31)=abb298(49)
      acd298(32)=dotproduct(qshift,spval5k1)
      acd298(33)=abb298(34)
      acd298(34)=dotproduct(qshift,spval5k3)
      acd298(35)=abb298(43)
      acd298(36)=dotproduct(qshift,spval5l6)
      acd298(37)=abb298(39)
      acd298(38)=dotproduct(qshift,spval5k7)
      acd298(39)=abb298(38)
      acd298(40)=abb298(14)
      acd298(41)=abb298(50)
      acd298(42)=abb298(22)
      acd298(43)=abb298(31)
      acd298(44)=abb298(40)
      acd298(45)=abb298(16)
      acd298(46)=abb298(37)
      acd298(47)=abb298(11)
      acd298(48)=spvak7k2(iv1)
      acd298(49)=abb298(99)
      acd298(50)=abb298(78)
      acd298(51)=abb298(66)
      acd298(52)=abb298(46)
      acd298(53)=abb298(84)
      acd298(54)=dotproduct(qshift,spvak4k2)
      acd298(55)=abb298(26)
      acd298(56)=abb298(51)
      acd298(57)=abb298(79)
      acd298(58)=abb298(76)
      acd298(59)=abb298(77)
      acd298(60)=abb298(88)
      acd298(61)=abb298(70)
      acd298(62)=abb298(21)
      acd298(63)=abb298(24)
      acd298(64)=spval5k2(iv1)
      acd298(65)=abb298(47)
      acd298(66)=abb298(10)
      acd298(67)=abb298(20)
      acd298(68)=abb298(19)
      acd298(69)=abb298(25)
      acd298(70)=dotproduct(qshift,spval6k3)
      acd298(71)=abb298(44)
      acd298(72)=dotproduct(qshift,spval6l5)
      acd298(73)=abb298(45)
      acd298(74)=abb298(13)
      acd298(75)=spval6k2(iv1)
      acd298(76)=abb298(30)
      acd298(77)=abb298(41)
      acd298(78)=spvak4k3(iv1)
      acd298(79)=spval5k1(iv1)
      acd298(80)=abb298(81)
      acd298(81)=spval5k3(iv1)
      acd298(82)=abb298(89)
      acd298(83)=spval5l6(iv1)
      acd298(84)=abb298(87)
      acd298(85)=spval5k7(iv1)
      acd298(86)=abb298(32)
      acd298(87)=spvak4k2(iv1)
      acd298(88)=abb298(12)
      acd298(89)=spval6k3(iv1)
      acd298(90)=spval6l5(iv1)
      acd298(91)=-acd298(85)*acd298(39)
      acd298(92)=-acd298(81)*acd298(35)
      acd298(93)=-acd298(79)*acd298(33)
      acd298(94)=-acd298(83)*acd298(37)
      acd298(95)=2.0_ki*acd298(19)
      acd298(96)=acd298(20)*acd298(95)
      acd298(97)=-acd298(13)*acd298(14)
      acd298(98)=-acd298(1)*acd298(4)
      acd298(99)=acd298(29)*acd298(30)
      acd298(99)=acd298(99)-acd298(31)
      acd298(100)=acd298(64)*acd298(99)
      acd298(101)=acd298(6)*acd298(78)*acd298(30)
      acd298(91)=acd298(101)+acd298(100)+acd298(98)+acd298(97)+acd298(96)+acd29&
      &8(94)+acd298(93)+acd298(91)+acd298(92)
      acd298(91)=acd298(2)*acd298(91)
      acd298(92)=acd298(38)*acd298(39)
      acd298(93)=acd298(34)*acd298(35)
      acd298(94)=acd298(32)*acd298(33)
      acd298(96)=acd298(36)*acd298(37)
      acd298(97)=acd298(28)*acd298(20)
      acd298(98)=acd298(27)*acd298(14)
      acd298(100)=acd298(26)*acd298(4)
      acd298(92)=-acd298(93)-acd298(94)-acd298(96)-acd298(100)+acd298(40)-acd29&
      &8(92)+acd298(97)-acd298(98)
      acd298(93)=acd298(25)*acd298(92)
      acd298(94)=-acd298(87)*acd298(55)
      acd298(96)=-acd298(78)*acd298(53)
      acd298(97)=-acd298(1)*acd298(7)
      acd298(98)=-acd298(75)*acd298(52)
      acd298(100)=2.0_ki*acd298(64)
      acd298(101)=-acd298(51)*acd298(100)
      acd298(102)=acd298(25)*acd298(99)
      acd298(103)=2.0_ki*acd298(48)
      acd298(104)=-acd298(49)*acd298(103)
      acd298(94)=acd298(104)+acd298(102)+acd298(101)+acd298(98)+acd298(97)+acd2&
      &98(94)+acd298(96)
      acd298(94)=acd298(6)*acd298(94)
      acd298(96)=acd298(54)*acd298(55)
      acd298(97)=acd298(26)*acd298(7)
      acd298(98)=acd298(29)*acd298(53)
      acd298(101)=acd298(10)*acd298(52)
      acd298(96)=-acd298(56)+acd298(96)+acd298(97)+acd298(98)+acd298(101)
      acd298(97)=-acd298(3)*acd298(49)
      acd298(97)=acd298(97)-acd298(96)
      acd298(97)=acd298(64)*acd298(97)
      acd298(98)=acd298(87)*acd298(62)
      acd298(101)=acd298(85)*acd298(61)
      acd298(102)=acd298(81)*acd298(59)
      acd298(104)=acd298(79)*acd298(58)
      acd298(105)=acd298(83)*acd298(60)
      acd298(106)=-acd298(22)*acd298(95)
      acd298(107)=acd298(13)*acd298(16)
      acd298(108)=acd298(1)*acd298(8)
      acd298(109)=acd298(75)*acd298(57)
      acd298(103)=acd298(50)*acd298(103)
      acd298(91)=acd298(91)+acd298(94)+acd298(103)+acd298(93)+acd298(109)+acd29&
      &8(108)+acd298(107)+acd298(106)+acd298(105)+acd298(104)+acd298(102)+acd29&
      &8(98)+acd298(101)+acd298(97)
      acd298(91)=acd298(3)*acd298(91)
      acd298(92)=acd298(48)*acd298(92)
      acd298(93)=-acd298(78)*acd298(41)
      acd298(94)=acd298(48)*acd298(99)
      acd298(93)=acd298(93)+acd298(94)
      acd298(93)=acd298(6)*acd298(93)
      acd298(94)=acd298(85)*acd298(46)
      acd298(97)=acd298(81)*acd298(44)
      acd298(98)=acd298(79)*acd298(43)
      acd298(99)=acd298(83)*acd298(45)
      acd298(101)=-acd298(21)*acd298(95)
      acd298(102)=acd298(13)*acd298(15)
      acd298(103)=acd298(1)*acd298(5)
      acd298(104)=acd298(29)*acd298(41)
      acd298(104)=acd298(104)-acd298(42)
      acd298(105)=-acd298(64)*acd298(104)
      acd298(92)=acd298(93)+acd298(92)+acd298(105)+acd298(103)+acd298(102)+acd2&
      &98(101)+acd298(99)+acd298(98)+acd298(94)+acd298(97)
      acd298(92)=acd298(2)*acd298(92)
      acd298(93)=acd298(54)*acd298(62)
      acd298(94)=acd298(38)*acd298(61)
      acd298(97)=acd298(34)*acd298(59)
      acd298(98)=acd298(32)*acd298(58)
      acd298(99)=acd298(36)*acd298(60)
      acd298(101)=-acd298(28)*acd298(22)
      acd298(102)=acd298(27)*acd298(16)
      acd298(103)=acd298(26)*acd298(8)
      acd298(105)=acd298(10)*acd298(57)
      acd298(93)=acd298(105)+acd298(103)+acd298(102)+acd298(101)+acd298(99)+acd&
      &298(98)+acd298(97)+acd298(94)-acd298(63)+acd298(93)
      acd298(93)=acd298(48)*acd298(93)
      acd298(94)=-acd298(6)*acd298(51)
      acd298(94)=acd298(94)-acd298(96)
      acd298(94)=acd298(48)*acd298(94)
      acd298(96)=-acd298(10)*acd298(66)
      acd298(96)=acd298(96)+acd298(68)
      acd298(96)=acd298(78)*acd298(96)
      acd298(97)=acd298(29)*acd298(66)
      acd298(97)=acd298(97)-acd298(67)
      acd298(98)=-acd298(75)*acd298(97)
      acd298(99)=acd298(73)*acd298(90)
      acd298(101)=acd298(71)*acd298(89)
      acd298(102)=acd298(87)*acd298(69)
      acd298(103)=acd298(1)*acd298(9)
      acd298(100)=acd298(65)*acd298(100)
      acd298(104)=-acd298(25)*acd298(104)
      acd298(94)=acd298(104)+acd298(100)+acd298(103)+acd298(102)+acd298(99)+acd&
      &298(101)+acd298(94)+acd298(98)+acd298(96)
      acd298(94)=acd298(6)*acd298(94)
      acd298(96)=acd298(38)*acd298(46)
      acd298(98)=acd298(34)*acd298(44)
      acd298(99)=acd298(32)*acd298(43)
      acd298(100)=acd298(36)*acd298(45)
      acd298(101)=-acd298(28)*acd298(21)
      acd298(102)=acd298(27)*acd298(15)
      acd298(103)=acd298(26)*acd298(5)
      acd298(96)=acd298(103)+acd298(102)+acd298(101)+acd298(100)+acd298(99)+acd&
      &298(98)-acd298(47)+acd298(96)
      acd298(96)=acd298(25)*acd298(96)
      acd298(98)=acd298(73)*acd298(72)
      acd298(99)=acd298(71)*acd298(70)
      acd298(100)=acd298(54)*acd298(69)
      acd298(101)=acd298(26)*acd298(9)
      acd298(102)=acd298(29)*acd298(68)
      acd298(97)=-acd298(10)*acd298(97)
      acd298(97)=acd298(97)+acd298(102)+acd298(101)+acd298(100)+acd298(99)-acd2&
      &98(74)+acd298(98)
      acd298(97)=acd298(64)*acd298(97)
      acd298(98)=acd298(36)*acd298(76)
      acd298(99)=-acd298(28)*acd298(23)
      acd298(100)=acd298(27)*acd298(17)
      acd298(101)=acd298(26)*acd298(11)
      acd298(98)=acd298(101)+acd298(100)+acd298(99)-acd298(77)+acd298(98)
      acd298(98)=acd298(75)*acd298(98)
      acd298(99)=acd298(83)*acd298(76)
      acd298(100)=-acd298(23)*acd298(95)
      acd298(101)=acd298(13)*acd298(17)
      acd298(102)=acd298(1)*acd298(11)
      acd298(99)=acd298(102)+acd298(101)+acd298(99)+acd298(100)
      acd298(99)=acd298(10)*acd298(99)
      acd298(100)=-acd298(87)*acd298(88)
      acd298(101)=-acd298(85)*acd298(86)
      acd298(102)=-acd298(81)*acd298(82)
      acd298(103)=-acd298(79)*acd298(80)
      acd298(104)=-acd298(83)*acd298(84)
      acd298(95)=acd298(24)*acd298(95)
      acd298(105)=-acd298(13)*acd298(18)
      acd298(106)=-acd298(1)*acd298(12)
      brack=acd298(91)+acd298(92)+acd298(93)+acd298(94)+acd298(95)+acd298(96)+a&
      &cd298(97)+acd298(98)+acd298(99)+acd298(100)+acd298(101)+acd298(102)+acd2&
      &98(103)+acd298(104)+acd298(105)+acd298(106)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(117) :: acd298
      complex(ki) :: brack
      acd298(1)=d(iv1,iv2)
      acd298(2)=dotproduct(qshift,spvak1k2)
      acd298(3)=dotproduct(qshift,spvak7k2)
      acd298(4)=abb298(35)
      acd298(5)=abb298(23)
      acd298(6)=abb298(63)
      acd298(7)=dotproduct(qshift,spval6k2)
      acd298(8)=abb298(59)
      acd298(9)=abb298(33)
      acd298(10)=k2(iv1)
      acd298(11)=spvak1k2(iv2)
      acd298(12)=abb298(27)
      acd298(13)=abb298(18)
      acd298(14)=spvak7k2(iv2)
      acd298(15)=dotproduct(qshift,spval5k2)
      acd298(16)=abb298(80)
      acd298(17)=abb298(52)
      acd298(18)=spval6k2(iv2)
      acd298(19)=abb298(62)
      acd298(20)=spval5k2(iv2)
      acd298(21)=abb298(48)
      acd298(22)=k2(iv2)
      acd298(23)=spvak1k2(iv1)
      acd298(24)=spvak7k2(iv1)
      acd298(25)=spval6k2(iv1)
      acd298(26)=spval5k2(iv1)
      acd298(27)=l5(iv1)
      acd298(28)=abb298(17)
      acd298(29)=abb298(15)
      acd298(30)=abb298(28)
      acd298(31)=abb298(60)
      acd298(32)=l5(iv2)
      acd298(33)=qshift(iv1)
      acd298(34)=qshift(iv2)
      acd298(35)=dotproduct(k2,qshift)
      acd298(36)=dotproduct(l5,qshift)
      acd298(37)=dotproduct(qshift,qshift)
      acd298(38)=dotproduct(qshift,spvak4k3)
      acd298(39)=abb298(53)
      acd298(40)=abb298(49)
      acd298(41)=dotproduct(qshift,spval5k1)
      acd298(42)=abb298(34)
      acd298(43)=dotproduct(qshift,spval5k3)
      acd298(44)=abb298(43)
      acd298(45)=dotproduct(qshift,spval5l6)
      acd298(46)=abb298(39)
      acd298(47)=dotproduct(qshift,spval5k7)
      acd298(48)=abb298(38)
      acd298(49)=abb298(14)
      acd298(50)=abb298(50)
      acd298(51)=abb298(22)
      acd298(52)=spvak4k3(iv2)
      acd298(53)=spval5k1(iv2)
      acd298(54)=abb298(31)
      acd298(55)=spval5k3(iv2)
      acd298(56)=abb298(40)
      acd298(57)=spval5l6(iv2)
      acd298(58)=abb298(16)
      acd298(59)=spval5k7(iv2)
      acd298(60)=abb298(37)
      acd298(61)=spvak4k3(iv1)
      acd298(62)=spval5k1(iv1)
      acd298(63)=spval5k3(iv1)
      acd298(64)=spval5l6(iv1)
      acd298(65)=spval5k7(iv1)
      acd298(66)=abb298(99)
      acd298(67)=abb298(78)
      acd298(68)=abb298(46)
      acd298(69)=abb298(79)
      acd298(70)=abb298(66)
      acd298(71)=abb298(84)
      acd298(72)=dotproduct(qshift,spvak4k2)
      acd298(73)=abb298(26)
      acd298(74)=abb298(51)
      acd298(75)=abb298(76)
      acd298(76)=abb298(77)
      acd298(77)=abb298(88)
      acd298(78)=abb298(70)
      acd298(79)=spvak4k2(iv2)
      acd298(80)=abb298(21)
      acd298(81)=spvak4k2(iv1)
      acd298(82)=abb298(10)
      acd298(83)=abb298(20)
      acd298(84)=abb298(30)
      acd298(85)=abb298(47)
      acd298(86)=abb298(19)
      acd298(87)=abb298(25)
      acd298(88)=spval6k3(iv2)
      acd298(89)=abb298(44)
      acd298(90)=spval6l5(iv2)
      acd298(91)=abb298(45)
      acd298(92)=spval6k3(iv1)
      acd298(93)=spval6l5(iv1)
      acd298(94)=acd298(48)*acd298(65)
      acd298(95)=acd298(46)*acd298(64)
      acd298(96)=acd298(44)*acd298(63)
      acd298(97)=acd298(42)*acd298(62)
      acd298(98)=acd298(28)*acd298(27)
      acd298(99)=acd298(10)*acd298(12)
      acd298(100)=2.0_ki*acd298(33)
      acd298(101)=acd298(100)*acd298(4)
      acd298(102)=acd298(15)*acd298(39)
      acd298(103)=acd298(102)*acd298(61)
      acd298(94)=-acd298(95)-acd298(96)-acd298(97)-acd298(98)-acd298(99)-acd298&
      &(94)+acd298(101)+acd298(103)
      acd298(95)=acd298(2)*acd298(94)
      acd298(96)=acd298(48)*acd298(47)
      acd298(97)=acd298(46)*acd298(45)
      acd298(98)=acd298(44)*acd298(43)
      acd298(99)=acd298(42)*acd298(41)
      acd298(101)=acd298(28)*acd298(36)
      acd298(103)=acd298(12)*acd298(35)
      acd298(104)=acd298(4)*acd298(37)
      acd298(105)=acd298(38)*acd298(39)
      acd298(105)=acd298(105)-acd298(40)
      acd298(106)=acd298(105)*acd298(15)
      acd298(96)=-acd298(49)+acd298(101)+acd298(103)-acd298(104)-acd298(106)+ac&
      &d298(96)+acd298(97)+acd298(98)+acd298(99)
      acd298(97)=-acd298(23)*acd298(96)
      acd298(98)=acd298(73)*acd298(72)
      acd298(99)=acd298(68)*acd298(7)
      acd298(101)=acd298(16)*acd298(35)
      acd298(103)=acd298(38)*acd298(71)
      acd298(104)=acd298(105)*acd298(2)
      acd298(106)=acd298(15)*acd298(70)
      acd298(98)=acd298(99)+acd298(101)+acd298(103)-acd298(104)-acd298(74)+acd2&
      &98(98)+2.0_ki*acd298(106)
      acd298(99)=-acd298(26)*acd298(98)
      acd298(101)=acd298(73)*acd298(81)
      acd298(103)=acd298(10)*acd298(16)
      acd298(104)=acd298(61)*acd298(71)
      acd298(106)=acd298(25)*acd298(68)
      acd298(101)=acd298(101)+acd298(103)+acd298(104)+acd298(106)
      acd298(103)=-acd298(15)*acd298(101)
      acd298(104)=acd298(3)*acd298(66)
      acd298(106)=2.0_ki*acd298(26)
      acd298(107)=-acd298(106)*acd298(104)
      acd298(108)=acd298(81)*acd298(80)
      acd298(109)=acd298(65)*acd298(78)
      acd298(110)=acd298(63)*acd298(76)
      acd298(111)=acd298(62)*acd298(75)
      acd298(112)=acd298(64)*acd298(77)
      acd298(113)=-acd298(6)*acd298(100)
      acd298(114)=acd298(27)*acd298(30)
      acd298(115)=acd298(10)*acd298(17)
      acd298(116)=acd298(25)*acd298(69)
      acd298(117)=-acd298(15)*acd298(66)
      acd298(117)=acd298(67)+acd298(117)
      acd298(117)=acd298(24)*acd298(117)
      acd298(95)=2.0_ki*acd298(117)+acd298(107)+acd298(97)+acd298(99)+acd298(95&
      &)+acd298(103)+acd298(116)+acd298(115)+acd298(114)+acd298(113)+acd298(112&
      &)+acd298(111)+acd298(110)+acd298(108)+acd298(109)
      acd298(95)=acd298(14)*acd298(95)
      acd298(97)=acd298(48)*acd298(59)
      acd298(99)=acd298(46)*acd298(57)
      acd298(103)=acd298(44)*acd298(55)
      acd298(107)=acd298(42)*acd298(53)
      acd298(108)=acd298(28)*acd298(32)
      acd298(109)=acd298(22)*acd298(12)
      acd298(110)=2.0_ki*acd298(34)
      acd298(111)=acd298(110)*acd298(4)
      acd298(102)=acd298(102)*acd298(52)
      acd298(97)=-acd298(99)-acd298(103)-acd298(107)-acd298(108)-acd298(109)-ac&
      &d298(97)+acd298(111)+acd298(102)
      acd298(99)=acd298(2)*acd298(97)
      acd298(96)=-acd298(11)*acd298(96)
      acd298(98)=-2.0_ki*acd298(104)-acd298(98)
      acd298(98)=acd298(20)*acd298(98)
      acd298(102)=acd298(73)*acd298(79)
      acd298(103)=acd298(22)*acd298(16)
      acd298(104)=acd298(52)*acd298(71)
      acd298(107)=acd298(18)*acd298(68)
      acd298(102)=acd298(102)+acd298(103)+acd298(104)+acd298(107)
      acd298(103)=-acd298(15)*acd298(102)
      acd298(104)=acd298(79)*acd298(80)
      acd298(107)=acd298(59)*acd298(78)
      acd298(108)=acd298(55)*acd298(76)
      acd298(109)=acd298(53)*acd298(75)
      acd298(111)=acd298(57)*acd298(77)
      acd298(112)=-acd298(6)*acd298(110)
      acd298(113)=acd298(32)*acd298(30)
      acd298(114)=acd298(22)*acd298(17)
      acd298(115)=acd298(18)*acd298(69)
      acd298(96)=acd298(96)+acd298(99)+acd298(103)+acd298(115)+acd298(114)+acd2&
      &98(113)+acd298(112)+acd298(111)+acd298(109)+acd298(108)+acd298(104)+acd2&
      &98(107)+acd298(98)
      acd298(96)=acd298(24)*acd298(96)
      acd298(98)=acd298(59)*acd298(60)
      acd298(99)=acd298(55)*acd298(56)
      acd298(103)=acd298(53)*acd298(54)
      acd298(104)=acd298(57)*acd298(58)
      acd298(107)=-acd298(5)*acd298(110)
      acd298(108)=acd298(32)*acd298(29)
      acd298(109)=acd298(22)*acd298(13)
      acd298(111)=acd298(15)*acd298(50)
      acd298(112)=-acd298(52)*acd298(111)
      acd298(113)=acd298(38)*acd298(50)
      acd298(113)=acd298(113)-acd298(51)
      acd298(114)=-acd298(20)*acd298(113)
      acd298(98)=acd298(114)+acd298(112)+acd298(109)+acd298(108)+acd298(107)+ac&
      &d298(104)+acd298(103)+acd298(98)+acd298(99)
      acd298(98)=acd298(23)*acd298(98)
      acd298(99)=acd298(65)*acd298(60)
      acd298(103)=acd298(63)*acd298(56)
      acd298(104)=acd298(62)*acd298(54)
      acd298(107)=acd298(64)*acd298(58)
      acd298(108)=-acd298(5)*acd298(100)
      acd298(109)=acd298(27)*acd298(29)
      acd298(112)=acd298(10)*acd298(13)
      acd298(111)=-acd298(61)*acd298(111)
      acd298(113)=-acd298(26)*acd298(113)
      acd298(99)=acd298(113)+acd298(111)+acd298(112)+acd298(109)+acd298(108)+ac&
      &d298(107)+acd298(104)+acd298(99)+acd298(103)
      acd298(99)=acd298(11)*acd298(99)
      acd298(103)=acd298(20)*acd298(105)
      acd298(97)=acd298(103)+acd298(97)
      acd298(97)=acd298(23)*acd298(97)
      acd298(103)=acd298(26)*acd298(105)
      acd298(94)=acd298(103)+acd298(94)
      acd298(94)=acd298(11)*acd298(94)
      acd298(103)=acd298(2)*acd298(39)
      acd298(104)=acd298(52)*acd298(103)
      acd298(102)=acd298(104)-acd298(102)
      acd298(102)=acd298(26)*acd298(102)
      acd298(103)=acd298(61)*acd298(103)
      acd298(104)=-acd298(70)*acd298(106)
      acd298(101)=acd298(104)+acd298(103)-acd298(101)
      acd298(101)=acd298(20)*acd298(101)
      acd298(103)=-acd298(1)*acd298(6)
      acd298(104)=acd298(2)*acd298(1)
      acd298(105)=acd298(4)*acd298(104)
      acd298(103)=acd298(103)+acd298(105)
      acd298(94)=acd298(94)+acd298(97)+acd298(101)+2.0_ki*acd298(103)+acd298(10&
      &2)
      acd298(94)=acd298(3)*acd298(94)
      acd298(97)=acd298(82)*acd298(7)
      acd298(101)=acd298(2)*acd298(50)
      acd298(97)=acd298(101)+acd298(97)-acd298(86)
      acd298(101)=-acd298(61)*acd298(97)
      acd298(102)=acd298(38)*acd298(82)
      acd298(102)=acd298(102)-acd298(83)
      acd298(103)=-acd298(25)*acd298(102)
      acd298(105)=acd298(91)*acd298(93)
      acd298(107)=acd298(89)*acd298(92)
      acd298(108)=acd298(81)*acd298(87)
      acd298(109)=acd298(10)*acd298(21)
      acd298(106)=acd298(85)*acd298(106)
      acd298(101)=acd298(106)+acd298(109)+acd298(108)+acd298(105)+acd298(107)+a&
      &cd298(103)+acd298(101)
      acd298(101)=acd298(20)*acd298(101)
      acd298(97)=-acd298(52)*acd298(97)
      acd298(102)=-acd298(18)*acd298(102)
      acd298(103)=acd298(91)*acd298(90)
      acd298(105)=acd298(89)*acd298(88)
      acd298(106)=acd298(79)*acd298(87)
      acd298(107)=acd298(22)*acd298(21)
      acd298(97)=acd298(107)+acd298(106)+acd298(103)+acd298(105)+acd298(102)+ac&
      &d298(97)
      acd298(97)=acd298(26)*acd298(97)
      acd298(102)=acd298(57)*acd298(84)
      acd298(103)=-acd298(8)*acd298(110)
      acd298(105)=acd298(32)*acd298(31)
      acd298(106)=acd298(22)*acd298(19)
      acd298(102)=acd298(106)+acd298(105)+acd298(102)+acd298(103)
      acd298(102)=acd298(25)*acd298(102)
      acd298(103)=acd298(64)*acd298(84)
      acd298(100)=-acd298(8)*acd298(100)
      acd298(105)=acd298(27)*acd298(31)
      acd298(106)=acd298(10)*acd298(19)
      acd298(100)=acd298(106)+acd298(105)+acd298(103)+acd298(100)
      acd298(100)=acd298(18)*acd298(100)
      acd298(103)=-acd298(7)*acd298(8)
      acd298(103)=acd298(9)+acd298(103)
      acd298(103)=acd298(1)*acd298(103)
      acd298(104)=acd298(5)*acd298(104)
      acd298(103)=acd298(103)-acd298(104)
      acd298(104)=-acd298(25)*acd298(52)
      acd298(105)=-acd298(18)*acd298(61)
      acd298(104)=acd298(104)+acd298(105)
      acd298(104)=acd298(15)*acd298(82)*acd298(104)
      brack=acd298(94)+acd298(95)+acd298(96)+acd298(97)+acd298(98)+acd298(99)+a&
      &cd298(100)+acd298(101)+acd298(102)+2.0_ki*acd298(103)+acd298(104)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd298
      complex(ki) :: brack
      acd298(1)=d(iv1,iv2)
      acd298(2)=spvak1k2(iv3)
      acd298(3)=dotproduct(qshift,spvak7k2)
      acd298(4)=abb298(35)
      acd298(5)=abb298(23)
      acd298(6)=spvak7k2(iv3)
      acd298(7)=dotproduct(qshift,spvak1k2)
      acd298(8)=abb298(63)
      acd298(9)=spval6k2(iv3)
      acd298(10)=abb298(59)
      acd298(11)=d(iv1,iv3)
      acd298(12)=spvak1k2(iv2)
      acd298(13)=spvak7k2(iv2)
      acd298(14)=spval6k2(iv2)
      acd298(15)=d(iv2,iv3)
      acd298(16)=spvak1k2(iv1)
      acd298(17)=spvak7k2(iv1)
      acd298(18)=spval6k2(iv1)
      acd298(19)=k2(iv1)
      acd298(20)=abb298(27)
      acd298(21)=spval5k2(iv3)
      acd298(22)=abb298(80)
      acd298(23)=spval5k2(iv2)
      acd298(24)=k2(iv2)
      acd298(25)=spval5k2(iv1)
      acd298(26)=k2(iv3)
      acd298(27)=l5(iv1)
      acd298(28)=abb298(17)
      acd298(29)=l5(iv2)
      acd298(30)=l5(iv3)
      acd298(31)=qshift(iv1)
      acd298(32)=qshift(iv2)
      acd298(33)=qshift(iv3)
      acd298(34)=dotproduct(qshift,spvak4k3)
      acd298(35)=abb298(53)
      acd298(36)=abb298(49)
      acd298(37)=spvak4k3(iv3)
      acd298(38)=dotproduct(qshift,spval5k2)
      acd298(39)=spval5k1(iv3)
      acd298(40)=abb298(34)
      acd298(41)=spval5k3(iv3)
      acd298(42)=abb298(43)
      acd298(43)=spval5l6(iv3)
      acd298(44)=abb298(39)
      acd298(45)=spval5k7(iv3)
      acd298(46)=abb298(38)
      acd298(47)=spvak4k3(iv2)
      acd298(48)=spval5k1(iv2)
      acd298(49)=spval5k3(iv2)
      acd298(50)=spval5l6(iv2)
      acd298(51)=spval5k7(iv2)
      acd298(52)=abb298(50)
      acd298(53)=spvak4k3(iv1)
      acd298(54)=spval5k1(iv1)
      acd298(55)=spval5k3(iv1)
      acd298(56)=spval5l6(iv1)
      acd298(57)=spval5k7(iv1)
      acd298(58)=abb298(99)
      acd298(59)=abb298(46)
      acd298(60)=abb298(66)
      acd298(61)=abb298(84)
      acd298(62)=spvak4k2(iv3)
      acd298(63)=abb298(26)
      acd298(64)=spvak4k2(iv2)
      acd298(65)=spvak4k2(iv1)
      acd298(66)=abb298(10)
      acd298(67)=acd298(37)*acd298(38)
      acd298(68)=acd298(21)*acd298(34)
      acd298(67)=acd298(67)+acd298(68)
      acd298(67)=acd298(67)*acd298(35)
      acd298(68)=acd298(46)*acd298(45)
      acd298(69)=acd298(44)*acd298(43)
      acd298(70)=acd298(42)*acd298(41)
      acd298(71)=acd298(40)*acd298(39)
      acd298(72)=acd298(28)*acd298(30)
      acd298(73)=acd298(20)*acd298(26)
      acd298(74)=acd298(21)*acd298(36)
      acd298(75)=2.0_ki*acd298(4)
      acd298(76)=acd298(75)*acd298(33)
      acd298(67)=-acd298(67)+acd298(72)+acd298(73)+acd298(74)-acd298(76)+acd298&
      &(68)+acd298(69)+acd298(70)+acd298(71)
      acd298(68)=-acd298(12)*acd298(67)
      acd298(69)=acd298(47)*acd298(38)
      acd298(70)=acd298(23)*acd298(34)
      acd298(69)=acd298(69)+acd298(70)
      acd298(69)=acd298(69)*acd298(35)
      acd298(70)=acd298(46)*acd298(51)
      acd298(71)=acd298(44)*acd298(50)
      acd298(72)=acd298(42)*acd298(49)
      acd298(73)=acd298(40)*acd298(48)
      acd298(74)=acd298(28)*acd298(29)
      acd298(76)=acd298(20)*acd298(24)
      acd298(77)=acd298(23)*acd298(36)
      acd298(78)=acd298(75)*acd298(32)
      acd298(69)=-acd298(69)+acd298(74)+acd298(76)+acd298(77)-acd298(78)+acd298&
      &(70)+acd298(71)+acd298(72)+acd298(73)
      acd298(70)=-acd298(2)*acd298(69)
      acd298(71)=acd298(63)*acd298(62)
      acd298(72)=acd298(59)*acd298(9)
      acd298(73)=acd298(22)*acd298(26)
      acd298(74)=acd298(37)*acd298(61)
      acd298(71)=acd298(71)+acd298(72)+acd298(73)+acd298(74)
      acd298(72)=-acd298(23)*acd298(71)
      acd298(73)=acd298(63)*acd298(64)
      acd298(74)=acd298(59)*acd298(14)
      acd298(76)=acd298(22)*acd298(24)
      acd298(77)=acd298(47)*acd298(61)
      acd298(73)=acd298(77)+acd298(76)+acd298(73)+acd298(74)
      acd298(74)=2.0_ki*acd298(23)
      acd298(76)=-acd298(60)*acd298(74)
      acd298(76)=acd298(76)-acd298(73)
      acd298(76)=acd298(21)*acd298(76)
      acd298(77)=acd298(23)*acd298(37)
      acd298(78)=acd298(21)*acd298(47)
      acd298(77)=acd298(77)+acd298(78)
      acd298(78)=acd298(35)*acd298(7)
      acd298(79)=acd298(77)*acd298(78)
      acd298(80)=acd298(4)*acd298(7)
      acd298(80)=acd298(80)-acd298(8)
      acd298(81)=acd298(15)*acd298(80)
      acd298(68)=acd298(70)+acd298(68)+acd298(79)+acd298(76)+2.0_ki*acd298(81)+&
      &acd298(72)
      acd298(68)=acd298(17)*acd298(68)
      acd298(67)=-acd298(16)*acd298(67)
      acd298(70)=acd298(53)*acd298(38)
      acd298(72)=acd298(25)*acd298(34)
      acd298(70)=acd298(70)+acd298(72)
      acd298(70)=acd298(70)*acd298(35)
      acd298(72)=acd298(46)*acd298(57)
      acd298(76)=acd298(44)*acd298(56)
      acd298(79)=acd298(42)*acd298(55)
      acd298(81)=acd298(40)*acd298(54)
      acd298(82)=acd298(28)*acd298(27)
      acd298(83)=acd298(20)*acd298(19)
      acd298(84)=acd298(25)*acd298(36)
      acd298(75)=acd298(75)*acd298(31)
      acd298(70)=-acd298(70)+acd298(82)+acd298(83)+acd298(84)-acd298(75)+acd298&
      &(72)+acd298(76)+acd298(79)+acd298(81)
      acd298(72)=-acd298(2)*acd298(70)
      acd298(75)=acd298(63)*acd298(65)
      acd298(76)=acd298(59)*acd298(18)
      acd298(79)=acd298(22)*acd298(19)
      acd298(81)=acd298(53)*acd298(61)
      acd298(82)=2.0_ki*acd298(25)
      acd298(83)=acd298(82)*acd298(60)
      acd298(75)=acd298(79)+acd298(75)+acd298(76)+acd298(81)+acd298(83)
      acd298(76)=acd298(17)*acd298(58)
      acd298(79)=-2.0_ki*acd298(76)-acd298(75)
      acd298(79)=acd298(21)*acd298(79)
      acd298(71)=-acd298(25)*acd298(71)
      acd298(81)=acd298(25)*acd298(37)
      acd298(83)=acd298(21)*acd298(53)
      acd298(81)=acd298(81)+acd298(83)
      acd298(83)=acd298(81)*acd298(78)
      acd298(84)=acd298(11)*acd298(80)
      acd298(67)=acd298(72)+acd298(67)+acd298(83)+2.0_ki*acd298(84)+acd298(71)+&
      &acd298(79)
      acd298(67)=acd298(13)*acd298(67)
      acd298(69)=-acd298(16)*acd298(69)
      acd298(70)=-acd298(12)*acd298(70)
      acd298(71)=-acd298(23)*acd298(75)
      acd298(72)=-acd298(25)*acd298(73)
      acd298(73)=acd298(25)*acd298(47)
      acd298(75)=acd298(23)*acd298(53)
      acd298(73)=acd298(73)+acd298(75)
      acd298(75)=acd298(73)*acd298(78)
      acd298(74)=-acd298(76)*acd298(74)
      acd298(76)=acd298(1)*acd298(80)
      acd298(78)=-acd298(13)*acd298(58)*acd298(82)
      acd298(69)=acd298(78)+acd298(74)+acd298(70)+acd298(69)+acd298(75)+acd298(&
      &71)+2.0_ki*acd298(76)+acd298(72)
      acd298(69)=acd298(6)*acd298(69)
      acd298(70)=-acd298(15)*acd298(18)
      acd298(71)=-acd298(11)*acd298(14)
      acd298(72)=-acd298(1)*acd298(9)
      acd298(70)=acd298(72)+acd298(70)+acd298(71)
      acd298(70)=acd298(10)*acd298(70)
      acd298(71)=acd298(47)*acd298(66)
      acd298(72)=-acd298(9)*acd298(71)
      acd298(74)=acd298(37)*acd298(66)
      acd298(75)=-acd298(14)*acd298(74)
      acd298(72)=acd298(72)+acd298(75)
      acd298(72)=acd298(25)*acd298(72)
      acd298(75)=acd298(53)*acd298(66)
      acd298(76)=-acd298(9)*acd298(75)
      acd298(74)=-acd298(18)*acd298(74)
      acd298(74)=acd298(76)+acd298(74)
      acd298(74)=acd298(23)*acd298(74)
      acd298(75)=-acd298(14)*acd298(75)
      acd298(71)=-acd298(18)*acd298(71)
      acd298(71)=acd298(75)+acd298(71)
      acd298(71)=acd298(21)*acd298(71)
      acd298(75)=acd298(35)*acd298(3)
      acd298(75)=acd298(75)-acd298(52)
      acd298(76)=acd298(77)*acd298(75)
      acd298(77)=acd298(4)*acd298(3)
      acd298(77)=acd298(77)-acd298(5)
      acd298(78)=acd298(15)*acd298(77)
      acd298(76)=2.0_ki*acd298(78)+acd298(76)
      acd298(76)=acd298(16)*acd298(76)
      acd298(78)=acd298(81)*acd298(75)
      acd298(79)=acd298(11)*acd298(77)
      acd298(78)=2.0_ki*acd298(79)+acd298(78)
      acd298(78)=acd298(12)*acd298(78)
      acd298(73)=acd298(73)*acd298(75)
      acd298(75)=acd298(1)*acd298(77)
      acd298(73)=2.0_ki*acd298(75)+acd298(73)
      acd298(73)=acd298(2)*acd298(73)
      brack=acd298(67)+acd298(68)+acd298(69)+2.0_ki*acd298(70)+acd298(71)+acd29&
      &8(72)+acd298(73)+acd298(74)+acd298(76)+acd298(78)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd298h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd298
      complex(ki) :: brack
      acd298(1)=d(iv1,iv2)
      acd298(2)=spvak1k2(iv3)
      acd298(3)=spvak7k2(iv4)
      acd298(4)=abb298(35)
      acd298(5)=spvak1k2(iv4)
      acd298(6)=spvak7k2(iv3)
      acd298(7)=d(iv1,iv3)
      acd298(8)=spvak1k2(iv2)
      acd298(9)=spvak7k2(iv2)
      acd298(10)=d(iv1,iv4)
      acd298(11)=d(iv2,iv3)
      acd298(12)=spvak1k2(iv1)
      acd298(13)=spvak7k2(iv1)
      acd298(14)=d(iv2,iv4)
      acd298(15)=d(iv3,iv4)
      acd298(16)=spvak4k3(iv3)
      acd298(17)=spval5k2(iv4)
      acd298(18)=abb298(53)
      acd298(19)=spvak4k3(iv4)
      acd298(20)=spval5k2(iv3)
      acd298(21)=spvak4k3(iv2)
      acd298(22)=spval5k2(iv2)
      acd298(23)=spvak4k3(iv1)
      acd298(24)=spval5k2(iv1)
      acd298(25)=acd298(20)*acd298(21)
      acd298(26)=acd298(16)*acd298(22)
      acd298(25)=acd298(25)+acd298(26)
      acd298(26)=acd298(13)*acd298(25)
      acd298(27)=acd298(20)*acd298(23)
      acd298(28)=acd298(16)*acd298(24)
      acd298(27)=acd298(27)+acd298(28)
      acd298(28)=acd298(9)*acd298(27)
      acd298(29)=acd298(22)*acd298(23)
      acd298(30)=acd298(21)*acd298(24)
      acd298(29)=acd298(29)+acd298(30)
      acd298(30)=acd298(6)*acd298(29)
      acd298(26)=acd298(30)+acd298(26)+acd298(28)
      acd298(26)=acd298(5)*acd298(26)
      acd298(28)=acd298(19)*acd298(22)
      acd298(30)=acd298(17)*acd298(21)
      acd298(28)=acd298(28)+acd298(30)
      acd298(30)=acd298(13)*acd298(28)
      acd298(31)=acd298(19)*acd298(24)
      acd298(32)=acd298(17)*acd298(23)
      acd298(31)=acd298(31)+acd298(32)
      acd298(32)=acd298(9)*acd298(31)
      acd298(29)=acd298(3)*acd298(29)
      acd298(29)=acd298(29)+acd298(30)+acd298(32)
      acd298(29)=acd298(2)*acd298(29)
      acd298(30)=acd298(9)*acd298(12)
      acd298(32)=acd298(8)*acd298(13)
      acd298(30)=acd298(30)+acd298(32)
      acd298(32)=acd298(19)*acd298(20)
      acd298(33)=acd298(16)*acd298(17)
      acd298(32)=acd298(32)+acd298(33)
      acd298(32)=acd298(32)*acd298(30)
      acd298(28)=acd298(12)*acd298(28)
      acd298(31)=acd298(8)*acd298(31)
      acd298(28)=acd298(28)+acd298(31)
      acd298(28)=acd298(6)*acd298(28)
      acd298(25)=acd298(12)*acd298(25)
      acd298(27)=acd298(8)*acd298(27)
      acd298(25)=acd298(25)+acd298(27)
      acd298(25)=acd298(3)*acd298(25)
      acd298(25)=acd298(29)+acd298(25)+acd298(26)+acd298(28)+acd298(32)
      acd298(25)=acd298(18)*acd298(25)
      acd298(26)=acd298(13)*acd298(11)
      acd298(27)=acd298(9)*acd298(7)
      acd298(28)=acd298(6)*acd298(1)
      acd298(26)=acd298(28)+acd298(26)+acd298(27)
      acd298(26)=acd298(5)*acd298(26)
      acd298(27)=acd298(13)*acd298(14)
      acd298(28)=acd298(9)*acd298(10)
      acd298(29)=acd298(3)*acd298(1)
      acd298(27)=acd298(29)+acd298(27)+acd298(28)
      acd298(27)=acd298(2)*acd298(27)
      acd298(28)=acd298(15)*acd298(30)
      acd298(29)=acd298(12)*acd298(14)
      acd298(30)=acd298(8)*acd298(10)
      acd298(29)=acd298(29)+acd298(30)
      acd298(29)=acd298(6)*acd298(29)
      acd298(30)=acd298(12)*acd298(11)
      acd298(31)=acd298(8)*acd298(7)
      acd298(30)=acd298(30)+acd298(31)
      acd298(30)=acd298(3)*acd298(30)
      acd298(26)=acd298(27)+acd298(30)+acd298(26)+acd298(29)+acd298(28)
      acd298(26)=acd298(4)*acd298(26)
      brack=acd298(25)+2.0_ki*acd298(26)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd298h4
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
      qshift = -k5
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
!---#[ subroutine reconstruct_d298:
   subroutine     reconstruct_d298(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_298:
      coeffs%coeffs_298%c0 = derivative(czip)
      coeffs%coeffs_298%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_298%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_298%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_298%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_298%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_298%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_298%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_298%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_298%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_298%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_298%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_298%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_298%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_298%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_298%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_298%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_298%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_298%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_298%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_298%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_298%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_298%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_298%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_298%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_298%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_298%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_298%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_298%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_298%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_298%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_298%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_298%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_298%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_298%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_298%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_298%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_298%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_298%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_298%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_298%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_298%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_298%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_298%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_298%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_298%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_298%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_298%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_298%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_298%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_298%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_298%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_298%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_298%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_298%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_298%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_298%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_298%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_298%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_298%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_298%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_298%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_298%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_298%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_298%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_298%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_298%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_298%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_298%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_298%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_298:
   end subroutine reconstruct_d298
!---#] subroutine reconstruct_d298:
end module     p0_dbaru_epnebbbarg_d298h4l1d
