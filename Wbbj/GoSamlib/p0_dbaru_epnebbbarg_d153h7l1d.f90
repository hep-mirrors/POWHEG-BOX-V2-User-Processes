module     p0_dbaru_epnebbbarg_d153h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d153h7l1d.f90
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
   public :: derivative , reconstruct_d153
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(83) :: acd153
      complex(ki) :: brack
      acd153(1)=dotproduct(k2,qshift)
      acd153(2)=dotproduct(qshift,spvak7k2)
      acd153(3)=abb153(28)
      acd153(4)=abb153(99)
      acd153(5)=dotproduct(l5,qshift)
      acd153(6)=abb153(40)
      acd153(7)=abb153(48)
      acd153(8)=dotproduct(l6,qshift)
      acd153(9)=dotproduct(k7,qshift)
      acd153(10)=dotproduct(qshift,spvak2l5)
      acd153(11)=abb153(29)
      acd153(12)=dotproduct(qshift,spvak2l6)
      acd153(13)=abb153(77)
      acd153(14)=abb153(55)
      acd153(15)=dotproduct(qshift,qshift)
      acd153(16)=abb153(51)
      acd153(17)=abb153(43)
      acd153(18)=abb153(75)
      acd153(19)=dotproduct(qshift,spvak1k2)
      acd153(20)=abb153(42)
      acd153(21)=dotproduct(qshift,spvak1k3)
      acd153(22)=abb153(37)
      acd153(23)=dotproduct(qshift,spvak4k2)
      acd153(24)=abb153(52)
      acd153(25)=abb153(47)
      acd153(26)=abb153(27)
      acd153(27)=abb153(39)
      acd153(28)=abb153(30)
      acd153(29)=abb153(26)
      acd153(30)=abb153(44)
      acd153(31)=abb153(38)
      acd153(32)=abb153(69)
      acd153(33)=abb153(50)
      acd153(34)=dotproduct(qshift,spvak1l5)
      acd153(35)=abb153(31)
      acd153(36)=dotproduct(qshift,spvak1l6)
      acd153(37)=abb153(35)
      acd153(38)=dotproduct(qshift,spvak2k3)
      acd153(39)=abb153(54)
      acd153(40)=dotproduct(qshift,spvak4l5)
      acd153(41)=abb153(60)
      acd153(42)=dotproduct(qshift,spvak4l6)
      acd153(43)=abb153(63)
      acd153(44)=dotproduct(qshift,spval5k2)
      acd153(45)=abb153(65)
      acd153(46)=dotproduct(qshift,spval5k3)
      acd153(47)=abb153(82)
      acd153(48)=dotproduct(qshift,spval6k2)
      acd153(49)=abb153(88)
      acd153(50)=dotproduct(qshift,spval6k3)
      acd153(51)=abb153(89)
      acd153(52)=abb153(57)
      acd153(53)=dotproduct(qshift,spvak7k3)
      acd153(54)=abb153(53)
      acd153(55)=abb153(32)
      acd153(56)=abb153(100)
      acd153(57)=abb153(34)
      acd153(58)=abb153(41)
      acd153(59)=abb153(33)
      acd153(60)=abb153(142)
      acd153(61)=abb153(49)
      acd153(62)=abb153(124)
      acd153(63)=abb153(127)
      acd153(64)=abb153(83)
      acd153(65)=abb153(96)
      acd153(66)=abb153(68)
      acd153(67)=abb153(56)
      acd153(68)=-acd153(30)*acd153(19)
      acd153(69)=-acd153(31)*acd153(21)
      acd153(70)=-acd153(32)*acd153(23)
      acd153(68)=acd153(33)+acd153(70)+acd153(69)+acd153(68)
      acd153(68)=acd153(68)*acd153(12)
      acd153(69)=-acd153(26)*acd153(19)
      acd153(70)=-acd153(27)*acd153(21)
      acd153(71)=-acd153(28)*acd153(23)
      acd153(69)=acd153(29)+acd153(71)+acd153(70)+acd153(69)
      acd153(69)=acd153(69)*acd153(10)
      acd153(70)=acd153(3)*acd153(1)
      acd153(71)=-acd153(16)*acd153(15)
      acd153(72)=acd153(35)*acd153(34)
      acd153(73)=acd153(37)*acd153(36)
      acd153(74)=acd153(39)*acd153(38)
      acd153(75)=acd153(41)*acd153(40)
      acd153(76)=acd153(43)*acd153(42)
      acd153(77)=acd153(45)*acd153(44)
      acd153(78)=acd153(47)*acd153(46)
      acd153(79)=acd153(49)*acd153(48)
      acd153(80)=acd153(51)*acd153(50)
      acd153(68)=acd153(69)+acd153(68)-acd153(52)+acd153(80)+acd153(79)+acd153(&
      &78)+acd153(77)+acd153(76)+acd153(75)+acd153(74)+acd153(73)+acd153(72)+ac&
      &d153(71)+acd153(70)
      acd153(68)=acd153(2)*acd153(68)
      acd153(69)=-acd153(17)*acd153(10)
      acd153(70)=-acd153(18)*acd153(12)
      acd153(71)=-acd153(20)*acd153(19)
      acd153(72)=-acd153(22)*acd153(21)
      acd153(73)=-acd153(24)*acd153(23)
      acd153(69)=acd153(25)+acd153(73)+acd153(72)+acd153(71)+acd153(70)+acd153(&
      &69)
      acd153(69)=acd153(15)*acd153(69)
      acd153(70)=-acd153(8)-acd153(5)
      acd153(71)=acd153(6)*acd153(2)
      acd153(71)=acd153(71)+acd153(7)
      acd153(70)=acd153(71)*acd153(70)
      acd153(71)=acd153(11)*acd153(10)
      acd153(72)=acd153(13)*acd153(12)
      acd153(71)=-acd153(14)+acd153(72)+acd153(71)
      acd153(71)=acd153(9)*acd153(71)
      acd153(72)=acd153(54)*acd153(10)
      acd153(73)=acd153(56)*acd153(12)
      acd153(72)=-acd153(62)+acd153(73)+acd153(72)
      acd153(72)=acd153(53)*acd153(72)
      acd153(73)=-acd153(4)*acd153(1)
      acd153(74)=-acd153(55)*acd153(10)
      acd153(75)=-acd153(57)*acd153(12)
      acd153(76)=-acd153(58)*acd153(19)
      acd153(77)=-acd153(59)*acd153(21)
      acd153(78)=-acd153(60)*acd153(23)
      acd153(79)=-acd153(61)*acd153(38)
      acd153(80)=-acd153(63)*acd153(44)
      acd153(81)=-acd153(64)*acd153(46)
      acd153(82)=-acd153(65)*acd153(48)
      acd153(83)=-acd153(66)*acd153(50)
      brack=acd153(67)+acd153(68)+acd153(69)+acd153(70)+acd153(71)+acd153(72)+a&
      &cd153(73)+acd153(74)+acd153(75)+acd153(76)+acd153(77)+acd153(78)+acd153(&
      &79)+acd153(80)+acd153(81)+acd153(82)+acd153(83)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(107) :: acd153
      complex(ki) :: brack
      acd153(1)=k2(iv1)
      acd153(2)=dotproduct(qshift,spvak7k2)
      acd153(3)=abb153(28)
      acd153(4)=abb153(99)
      acd153(5)=l5(iv1)
      acd153(6)=abb153(40)
      acd153(7)=abb153(48)
      acd153(8)=l6(iv1)
      acd153(9)=k7(iv1)
      acd153(10)=dotproduct(qshift,spvak2l5)
      acd153(11)=abb153(29)
      acd153(12)=dotproduct(qshift,spvak2l6)
      acd153(13)=abb153(77)
      acd153(14)=abb153(55)
      acd153(15)=qshift(iv1)
      acd153(16)=abb153(51)
      acd153(17)=abb153(43)
      acd153(18)=abb153(75)
      acd153(19)=dotproduct(qshift,spvak1k2)
      acd153(20)=abb153(42)
      acd153(21)=dotproduct(qshift,spvak1k3)
      acd153(22)=abb153(37)
      acd153(23)=dotproduct(qshift,spvak4k2)
      acd153(24)=abb153(52)
      acd153(25)=abb153(47)
      acd153(26)=spvak7k2(iv1)
      acd153(27)=dotproduct(k2,qshift)
      acd153(28)=dotproduct(l5,qshift)
      acd153(29)=dotproduct(l6,qshift)
      acd153(30)=dotproduct(qshift,qshift)
      acd153(31)=abb153(27)
      acd153(32)=abb153(39)
      acd153(33)=abb153(30)
      acd153(34)=abb153(26)
      acd153(35)=abb153(44)
      acd153(36)=abb153(38)
      acd153(37)=abb153(69)
      acd153(38)=abb153(50)
      acd153(39)=dotproduct(qshift,spvak1l5)
      acd153(40)=abb153(31)
      acd153(41)=dotproduct(qshift,spvak1l6)
      acd153(42)=abb153(35)
      acd153(43)=dotproduct(qshift,spvak2k3)
      acd153(44)=abb153(54)
      acd153(45)=dotproduct(qshift,spvak4l5)
      acd153(46)=abb153(60)
      acd153(47)=dotproduct(qshift,spvak4l6)
      acd153(48)=abb153(63)
      acd153(49)=dotproduct(qshift,spval5k2)
      acd153(50)=abb153(65)
      acd153(51)=dotproduct(qshift,spval5k3)
      acd153(52)=abb153(82)
      acd153(53)=dotproduct(qshift,spval6k2)
      acd153(54)=abb153(88)
      acd153(55)=dotproduct(qshift,spval6k3)
      acd153(56)=abb153(89)
      acd153(57)=abb153(57)
      acd153(58)=spvak2l5(iv1)
      acd153(59)=dotproduct(k7,qshift)
      acd153(60)=dotproduct(qshift,spvak7k3)
      acd153(61)=abb153(53)
      acd153(62)=abb153(32)
      acd153(63)=spvak2l6(iv1)
      acd153(64)=abb153(100)
      acd153(65)=abb153(34)
      acd153(66)=spvak1k2(iv1)
      acd153(67)=abb153(41)
      acd153(68)=spvak1k3(iv1)
      acd153(69)=abb153(33)
      acd153(70)=spvak4k2(iv1)
      acd153(71)=abb153(142)
      acd153(72)=spvak1l5(iv1)
      acd153(73)=spvak1l6(iv1)
      acd153(74)=spvak2k3(iv1)
      acd153(75)=abb153(49)
      acd153(76)=spvak7k3(iv1)
      acd153(77)=abb153(124)
      acd153(78)=spvak4l5(iv1)
      acd153(79)=spvak4l6(iv1)
      acd153(80)=spval5k2(iv1)
      acd153(81)=abb153(127)
      acd153(82)=spval5k3(iv1)
      acd153(83)=abb153(83)
      acd153(84)=spval6k2(iv1)
      acd153(85)=abb153(96)
      acd153(86)=spval6k3(iv1)
      acd153(87)=abb153(68)
      acd153(88)=acd153(23)*acd153(37)
      acd153(89)=acd153(21)*acd153(36)
      acd153(90)=acd153(19)*acd153(35)
      acd153(88)=acd153(88)+acd153(89)+acd153(90)-acd153(38)
      acd153(89)=acd153(63)*acd153(88)
      acd153(90)=acd153(23)*acd153(33)
      acd153(91)=acd153(21)*acd153(32)
      acd153(92)=acd153(19)*acd153(31)
      acd153(90)=acd153(90)+acd153(91)+acd153(92)-acd153(34)
      acd153(91)=acd153(58)*acd153(90)
      acd153(92)=acd153(70)*acd153(37)
      acd153(93)=acd153(68)*acd153(36)
      acd153(94)=acd153(66)*acd153(35)
      acd153(92)=acd153(94)+acd153(92)+acd153(93)
      acd153(92)=acd153(12)*acd153(92)
      acd153(93)=acd153(70)*acd153(33)
      acd153(94)=acd153(68)*acd153(32)
      acd153(95)=acd153(66)*acd153(31)
      acd153(93)=acd153(95)+acd153(93)+acd153(94)
      acd153(93)=acd153(10)*acd153(93)
      acd153(94)=-acd153(56)*acd153(86)
      acd153(95)=-acd153(54)*acd153(84)
      acd153(96)=-acd153(52)*acd153(82)
      acd153(97)=-acd153(50)*acd153(80)
      acd153(98)=-acd153(48)*acd153(79)
      acd153(99)=-acd153(46)*acd153(78)
      acd153(100)=-acd153(44)*acd153(74)
      acd153(101)=-acd153(42)*acd153(73)
      acd153(102)=-acd153(40)*acd153(72)
      acd153(103)=-acd153(1)*acd153(3)
      acd153(104)=acd153(5)+acd153(8)
      acd153(105)=acd153(6)*acd153(104)
      acd153(106)=2.0_ki*acd153(15)
      acd153(107)=acd153(16)*acd153(106)
      acd153(89)=acd153(93)+acd153(92)+acd153(91)+acd153(89)+acd153(107)+acd153&
      &(105)+acd153(103)+acd153(102)+acd153(101)+acd153(100)+acd153(99)+acd153(&
      &98)+acd153(97)+acd153(96)+acd153(94)+acd153(95)
      acd153(89)=acd153(2)*acd153(89)
      acd153(88)=acd153(12)*acd153(88)
      acd153(90)=acd153(10)*acd153(90)
      acd153(91)=-acd153(56)*acd153(55)
      acd153(92)=-acd153(54)*acd153(53)
      acd153(93)=-acd153(52)*acd153(51)
      acd153(94)=-acd153(50)*acd153(49)
      acd153(95)=-acd153(48)*acd153(47)
      acd153(96)=-acd153(46)*acd153(45)
      acd153(97)=-acd153(44)*acd153(43)
      acd153(98)=-acd153(42)*acd153(41)
      acd153(99)=-acd153(40)*acd153(39)
      acd153(100)=-acd153(3)*acd153(27)
      acd153(101)=acd153(29)+acd153(28)
      acd153(101)=acd153(6)*acd153(101)
      acd153(102)=acd153(30)*acd153(16)
      acd153(88)=acd153(90)+acd153(88)+acd153(102)+acd153(101)+acd153(100)+acd1&
      &53(99)+acd153(98)+acd153(97)+acd153(96)+acd153(95)+acd153(94)+acd153(93)&
      &+acd153(92)+acd153(57)+acd153(91)
      acd153(88)=acd153(26)*acd153(88)
      acd153(90)=acd153(70)*acd153(24)
      acd153(91)=acd153(68)*acd153(22)
      acd153(92)=acd153(66)*acd153(20)
      acd153(90)=acd153(92)+acd153(90)+acd153(91)
      acd153(90)=acd153(30)*acd153(90)
      acd153(91)=acd153(23)*acd153(24)
      acd153(92)=acd153(21)*acd153(22)
      acd153(93)=acd153(19)*acd153(20)
      acd153(91)=acd153(93)+acd153(92)-acd153(25)+acd153(91)
      acd153(91)=acd153(91)*acd153(106)
      acd153(92)=-acd153(60)*acd153(64)
      acd153(93)=-acd153(13)*acd153(59)
      acd153(94)=acd153(30)*acd153(18)
      acd153(92)=acd153(94)+acd153(93)+acd153(65)+acd153(92)
      acd153(92)=acd153(63)*acd153(92)
      acd153(93)=-acd153(60)*acd153(61)
      acd153(94)=-acd153(11)*acd153(59)
      acd153(95)=acd153(30)*acd153(17)
      acd153(93)=acd153(95)+acd153(94)+acd153(62)+acd153(93)
      acd153(93)=acd153(58)*acd153(93)
      acd153(94)=-acd153(76)*acd153(64)
      acd153(95)=-acd153(9)*acd153(13)
      acd153(96)=acd153(18)*acd153(106)
      acd153(94)=acd153(96)+acd153(94)+acd153(95)
      acd153(94)=acd153(12)*acd153(94)
      acd153(95)=-acd153(76)*acd153(61)
      acd153(96)=-acd153(9)*acd153(11)
      acd153(97)=acd153(17)*acd153(106)
      acd153(95)=acd153(97)+acd153(95)+acd153(96)
      acd153(95)=acd153(10)*acd153(95)
      acd153(96)=acd153(7)*acd153(104)
      acd153(97)=acd153(86)*acd153(87)
      acd153(98)=acd153(84)*acd153(85)
      acd153(99)=acd153(82)*acd153(83)
      acd153(100)=acd153(80)*acd153(81)
      acd153(101)=acd153(74)*acd153(75)
      acd153(102)=acd153(1)*acd153(4)
      acd153(103)=acd153(76)*acd153(77)
      acd153(104)=acd153(9)*acd153(14)
      acd153(105)=acd153(70)*acd153(71)
      acd153(106)=acd153(68)*acd153(69)
      acd153(107)=acd153(66)*acd153(67)
      brack=acd153(88)+acd153(89)+acd153(90)+acd153(91)+acd153(92)+acd153(93)+a&
      &cd153(94)+acd153(95)+acd153(96)+acd153(97)+acd153(98)+acd153(99)+acd153(&
      &100)+acd153(101)+acd153(102)+acd153(103)+acd153(104)+acd153(105)+acd153(&
      &106)+acd153(107)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(102) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=dotproduct(qshift,spvak1k2)
      acd153(3)=abb153(42)
      acd153(4)=dotproduct(qshift,spvak1k3)
      acd153(5)=abb153(37)
      acd153(6)=dotproduct(qshift,spvak2l5)
      acd153(7)=abb153(43)
      acd153(8)=dotproduct(qshift,spvak2l6)
      acd153(9)=abb153(75)
      acd153(10)=dotproduct(qshift,spvak4k2)
      acd153(11)=abb153(52)
      acd153(12)=dotproduct(qshift,spvak7k2)
      acd153(13)=abb153(51)
      acd153(14)=abb153(47)
      acd153(15)=k2(iv1)
      acd153(16)=spvak7k2(iv2)
      acd153(17)=abb153(28)
      acd153(18)=k2(iv2)
      acd153(19)=spvak7k2(iv1)
      acd153(20)=l5(iv1)
      acd153(21)=abb153(40)
      acd153(22)=l5(iv2)
      acd153(23)=l6(iv1)
      acd153(24)=l6(iv2)
      acd153(25)=k7(iv1)
      acd153(26)=spvak2l5(iv2)
      acd153(27)=abb153(29)
      acd153(28)=spvak2l6(iv2)
      acd153(29)=abb153(77)
      acd153(30)=k7(iv2)
      acd153(31)=spvak2l5(iv1)
      acd153(32)=spvak2l6(iv1)
      acd153(33)=qshift(iv1)
      acd153(34)=spvak1k2(iv2)
      acd153(35)=spvak1k3(iv2)
      acd153(36)=spvak4k2(iv2)
      acd153(37)=qshift(iv2)
      acd153(38)=spvak1k2(iv1)
      acd153(39)=spvak1k3(iv1)
      acd153(40)=spvak4k2(iv1)
      acd153(41)=abb153(27)
      acd153(42)=abb153(44)
      acd153(43)=abb153(39)
      acd153(44)=abb153(38)
      acd153(45)=abb153(30)
      acd153(46)=abb153(26)
      acd153(47)=spvak7k3(iv2)
      acd153(48)=abb153(53)
      acd153(49)=spvak7k3(iv1)
      acd153(50)=abb153(69)
      acd153(51)=abb153(50)
      acd153(52)=abb153(100)
      acd153(53)=spvak1l5(iv2)
      acd153(54)=abb153(31)
      acd153(55)=spvak1l6(iv2)
      acd153(56)=abb153(35)
      acd153(57)=spvak2k3(iv2)
      acd153(58)=abb153(54)
      acd153(59)=spvak4l5(iv2)
      acd153(60)=abb153(60)
      acd153(61)=spvak4l6(iv2)
      acd153(62)=abb153(63)
      acd153(63)=spval5k2(iv2)
      acd153(64)=abb153(65)
      acd153(65)=spval5k3(iv2)
      acd153(66)=abb153(82)
      acd153(67)=spval6k2(iv2)
      acd153(68)=abb153(88)
      acd153(69)=spval6k3(iv2)
      acd153(70)=abb153(89)
      acd153(71)=spvak1l5(iv1)
      acd153(72)=spvak1l6(iv1)
      acd153(73)=spvak2k3(iv1)
      acd153(74)=spvak4l5(iv1)
      acd153(75)=spvak4l6(iv1)
      acd153(76)=spval5k2(iv1)
      acd153(77)=spval5k3(iv1)
      acd153(78)=spval6k2(iv1)
      acd153(79)=spval6k3(iv1)
      acd153(80)=acd153(50)*acd153(36)
      acd153(81)=acd153(44)*acd153(35)
      acd153(82)=acd153(42)*acd153(34)
      acd153(80)=acd153(82)+acd153(80)+acd153(81)
      acd153(81)=-acd153(8)*acd153(80)
      acd153(82)=acd153(45)*acd153(36)
      acd153(83)=acd153(43)*acd153(35)
      acd153(84)=acd153(41)*acd153(34)
      acd153(82)=acd153(84)+acd153(82)+acd153(83)
      acd153(83)=-acd153(6)*acd153(82)
      acd153(84)=acd153(50)*acd153(10)
      acd153(85)=acd153(44)*acd153(4)
      acd153(86)=acd153(42)*acd153(2)
      acd153(84)=acd153(85)+acd153(84)+acd153(86)-acd153(51)
      acd153(85)=-acd153(28)*acd153(84)
      acd153(86)=acd153(45)*acd153(10)
      acd153(87)=acd153(43)*acd153(4)
      acd153(88)=acd153(41)*acd153(2)
      acd153(86)=-acd153(46)+acd153(86)+acd153(87)+acd153(88)
      acd153(87)=-acd153(26)*acd153(86)
      acd153(88)=acd153(70)*acd153(69)
      acd153(89)=acd153(68)*acd153(67)
      acd153(90)=acd153(66)*acd153(65)
      acd153(91)=acd153(64)*acd153(63)
      acd153(92)=acd153(62)*acd153(61)
      acd153(93)=acd153(60)*acd153(59)
      acd153(94)=acd153(58)*acd153(57)
      acd153(95)=acd153(56)*acd153(55)
      acd153(96)=acd153(54)*acd153(53)
      acd153(97)=acd153(17)*acd153(18)
      acd153(98)=-acd153(24)-acd153(22)
      acd153(98)=acd153(21)*acd153(98)
      acd153(99)=2.0_ki*acd153(37)
      acd153(100)=-acd153(13)*acd153(99)
      acd153(81)=acd153(87)+acd153(85)+acd153(83)+acd153(81)+acd153(100)+acd153&
      &(98)+acd153(97)+acd153(96)+acd153(95)+acd153(94)+acd153(93)+acd153(92)+a&
      &cd153(91)+acd153(90)+acd153(88)+acd153(89)
      acd153(81)=acd153(19)*acd153(81)
      acd153(83)=acd153(50)*acd153(40)
      acd153(85)=acd153(44)*acd153(39)
      acd153(87)=acd153(42)*acd153(38)
      acd153(83)=acd153(87)+acd153(83)+acd153(85)
      acd153(85)=-acd153(8)*acd153(83)
      acd153(87)=acd153(45)*acd153(40)
      acd153(88)=acd153(43)*acd153(39)
      acd153(89)=acd153(41)*acd153(38)
      acd153(87)=acd153(89)+acd153(87)+acd153(88)
      acd153(88)=-acd153(6)*acd153(87)
      acd153(84)=-acd153(32)*acd153(84)
      acd153(86)=-acd153(31)*acd153(86)
      acd153(89)=acd153(70)*acd153(79)
      acd153(90)=acd153(68)*acd153(78)
      acd153(91)=acd153(66)*acd153(77)
      acd153(92)=acd153(64)*acd153(76)
      acd153(93)=acd153(62)*acd153(75)
      acd153(94)=acd153(60)*acd153(74)
      acd153(95)=acd153(58)*acd153(73)
      acd153(96)=acd153(56)*acd153(72)
      acd153(97)=acd153(54)*acd153(71)
      acd153(98)=acd153(17)*acd153(15)
      acd153(100)=-acd153(23)-acd153(20)
      acd153(100)=acd153(21)*acd153(100)
      acd153(101)=2.0_ki*acd153(33)
      acd153(102)=-acd153(13)*acd153(101)
      acd153(84)=acd153(86)+acd153(84)+acd153(88)+acd153(85)+acd153(102)+acd153&
      &(100)+acd153(98)+acd153(97)+acd153(96)+acd153(95)+acd153(94)+acd153(93)+&
      &acd153(92)+acd153(91)+acd153(89)+acd153(90)
      acd153(84)=acd153(16)*acd153(84)
      acd153(80)=-acd153(32)*acd153(80)
      acd153(82)=-acd153(31)*acd153(82)
      acd153(83)=-acd153(28)*acd153(83)
      acd153(85)=-acd153(26)*acd153(87)
      acd153(86)=2.0_ki*acd153(13)
      acd153(86)=-acd153(1)*acd153(86)
      acd153(80)=acd153(85)+acd153(83)+acd153(82)+acd153(86)+acd153(80)
      acd153(80)=acd153(12)*acd153(80)
      acd153(82)=-acd153(10)*acd153(11)
      acd153(83)=-acd153(4)*acd153(5)
      acd153(85)=-acd153(2)*acd153(3)
      acd153(86)=-acd153(8)*acd153(9)
      acd153(87)=-acd153(6)*acd153(7)
      acd153(82)=acd153(87)+acd153(86)+acd153(85)+acd153(83)+acd153(14)+acd153(&
      &82)
      acd153(82)=acd153(1)*acd153(82)
      acd153(83)=-acd153(40)*acd153(11)
      acd153(85)=-acd153(39)*acd153(5)
      acd153(86)=-acd153(38)*acd153(3)
      acd153(83)=acd153(86)+acd153(83)+acd153(85)
      acd153(83)=acd153(37)*acd153(83)
      acd153(85)=-acd153(36)*acd153(11)
      acd153(86)=-acd153(35)*acd153(5)
      acd153(87)=-acd153(34)*acd153(3)
      acd153(85)=acd153(87)+acd153(85)+acd153(86)
      acd153(85)=acd153(33)*acd153(85)
      acd153(82)=acd153(82)+acd153(83)+acd153(85)
      acd153(83)=acd153(47)*acd153(52)
      acd153(85)=acd153(29)*acd153(30)
      acd153(86)=-acd153(9)*acd153(99)
      acd153(83)=acd153(86)+acd153(83)+acd153(85)
      acd153(83)=acd153(32)*acd153(83)
      acd153(85)=acd153(47)*acd153(48)
      acd153(86)=acd153(27)*acd153(30)
      acd153(87)=-acd153(7)*acd153(99)
      acd153(85)=acd153(87)+acd153(85)+acd153(86)
      acd153(85)=acd153(31)*acd153(85)
      acd153(86)=acd153(49)*acd153(52)
      acd153(87)=acd153(25)*acd153(29)
      acd153(88)=-acd153(9)*acd153(101)
      acd153(86)=acd153(88)+acd153(86)+acd153(87)
      acd153(86)=acd153(28)*acd153(86)
      acd153(87)=acd153(48)*acd153(49)
      acd153(88)=acd153(25)*acd153(27)
      acd153(89)=-acd153(7)*acd153(101)
      acd153(87)=acd153(89)+acd153(87)+acd153(88)
      acd153(87)=acd153(26)*acd153(87)
      brack=acd153(80)+acd153(81)+2.0_ki*acd153(82)+acd153(83)+acd153(84)+acd15&
      &3(85)+acd153(86)+acd153(87)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd153h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd153
      complex(ki) :: brack
      acd153(1)=d(iv1,iv2)
      acd153(2)=spvak1k2(iv3)
      acd153(3)=abb153(42)
      acd153(4)=spvak1k3(iv3)
      acd153(5)=abb153(37)
      acd153(6)=spvak2l5(iv3)
      acd153(7)=abb153(43)
      acd153(8)=spvak2l6(iv3)
      acd153(9)=abb153(75)
      acd153(10)=spvak4k2(iv3)
      acd153(11)=abb153(52)
      acd153(12)=spvak7k2(iv3)
      acd153(13)=abb153(51)
      acd153(14)=d(iv1,iv3)
      acd153(15)=spvak1k2(iv2)
      acd153(16)=spvak1k3(iv2)
      acd153(17)=spvak2l5(iv2)
      acd153(18)=spvak2l6(iv2)
      acd153(19)=spvak4k2(iv2)
      acd153(20)=spvak7k2(iv2)
      acd153(21)=d(iv2,iv3)
      acd153(22)=spvak1k2(iv1)
      acd153(23)=spvak1k3(iv1)
      acd153(24)=spvak2l5(iv1)
      acd153(25)=spvak2l6(iv1)
      acd153(26)=spvak4k2(iv1)
      acd153(27)=spvak7k2(iv1)
      acd153(28)=abb153(27)
      acd153(29)=abb153(44)
      acd153(30)=abb153(39)
      acd153(31)=abb153(38)
      acd153(32)=abb153(30)
      acd153(33)=abb153(69)
      acd153(34)=acd153(26)*acd153(11)
      acd153(35)=acd153(23)*acd153(5)
      acd153(36)=acd153(22)*acd153(3)
      acd153(37)=acd153(25)*acd153(9)
      acd153(38)=acd153(24)*acd153(7)
      acd153(34)=acd153(38)+acd153(37)+acd153(36)+acd153(34)+acd153(35)
      acd153(34)=acd153(21)*acd153(34)
      acd153(35)=acd153(19)*acd153(11)
      acd153(36)=acd153(16)*acd153(5)
      acd153(37)=acd153(15)*acd153(3)
      acd153(38)=acd153(18)*acd153(9)
      acd153(39)=acd153(17)*acd153(7)
      acd153(35)=acd153(39)+acd153(38)+acd153(37)+acd153(35)+acd153(36)
      acd153(35)=acd153(14)*acd153(35)
      acd153(36)=acd153(10)*acd153(11)
      acd153(37)=acd153(4)*acd153(5)
      acd153(38)=acd153(2)*acd153(3)
      acd153(39)=acd153(8)*acd153(9)
      acd153(40)=acd153(6)*acd153(7)
      acd153(36)=acd153(40)+acd153(39)+acd153(38)+acd153(36)+acd153(37)
      acd153(36)=acd153(1)*acd153(36)
      acd153(34)=acd153(36)+acd153(35)+acd153(34)
      acd153(35)=acd153(33)*acd153(10)
      acd153(36)=acd153(31)*acd153(4)
      acd153(37)=acd153(29)*acd153(2)
      acd153(35)=acd153(37)+acd153(35)+acd153(36)
      acd153(36)=acd153(18)*acd153(35)
      acd153(37)=acd153(32)*acd153(10)
      acd153(38)=acd153(30)*acd153(4)
      acd153(39)=acd153(28)*acd153(2)
      acd153(37)=acd153(37)+acd153(38)+acd153(39)
      acd153(38)=acd153(17)*acd153(37)
      acd153(39)=acd153(33)*acd153(19)
      acd153(40)=acd153(31)*acd153(16)
      acd153(41)=acd153(29)*acd153(15)
      acd153(39)=acd153(41)+acd153(39)+acd153(40)
      acd153(40)=acd153(8)*acd153(39)
      acd153(41)=acd153(32)*acd153(19)
      acd153(42)=acd153(30)*acd153(16)
      acd153(43)=acd153(28)*acd153(15)
      acd153(41)=acd153(41)+acd153(42)+acd153(43)
      acd153(42)=acd153(6)*acd153(41)
      acd153(43)=2.0_ki*acd153(13)
      acd153(44)=acd153(21)*acd153(43)
      acd153(36)=acd153(42)+acd153(40)+acd153(38)+acd153(44)+acd153(36)
      acd153(36)=acd153(27)*acd153(36)
      acd153(35)=acd153(25)*acd153(35)
      acd153(37)=acd153(24)*acd153(37)
      acd153(38)=acd153(33)*acd153(26)
      acd153(40)=acd153(31)*acd153(23)
      acd153(42)=acd153(29)*acd153(22)
      acd153(38)=acd153(42)+acd153(38)+acd153(40)
      acd153(40)=acd153(8)*acd153(38)
      acd153(42)=acd153(32)*acd153(26)
      acd153(44)=acd153(30)*acd153(23)
      acd153(45)=acd153(28)*acd153(22)
      acd153(42)=acd153(42)+acd153(44)+acd153(45)
      acd153(44)=acd153(6)*acd153(42)
      acd153(45)=acd153(14)*acd153(43)
      acd153(35)=acd153(44)+acd153(40)+acd153(37)+acd153(45)+acd153(35)
      acd153(35)=acd153(20)*acd153(35)
      acd153(37)=acd153(25)*acd153(39)
      acd153(39)=acd153(24)*acd153(41)
      acd153(38)=acd153(18)*acd153(38)
      acd153(40)=acd153(17)*acd153(42)
      acd153(41)=acd153(1)*acd153(43)
      acd153(37)=acd153(40)+acd153(38)+acd153(39)+acd153(41)+acd153(37)
      acd153(37)=acd153(12)*acd153(37)
      brack=2.0_ki*acd153(34)+acd153(35)+acd153(36)+acd153(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd153h7
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
!---#[ subroutine reconstruct_d153:
   subroutine     reconstruct_d153(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_153:
      coeffs%coeffs_153%c0 = derivative(czip)
      coeffs%coeffs_153%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_153%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_153%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_153%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_153%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_153%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_153%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_153%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_153%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_153%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_153%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_153%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_153%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_153%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_153%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_153%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_153%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_153%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_153%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_153%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_153%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_153%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_153%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_153%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_153%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_153%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_153%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_153%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_153%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_153%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_153%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_153%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_153%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_153%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_153:
   end subroutine reconstruct_d153
!---#] subroutine reconstruct_d153:
end module     p0_dbaru_epnebbbarg_d153h7l1d
