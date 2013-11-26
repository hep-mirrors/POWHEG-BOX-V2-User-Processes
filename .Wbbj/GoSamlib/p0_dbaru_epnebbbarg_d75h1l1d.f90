module     p0_dbaru_epnebbbarg_d75h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d75h1l1d.f90
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
   public :: derivative , reconstruct_d75
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd75
      complex(ki) :: brack
      acd75(1)=abb75(21)
      brack=acd75(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(40) :: acd75
      complex(ki) :: brack
      acd75(1)=k2(iv1)
      acd75(2)=abb75(16)
      acd75(3)=l5(iv1)
      acd75(4)=abb75(47)
      acd75(5)=l6(iv1)
      acd75(6)=abb75(23)
      acd75(7)=k7(iv1)
      acd75(8)=e7(iv1)
      acd75(9)=abb75(60)
      acd75(10)=spvak1k2(iv1)
      acd75(11)=abb75(32)
      acd75(12)=spvak1k3(iv1)
      acd75(13)=abb75(38)
      acd75(14)=spvak1l5(iv1)
      acd75(15)=abb75(102)
      acd75(16)=spvak2k3(iv1)
      acd75(17)=abb75(65)
      acd75(18)=spvak2l5(iv1)
      acd75(19)=abb75(9)
      acd75(20)=spvak4k3(iv1)
      acd75(21)=abb75(19)
      acd75(22)=spval5k2(iv1)
      acd75(23)=abb75(99)
      acd75(24)=spvae7k2(iv1)
      acd75(25)=abb75(20)
      acd75(26)=spval6e7(iv1)
      acd75(27)=abb75(22)
      acd75(28)=acd75(7)+acd75(5)
      acd75(28)=acd75(6)*acd75(28)
      acd75(29)=acd75(2)*acd75(1)
      acd75(30)=acd75(4)*acd75(3)
      acd75(31)=acd75(9)*acd75(8)
      acd75(32)=acd75(11)*acd75(10)
      acd75(33)=acd75(13)*acd75(12)
      acd75(34)=acd75(15)*acd75(14)
      acd75(35)=acd75(17)*acd75(16)
      acd75(36)=acd75(19)*acd75(18)
      acd75(37)=acd75(21)*acd75(20)
      acd75(38)=acd75(23)*acd75(22)
      acd75(39)=acd75(25)*acd75(24)
      acd75(40)=acd75(27)*acd75(26)
      brack=acd75(28)+acd75(29)+acd75(30)+acd75(31)+acd75(32)+acd75(33)+acd75(3&
      &4)+acd75(35)+acd75(36)+acd75(37)+acd75(38)+acd75(39)+acd75(40)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(111) :: acd75
      complex(ki) :: brack
      acd75(1)=d(iv1,iv2)
      acd75(2)=abb75(66)
      acd75(3)=k2(iv1)
      acd75(4)=k2(iv2)
      acd75(5)=abb75(119)
      acd75(6)=l6(iv2)
      acd75(7)=abb75(67)
      acd75(8)=k7(iv2)
      acd75(9)=e7(iv2)
      acd75(10)=abb75(104)
      acd75(11)=spvak1k2(iv2)
      acd75(12)=abb75(50)
      acd75(13)=spvak1k3(iv2)
      acd75(14)=abb75(70)
      acd75(15)=spvak1l5(iv2)
      acd75(16)=abb75(93)
      acd75(17)=spvak2k3(iv2)
      acd75(18)=abb75(78)
      acd75(19)=spvak4k3(iv2)
      acd75(20)=abb75(11)
      acd75(21)=spvae7k2(iv2)
      acd75(22)=abb75(27)
      acd75(23)=spval6e7(iv2)
      acd75(24)=abb75(57)
      acd75(25)=l6(iv1)
      acd75(26)=k7(iv1)
      acd75(27)=e7(iv1)
      acd75(28)=spvak1k2(iv1)
      acd75(29)=spvak1k3(iv1)
      acd75(30)=spvak1l5(iv1)
      acd75(31)=spvak2k3(iv1)
      acd75(32)=spvak4k3(iv1)
      acd75(33)=spvae7k2(iv1)
      acd75(34)=spval6e7(iv1)
      acd75(35)=l5(iv1)
      acd75(36)=abb75(54)
      acd75(37)=l5(iv2)
      acd75(38)=abb75(18)
      acd75(39)=abb75(61)
      acd75(40)=abb75(74)
      acd75(41)=abb75(36)
      acd75(42)=abb75(26)
      acd75(43)=abb75(51)
      acd75(44)=abb75(71)
      acd75(45)=abb75(41)
      acd75(46)=abb75(15)
      acd75(47)=abb75(46)
      acd75(48)=abb75(39)
      acd75(49)=spvak2l5(iv2)
      acd75(50)=abb75(64)
      acd75(51)=spvak2l6(iv2)
      acd75(52)=abb75(59)
      acd75(53)=spvak2k7(iv2)
      acd75(54)=abb75(29)
      acd75(55)=spval6k2(iv2)
      acd75(56)=abb75(58)
      acd75(57)=spval6l5(iv2)
      acd75(58)=abb75(35)
      acd75(59)=spvak7k2(iv2)
      acd75(60)=abb75(56)
      acd75(61)=spvak7l5(iv2)
      acd75(62)=abb75(52)
      acd75(63)=spvak2e7(iv2)
      acd75(64)=abb75(24)
      acd75(65)=spvae7l5(iv2)
      acd75(66)=abb75(43)
      acd75(67)=spvak2l5(iv1)
      acd75(68)=spvak2l6(iv1)
      acd75(69)=spvak2k7(iv1)
      acd75(70)=spval6k2(iv1)
      acd75(71)=spval6l5(iv1)
      acd75(72)=spvak7k2(iv1)
      acd75(73)=spvak7l5(iv1)
      acd75(74)=spvak2e7(iv1)
      acd75(75)=spvae7l5(iv1)
      acd75(76)=abb75(69)
      acd75(77)=abb75(44)
      acd75(78)=abb75(128)
      acd75(79)=abb75(130)
      acd75(80)=abb75(117)
      acd75(81)=abb75(34)
      acd75(82)=abb75(111)
      acd75(83)=abb75(101)
      acd75(84)=abb75(82)
      acd75(85)=abb75(31)
      acd75(86)=abb75(103)
      acd75(87)=abb75(30)
      acd75(88)=abb75(13)
      acd75(89)=abb75(28)
      acd75(90)=abb75(68)
      acd75(91)=abb75(76)
      acd75(92)=abb75(106)
      acd75(93)=abb75(72)
      acd75(94)=acd75(6)+acd75(8)
      acd75(95)=-acd75(38)*acd75(94)
      acd75(96)=acd75(65)*acd75(66)
      acd75(97)=acd75(63)*acd75(64)
      acd75(98)=acd75(61)*acd75(62)
      acd75(99)=acd75(59)*acd75(60)
      acd75(100)=acd75(57)*acd75(58)
      acd75(101)=acd75(55)*acd75(56)
      acd75(102)=acd75(53)*acd75(54)
      acd75(103)=acd75(51)*acd75(52)
      acd75(104)=acd75(49)*acd75(50)
      acd75(105)=acd75(23)*acd75(48)
      acd75(106)=acd75(9)*acd75(42)
      acd75(107)=acd75(21)*acd75(47)
      acd75(108)=acd75(19)*acd75(46)
      acd75(109)=acd75(4)*acd75(12)
      acd75(95)=acd75(109)+acd75(108)+acd75(107)+acd75(106)+acd75(105)+acd75(10&
      &4)+acd75(103)+acd75(102)+acd75(101)+acd75(100)+acd75(99)+acd75(98)+acd75&
      &(96)+acd75(97)+acd75(95)
      acd75(95)=acd75(28)*acd75(95)
      acd75(96)=acd75(25)+acd75(26)
      acd75(97)=-acd75(38)*acd75(96)
      acd75(98)=acd75(66)*acd75(75)
      acd75(99)=acd75(64)*acd75(74)
      acd75(100)=acd75(62)*acd75(73)
      acd75(101)=acd75(60)*acd75(72)
      acd75(102)=acd75(58)*acd75(71)
      acd75(103)=acd75(56)*acd75(70)
      acd75(104)=acd75(54)*acd75(69)
      acd75(105)=acd75(52)*acd75(68)
      acd75(106)=acd75(67)*acd75(50)
      acd75(107)=acd75(34)*acd75(48)
      acd75(108)=acd75(27)*acd75(42)
      acd75(109)=acd75(33)*acd75(47)
      acd75(110)=acd75(32)*acd75(46)
      acd75(111)=acd75(3)*acd75(12)
      acd75(97)=acd75(111)+acd75(110)+acd75(109)+acd75(108)+acd75(107)+acd75(10&
      &6)+acd75(105)+acd75(104)+acd75(103)+acd75(102)+acd75(101)+acd75(100)+acd&
      &75(98)+acd75(99)+acd75(97)
      acd75(97)=acd75(11)*acd75(97)
      acd75(98)=acd75(65)*acd75(85)
      acd75(99)=acd75(63)*acd75(84)
      acd75(100)=acd75(61)*acd75(83)
      acd75(101)=acd75(59)*acd75(82)
      acd75(102)=acd75(57)*acd75(81)
      acd75(103)=acd75(55)*acd75(80)
      acd75(104)=acd75(53)*acd75(79)
      acd75(105)=acd75(51)*acd75(78)
      acd75(106)=acd75(49)*acd75(77)
      acd75(107)=acd75(21)*acd75(76)
      acd75(98)=acd75(107)+acd75(106)+acd75(105)+acd75(104)+acd75(103)+acd75(10&
      &2)+acd75(101)+acd75(100)+acd75(98)+acd75(99)
      acd75(98)=acd75(29)*acd75(98)
      acd75(99)=acd75(75)*acd75(85)
      acd75(100)=acd75(74)*acd75(84)
      acd75(101)=acd75(73)*acd75(83)
      acd75(102)=acd75(72)*acd75(82)
      acd75(103)=acd75(71)*acd75(81)
      acd75(104)=acd75(70)*acd75(80)
      acd75(105)=acd75(69)*acd75(79)
      acd75(106)=acd75(68)*acd75(78)
      acd75(107)=acd75(67)*acd75(77)
      acd75(108)=acd75(33)*acd75(76)
      acd75(99)=acd75(108)+acd75(107)+acd75(106)+acd75(105)+acd75(104)+acd75(10&
      &3)+acd75(102)+acd75(101)+acd75(99)+acd75(100)
      acd75(99)=acd75(13)*acd75(99)
      acd75(100)=-acd75(7)*acd75(94)
      acd75(101)=acd75(23)*acd75(24)
      acd75(102)=acd75(9)*acd75(10)
      acd75(103)=acd75(21)*acd75(22)
      acd75(104)=acd75(17)*acd75(18)
      acd75(105)=acd75(15)*acd75(16)
      acd75(106)=acd75(19)*acd75(20)
      acd75(107)=acd75(13)*acd75(14)
      acd75(108)=acd75(4)*acd75(5)
      acd75(100)=2.0_ki*acd75(108)+acd75(107)+acd75(106)+acd75(105)+acd75(104)+&
      &acd75(103)+acd75(101)+acd75(102)+acd75(100)
      acd75(100)=acd75(3)*acd75(100)
      acd75(101)=-acd75(7)*acd75(96)
      acd75(102)=acd75(34)*acd75(24)
      acd75(103)=acd75(27)*acd75(10)
      acd75(104)=acd75(33)*acd75(22)
      acd75(105)=acd75(31)*acd75(18)
      acd75(106)=acd75(30)*acd75(16)
      acd75(107)=acd75(32)*acd75(20)
      acd75(108)=acd75(29)*acd75(14)
      acd75(101)=acd75(108)+acd75(107)+acd75(106)+acd75(105)+acd75(104)+acd75(1&
      &02)+acd75(103)+acd75(101)
      acd75(101)=acd75(4)*acd75(101)
      acd75(102)=-acd75(41)*acd75(94)
      acd75(103)=acd75(36)*acd75(37)
      acd75(104)=acd75(49)*acd75(93)
      acd75(105)=acd75(23)*acd75(92)
      acd75(106)=acd75(9)*acd75(45)
      acd75(107)=acd75(21)*acd75(91)
      acd75(108)=acd75(15)*acd75(86)
      acd75(102)=acd75(108)+acd75(107)+acd75(106)+acd75(105)+acd75(103)+acd75(1&
      &04)+acd75(102)
      acd75(102)=acd75(32)*acd75(102)
      acd75(103)=-acd75(41)*acd75(96)
      acd75(104)=acd75(36)*acd75(35)
      acd75(105)=acd75(67)*acd75(93)
      acd75(106)=acd75(34)*acd75(92)
      acd75(107)=acd75(27)*acd75(45)
      acd75(108)=acd75(33)*acd75(91)
      acd75(109)=acd75(30)*acd75(86)
      acd75(103)=acd75(109)+acd75(108)+acd75(107)+acd75(106)+acd75(104)+acd75(1&
      &05)+acd75(103)
      acd75(103)=acd75(19)*acd75(103)
      acd75(104)=acd75(40)*acd75(94)
      acd75(105)=acd75(23)*acd75(90)
      acd75(106)=acd75(9)*acd75(44)
      acd75(107)=acd75(21)*acd75(89)
      acd75(104)=acd75(107)+acd75(105)+acd75(106)+acd75(104)
      acd75(104)=acd75(31)*acd75(104)
      acd75(105)=acd75(40)*acd75(96)
      acd75(106)=acd75(34)*acd75(90)
      acd75(107)=acd75(27)*acd75(44)
      acd75(108)=acd75(33)*acd75(89)
      acd75(105)=acd75(108)+acd75(106)+acd75(107)+acd75(105)
      acd75(105)=acd75(17)*acd75(105)
      acd75(94)=acd75(39)*acd75(94)
      acd75(106)=acd75(23)*acd75(88)
      acd75(107)=acd75(9)*acd75(43)
      acd75(108)=acd75(21)*acd75(87)
      acd75(94)=acd75(108)+acd75(106)+acd75(107)+acd75(94)
      acd75(94)=acd75(30)*acd75(94)
      acd75(96)=acd75(39)*acd75(96)
      acd75(106)=acd75(34)*acd75(88)
      acd75(107)=acd75(27)*acd75(43)
      acd75(108)=acd75(33)*acd75(87)
      acd75(96)=acd75(108)+acd75(106)+acd75(107)+acd75(96)
      acd75(96)=acd75(15)*acd75(96)
      acd75(106)=acd75(1)*acd75(2)
      brack=acd75(94)+acd75(95)+acd75(96)+acd75(97)+acd75(98)+acd75(99)+acd75(1&
      &00)+acd75(101)+acd75(102)+acd75(103)+acd75(104)+acd75(105)+2.0_ki*acd75(&
      &106)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(123) :: acd75
      complex(ki) :: brack
      acd75(1)=d(iv1,iv2)
      acd75(2)=k2(iv3)
      acd75(3)=abb75(97)
      acd75(4)=l6(iv3)
      acd75(5)=abb75(96)
      acd75(6)=k7(iv3)
      acd75(7)=e7(iv3)
      acd75(8)=abb75(87)
      acd75(9)=spvak1k3(iv3)
      acd75(10)=abb75(33)
      acd75(11)=spvae7k2(iv3)
      acd75(12)=abb75(48)
      acd75(13)=spval6e7(iv3)
      acd75(14)=abb75(53)
      acd75(15)=d(iv1,iv3)
      acd75(16)=k2(iv2)
      acd75(17)=l6(iv2)
      acd75(18)=k7(iv2)
      acd75(19)=e7(iv2)
      acd75(20)=spvak1k3(iv2)
      acd75(21)=spvae7k2(iv2)
      acd75(22)=spval6e7(iv2)
      acd75(23)=d(iv2,iv3)
      acd75(24)=k2(iv1)
      acd75(25)=l6(iv1)
      acd75(26)=k7(iv1)
      acd75(27)=e7(iv1)
      acd75(28)=spvak1k3(iv1)
      acd75(29)=spvae7k2(iv1)
      acd75(30)=spval6e7(iv1)
      acd75(31)=spvak4k3(iv3)
      acd75(32)=abb75(81)
      acd75(33)=spvak4k3(iv2)
      acd75(34)=abb75(89)
      acd75(35)=abb75(14)
      acd75(36)=abb75(10)
      acd75(37)=abb75(12)
      acd75(38)=spvak1k2(iv3)
      acd75(39)=abb75(55)
      acd75(40)=spvak1l5(iv3)
      acd75(41)=abb75(118)
      acd75(42)=spvak1l6(iv3)
      acd75(43)=abb75(95)
      acd75(44)=spvak1k7(iv3)
      acd75(45)=abb75(91)
      acd75(46)=spvak1e7(iv3)
      acd75(47)=abb75(63)
      acd75(48)=spvak1k2(iv2)
      acd75(49)=spvak1l5(iv2)
      acd75(50)=spvak1l6(iv2)
      acd75(51)=spvak1k7(iv2)
      acd75(52)=spvak1e7(iv2)
      acd75(53)=spvak4k3(iv1)
      acd75(54)=spvak1k2(iv1)
      acd75(55)=spvak1l5(iv1)
      acd75(56)=spvak1l6(iv1)
      acd75(57)=spvak1k7(iv1)
      acd75(58)=spvak1e7(iv1)
      acd75(59)=abb75(49)
      acd75(60)=abb75(115)
      acd75(61)=abb75(42)
      acd75(62)=abb75(112)
      acd75(63)=abb75(45)
      acd75(64)=abb75(125)
      acd75(65)=abb75(17)
      acd75(66)=abb75(124)
      acd75(67)=spvak2l5(iv3)
      acd75(68)=abb75(73)
      acd75(69)=spvak2l6(iv3)
      acd75(70)=abb75(62)
      acd75(71)=spvak2k7(iv3)
      acd75(72)=abb75(40)
      acd75(73)=spval6l5(iv3)
      acd75(74)=abb75(126)
      acd75(75)=spvak7l5(iv3)
      acd75(76)=abb75(127)
      acd75(77)=spvak2e7(iv3)
      acd75(78)=abb75(25)
      acd75(79)=spvae7l5(iv3)
      acd75(80)=abb75(37)
      acd75(81)=spvak2l5(iv2)
      acd75(82)=spvak2l6(iv2)
      acd75(83)=spvak2k7(iv2)
      acd75(84)=spval6l5(iv2)
      acd75(85)=spvak7l5(iv2)
      acd75(86)=spvak2e7(iv2)
      acd75(87)=spvae7l5(iv2)
      acd75(88)=spval6k2(iv3)
      acd75(89)=spvak7k2(iv3)
      acd75(90)=spval6k2(iv2)
      acd75(91)=spvak7k2(iv2)
      acd75(92)=spvak2l5(iv1)
      acd75(93)=spvak2l6(iv1)
      acd75(94)=spvak2k7(iv1)
      acd75(95)=spval6l5(iv1)
      acd75(96)=spvak7l5(iv1)
      acd75(97)=spvak2e7(iv1)
      acd75(98)=spvae7l5(iv1)
      acd75(99)=spval6k2(iv1)
      acd75(100)=spvak7k2(iv1)
      acd75(101)=acd75(80)*acd75(79)
      acd75(102)=acd75(78)*acd75(77)
      acd75(103)=acd75(72)*acd75(71)
      acd75(104)=acd75(70)*acd75(69)
      acd75(105)=acd75(68)*acd75(67)
      acd75(106)=acd75(13)*acd75(65)
      acd75(107)=acd75(11)*acd75(63)
      acd75(108)=acd75(7)*acd75(61)
      acd75(109)=acd75(76)*acd75(75)
      acd75(110)=acd75(74)*acd75(73)
      acd75(111)=acd75(4)+acd75(6)
      acd75(112)=acd75(111)*acd75(59)
      acd75(113)=acd75(2)*acd75(39)
      acd75(101)=acd75(109)-acd75(110)-acd75(112)+acd75(113)+acd75(105)+acd75(1&
      &06)+acd75(107)+acd75(108)+acd75(101)+acd75(102)+acd75(103)+acd75(104)
      acd75(102)=acd75(48)*acd75(101)
      acd75(103)=acd75(80)*acd75(87)
      acd75(104)=acd75(78)*acd75(86)
      acd75(105)=acd75(72)*acd75(83)
      acd75(106)=acd75(70)*acd75(82)
      acd75(107)=acd75(68)*acd75(81)
      acd75(108)=acd75(22)*acd75(65)
      acd75(109)=acd75(21)*acd75(63)
      acd75(110)=acd75(19)*acd75(61)
      acd75(112)=acd75(76)*acd75(85)
      acd75(113)=acd75(74)*acd75(84)
      acd75(114)=acd75(17)+acd75(18)
      acd75(115)=acd75(114)*acd75(59)
      acd75(116)=acd75(16)*acd75(39)
      acd75(103)=acd75(112)-acd75(113)-acd75(115)+acd75(116)+acd75(107)+acd75(1&
      &08)+acd75(109)+acd75(110)+acd75(103)+acd75(104)+acd75(105)+acd75(106)
      acd75(104)=acd75(38)*acd75(103)
      acd75(105)=acd75(47)*acd75(46)
      acd75(106)=acd75(45)*acd75(44)
      acd75(107)=acd75(43)*acd75(42)
      acd75(108)=acd75(13)*acd75(37)
      acd75(109)=acd75(11)*acd75(36)
      acd75(110)=acd75(7)*acd75(35)
      acd75(112)=acd75(111)*acd75(34)
      acd75(113)=acd75(40)*acd75(41)
      acd75(105)=acd75(109)+acd75(110)+acd75(112)+acd75(113)+acd75(105)+acd75(1&
      &06)+acd75(107)+acd75(108)
      acd75(106)=acd75(16)*acd75(105)
      acd75(107)=acd75(47)*acd75(52)
      acd75(108)=acd75(45)*acd75(51)
      acd75(109)=acd75(43)*acd75(50)
      acd75(110)=acd75(22)*acd75(37)
      acd75(112)=acd75(21)*acd75(36)
      acd75(113)=acd75(19)*acd75(35)
      acd75(115)=acd75(114)*acd75(34)
      acd75(116)=acd75(49)*acd75(41)
      acd75(107)=acd75(112)+acd75(113)+acd75(115)+acd75(116)+acd75(107)+acd75(1&
      &08)+acd75(109)+acd75(110)
      acd75(108)=2.0_ki*acd75(32)
      acd75(109)=acd75(16)*acd75(108)
      acd75(109)=acd75(109)+acd75(107)
      acd75(109)=acd75(2)*acd75(109)
      acd75(110)=acd75(13)*acd75(66)
      acd75(112)=acd75(11)*acd75(64)
      acd75(113)=acd75(7)*acd75(62)
      acd75(115)=acd75(76)*acd75(89)
      acd75(116)=acd75(74)*acd75(88)
      acd75(117)=acd75(111)*acd75(60)
      acd75(110)=acd75(110)+acd75(112)+acd75(113)-acd75(115)+acd75(116)-acd75(1&
      &17)
      acd75(112)=acd75(49)*acd75(110)
      acd75(113)=acd75(22)*acd75(66)
      acd75(115)=acd75(21)*acd75(64)
      acd75(116)=acd75(19)*acd75(62)
      acd75(117)=acd75(76)*acd75(91)
      acd75(118)=acd75(74)*acd75(90)
      acd75(119)=acd75(114)*acd75(60)
      acd75(113)=acd75(113)+acd75(115)+acd75(116)-acd75(117)+acd75(118)-acd75(1&
      &19)
      acd75(115)=acd75(40)*acd75(113)
      acd75(102)=acd75(104)+acd75(102)+acd75(109)+acd75(106)+acd75(112)+acd75(1&
      &15)
      acd75(102)=acd75(53)*acd75(102)
      acd75(101)=acd75(54)*acd75(101)
      acd75(104)=acd75(80)*acd75(98)
      acd75(106)=acd75(78)*acd75(97)
      acd75(109)=acd75(72)*acd75(94)
      acd75(112)=acd75(70)*acd75(93)
      acd75(115)=acd75(68)*acd75(92)
      acd75(116)=acd75(30)*acd75(65)
      acd75(117)=acd75(29)*acd75(63)
      acd75(118)=acd75(27)*acd75(61)
      acd75(119)=acd75(76)*acd75(96)
      acd75(120)=acd75(74)*acd75(95)
      acd75(121)=acd75(25)+acd75(26)
      acd75(122)=acd75(121)*acd75(59)
      acd75(123)=acd75(24)*acd75(39)
      acd75(104)=acd75(119)-acd75(120)-acd75(122)+acd75(123)+acd75(115)+acd75(1&
      &16)+acd75(117)+acd75(118)+acd75(104)+acd75(106)+acd75(109)+acd75(112)
      acd75(106)=acd75(38)*acd75(104)
      acd75(109)=acd75(47)*acd75(58)
      acd75(112)=acd75(45)*acd75(57)
      acd75(115)=acd75(43)*acd75(56)
      acd75(116)=acd75(30)*acd75(37)
      acd75(117)=acd75(29)*acd75(36)
      acd75(118)=acd75(27)*acd75(35)
      acd75(119)=acd75(55)*acd75(41)
      acd75(120)=acd75(121)*acd75(34)
      acd75(108)=acd75(108)*acd75(24)
      acd75(108)=acd75(108)+acd75(117)+acd75(118)+acd75(119)+acd75(120)+acd75(1&
      &09)+acd75(112)+acd75(115)+acd75(116)
      acd75(109)=acd75(2)*acd75(108)
      acd75(105)=acd75(24)*acd75(105)
      acd75(110)=acd75(55)*acd75(110)
      acd75(112)=acd75(30)*acd75(66)
      acd75(115)=acd75(29)*acd75(64)
      acd75(116)=acd75(27)*acd75(62)
      acd75(117)=acd75(76)*acd75(100)
      acd75(118)=acd75(74)*acd75(99)
      acd75(119)=acd75(121)*acd75(60)
      acd75(112)=acd75(112)+acd75(115)+acd75(116)-acd75(117)+acd75(118)-acd75(1&
      &19)
      acd75(115)=acd75(40)*acd75(112)
      acd75(101)=acd75(106)+acd75(101)+acd75(109)+acd75(105)+acd75(110)+acd75(1&
      &15)
      acd75(101)=acd75(33)*acd75(101)
      acd75(103)=acd75(54)*acd75(103)
      acd75(104)=acd75(48)*acd75(104)
      acd75(105)=acd75(16)*acd75(108)
      acd75(106)=acd75(24)*acd75(107)
      acd75(107)=acd75(55)*acd75(113)
      acd75(108)=acd75(49)*acd75(112)
      acd75(103)=acd75(104)+acd75(103)+acd75(105)+acd75(106)+acd75(107)+acd75(1&
      &08)
      acd75(103)=acd75(31)*acd75(103)
      acd75(104)=acd75(5)*acd75(121)
      acd75(105)=acd75(10)*acd75(28)
      acd75(106)=acd75(30)*acd75(14)
      acd75(107)=acd75(29)*acd75(12)
      acd75(108)=acd75(27)*acd75(8)
      acd75(104)=acd75(108)+acd75(107)+acd75(105)+acd75(106)+acd75(104)
      acd75(104)=acd75(23)*acd75(104)
      acd75(105)=acd75(5)*acd75(114)
      acd75(106)=acd75(10)*acd75(20)
      acd75(107)=acd75(22)*acd75(14)
      acd75(108)=acd75(21)*acd75(12)
      acd75(109)=acd75(19)*acd75(8)
      acd75(105)=acd75(109)+acd75(108)+acd75(106)+acd75(107)+acd75(105)
      acd75(105)=acd75(15)*acd75(105)
      acd75(106)=acd75(5)*acd75(111)
      acd75(107)=acd75(10)*acd75(9)
      acd75(108)=acd75(13)*acd75(14)
      acd75(109)=acd75(11)*acd75(12)
      acd75(110)=acd75(7)*acd75(8)
      acd75(106)=acd75(110)+acd75(109)+acd75(107)+acd75(108)+acd75(106)
      acd75(106)=acd75(1)*acd75(106)
      acd75(107)=acd75(24)*acd75(23)
      acd75(108)=acd75(16)*acd75(15)
      acd75(109)=acd75(2)*acd75(1)
      acd75(107)=acd75(109)+acd75(108)+acd75(107)
      acd75(107)=acd75(3)*acd75(107)
      acd75(104)=acd75(106)+acd75(104)+acd75(105)+acd75(107)
      brack=acd75(101)+acd75(102)+acd75(103)+2.0_ki*acd75(104)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h1
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
!---#[ subroutine reconstruct_d75:
   subroutine     reconstruct_d75(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_75:
      coeffs%coeffs_75%c0 = derivative(czip)
      coeffs%coeffs_75%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_75%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_75%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_75%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_75%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_75%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_75%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_75%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_75%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_75%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_75%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_75%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_75%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_75%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_75%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_75%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_75%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_75%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_75%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_75%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_75%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_75%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_75%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_75%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_75%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_75%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_75%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_75%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_75%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_75%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_75%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_75%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_75%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_75%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_75:
   end subroutine reconstruct_d75
!---#] subroutine reconstruct_d75:
end module     p0_dbaru_epnebbbarg_d75h1l1d
