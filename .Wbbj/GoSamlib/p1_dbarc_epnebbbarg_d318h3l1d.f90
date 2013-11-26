module     p1_dbarc_epnebbbarg_d318h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d318h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d318
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd318h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd318
      complex(ki) :: brack
      acd318(1)=abb318(17)
      brack=acd318(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd318h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd318
      complex(ki) :: brack
      acd318(1)=k2(iv1)
      acd318(2)=abb318(12)
      acd318(3)=l5(iv1)
      acd318(4)=abb318(23)
      acd318(5)=l6(iv1)
      acd318(6)=abb318(179)
      acd318(7)=k7(iv1)
      acd318(8)=abb318(116)
      acd318(9)=e7(iv1)
      acd318(10)=abb318(16)
      acd318(11)=spvak1k2(iv1)
      acd318(12)=abb318(35)
      acd318(13)=spvak1k3(iv1)
      acd318(14)=abb318(26)
      acd318(15)=spvak1l6(iv1)
      acd318(16)=abb318(13)
      acd318(17)=spvak2k3(iv1)
      acd318(18)=abb318(30)
      acd318(19)=spvak2l5(iv1)
      acd318(20)=abb318(15)
      acd318(21)=spvak2l6(iv1)
      acd318(22)=abb318(84)
      acd318(23)=spvak2k7(iv1)
      acd318(24)=abb318(169)
      acd318(25)=spvak4k2(iv1)
      acd318(26)=abb318(18)
      acd318(27)=spvak4l6(iv1)
      acd318(28)=abb318(128)
      acd318(29)=spval5l6(iv1)
      acd318(30)=abb318(106)
      acd318(31)=spvak7l6(iv1)
      acd318(32)=abb318(110)
      acd318(33)=spvak2e7(iv1)
      acd318(34)=abb318(11)
      acd318(35)=spvae7l5(iv1)
      acd318(36)=abb318(19)
      acd318(37)=spvae7l6(iv1)
      acd318(38)=abb318(71)
      acd318(39)=-acd318(2)*acd318(1)
      acd318(40)=-acd318(4)*acd318(3)
      acd318(41)=-acd318(6)*acd318(5)
      acd318(42)=-acd318(8)*acd318(7)
      acd318(43)=-acd318(10)*acd318(9)
      acd318(44)=-acd318(12)*acd318(11)
      acd318(45)=-acd318(14)*acd318(13)
      acd318(46)=-acd318(16)*acd318(15)
      acd318(47)=-acd318(18)*acd318(17)
      acd318(48)=-acd318(20)*acd318(19)
      acd318(49)=-acd318(22)*acd318(21)
      acd318(50)=-acd318(24)*acd318(23)
      acd318(51)=-acd318(26)*acd318(25)
      acd318(52)=-acd318(28)*acd318(27)
      acd318(53)=-acd318(30)*acd318(29)
      acd318(54)=-acd318(32)*acd318(31)
      acd318(55)=-acd318(34)*acd318(33)
      acd318(56)=-acd318(36)*acd318(35)
      acd318(57)=-acd318(38)*acd318(37)
      brack=acd318(39)+acd318(40)+acd318(41)+acd318(42)+acd318(43)+acd318(44)+a&
      &cd318(45)+acd318(46)+acd318(47)+acd318(48)+acd318(49)+acd318(50)+acd318(&
      &51)+acd318(52)+acd318(53)+acd318(54)+acd318(55)+acd318(56)+acd318(57)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd318h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(118) :: acd318
      complex(ki) :: brack
      acd318(1)=d(iv1,iv2)
      acd318(2)=abb318(37)
      acd318(3)=k2(iv1)
      acd318(4)=k2(iv2)
      acd318(5)=abb318(74)
      acd318(6)=l5(iv2)
      acd318(7)=abb318(59)
      acd318(8)=k7(iv2)
      acd318(9)=e7(iv2)
      acd318(10)=abb318(28)
      acd318(11)=spvak1k2(iv2)
      acd318(12)=abb318(38)
      acd318(13)=spvak1k3(iv2)
      acd318(14)=abb318(51)
      acd318(15)=spvak1l6(iv2)
      acd318(16)=abb318(60)
      acd318(17)=spvak2k3(iv2)
      acd318(18)=abb318(41)
      acd318(19)=spvak4k2(iv2)
      acd318(20)=abb318(87)
      acd318(21)=spvak2e7(iv2)
      acd318(22)=abb318(55)
      acd318(23)=spvae7l5(iv2)
      acd318(24)=abb318(45)
      acd318(25)=spvae7l6(iv2)
      acd318(26)=abb318(96)
      acd318(27)=l5(iv1)
      acd318(28)=k7(iv1)
      acd318(29)=e7(iv1)
      acd318(30)=spvak1k2(iv1)
      acd318(31)=spvak1k3(iv1)
      acd318(32)=spvak1l6(iv1)
      acd318(33)=spvak2k3(iv1)
      acd318(34)=spvak4k2(iv1)
      acd318(35)=spvak2e7(iv1)
      acd318(36)=spvae7l5(iv1)
      acd318(37)=spvae7l6(iv1)
      acd318(38)=abb318(183)
      acd318(39)=abb318(43)
      acd318(40)=abb318(47)
      acd318(41)=abb318(54)
      acd318(42)=abb318(39)
      acd318(43)=abb318(153)
      acd318(44)=abb318(132)
      acd318(45)=abb318(27)
      acd318(46)=abb318(92)
      acd318(47)=l6(iv1)
      acd318(48)=l6(iv2)
      acd318(49)=abb318(33)
      acd318(50)=abb318(46)
      acd318(51)=abb318(22)
      acd318(52)=abb318(24)
      acd318(53)=abb318(91)
      acd318(54)=spvak1l5(iv2)
      acd318(55)=abb318(34)
      acd318(56)=spvak2l5(iv2)
      acd318(57)=abb318(29)
      acd318(58)=spvak2l6(iv2)
      acd318(59)=abb318(107)
      acd318(60)=spvak2k7(iv2)
      acd318(61)=abb318(171)
      acd318(62)=spvak4l5(iv2)
      acd318(63)=abb318(139)
      acd318(64)=spvak4l6(iv2)
      acd318(65)=abb318(32)
      acd318(66)=spval5l6(iv2)
      acd318(67)=abb318(109)
      acd318(68)=spvak7l5(iv2)
      acd318(69)=abb318(14)
      acd318(70)=spvak7l6(iv2)
      acd318(71)=abb318(104)
      acd318(72)=spvak1l5(iv1)
      acd318(73)=spvak2l5(iv1)
      acd318(74)=spvak2l6(iv1)
      acd318(75)=spvak2k7(iv1)
      acd318(76)=spvak4l5(iv1)
      acd318(77)=spvak4l6(iv1)
      acd318(78)=spval5l6(iv1)
      acd318(79)=spvak7l5(iv1)
      acd318(80)=spvak7l6(iv1)
      acd318(81)=abb318(31)
      acd318(82)=abb318(48)
      acd318(83)=abb318(20)
      acd318(84)=abb318(44)
      acd318(85)=abb318(58)
      acd318(86)=abb318(56)
      acd318(87)=abb318(49)
      acd318(88)=abb318(42)
      acd318(89)=abb318(62)
      acd318(90)=abb318(61)
      acd318(91)=abb318(72)
      acd318(92)=abb318(67)
      acd318(93)=abb318(66)
      acd318(94)=abb318(65)
      acd318(95)=abb318(57)
      acd318(96)=abb318(161)
      acd318(97)=abb318(90)
      acd318(98)=abb318(36)
      acd318(99)=abb318(176)
      acd318(100)=abb318(119)
      acd318(101)=abb318(105)
      acd318(102)=acd318(6)-acd318(48)
      acd318(102)=acd318(38)*acd318(102)
      acd318(103)=acd318(69)*acd318(68)
      acd318(104)=acd318(65)*acd318(64)
      acd318(105)=acd318(63)*acd318(62)
      acd318(106)=acd318(59)*acd318(58)
      acd318(107)=acd318(55)*acd318(54)
      acd318(108)=acd318(70)*acd318(71)
      acd318(109)=acd318(66)*acd318(67)
      acd318(110)=acd318(60)*acd318(61)
      acd318(111)=acd318(56)*acd318(57)
      acd318(112)=acd318(17)*acd318(52)
      acd318(113)=acd318(15)*acd318(51)
      acd318(114)=acd318(19)*acd318(53)
      acd318(115)=acd318(13)*acd318(50)
      acd318(116)=acd318(11)*acd318(49)
      acd318(117)=acd318(4)*acd318(10)
      acd318(102)=acd318(117)+acd318(116)+acd318(115)+acd318(114)+acd318(113)+a&
      &cd318(112)+acd318(111)+acd318(110)+acd318(109)+acd318(108)+acd318(107)+a&
      &cd318(106)+acd318(105)+acd318(103)+acd318(104)+acd318(102)
      acd318(102)=acd318(29)*acd318(102)
      acd318(103)=acd318(27)-acd318(47)
      acd318(103)=acd318(38)*acd318(103)
      acd318(104)=acd318(69)*acd318(79)
      acd318(105)=acd318(65)*acd318(77)
      acd318(106)=acd318(63)*acd318(76)
      acd318(107)=acd318(59)*acd318(74)
      acd318(108)=acd318(55)*acd318(72)
      acd318(109)=acd318(80)*acd318(71)
      acd318(110)=acd318(78)*acd318(67)
      acd318(111)=acd318(75)*acd318(61)
      acd318(112)=acd318(73)*acd318(57)
      acd318(113)=acd318(33)*acd318(52)
      acd318(114)=acd318(32)*acd318(51)
      acd318(115)=acd318(34)*acd318(53)
      acd318(116)=acd318(31)*acd318(50)
      acd318(117)=acd318(30)*acd318(49)
      acd318(118)=acd318(3)*acd318(10)
      acd318(103)=acd318(118)+acd318(117)+acd318(116)+acd318(115)+acd318(114)+a&
      &cd318(113)+acd318(112)+acd318(111)+acd318(110)+acd318(109)+acd318(108)+a&
      &cd318(107)+acd318(106)+acd318(104)+acd318(105)+acd318(103)
      acd318(103)=acd318(9)*acd318(103)
      acd318(104)=acd318(6)+acd318(8)
      acd318(104)=acd318(7)*acd318(104)
      acd318(105)=acd318(17)*acd318(18)
      acd318(106)=acd318(15)*acd318(16)
      acd318(107)=acd318(25)*acd318(26)
      acd318(108)=acd318(23)*acd318(24)
      acd318(109)=acd318(21)*acd318(22)
      acd318(110)=acd318(19)*acd318(20)
      acd318(111)=acd318(13)*acd318(14)
      acd318(112)=acd318(11)*acd318(12)
      acd318(113)=acd318(4)*acd318(5)
      acd318(104)=2.0_ki*acd318(113)+acd318(112)+acd318(111)+acd318(110)+acd318&
      &(109)+acd318(108)+acd318(107)+acd318(105)+acd318(106)+acd318(104)
      acd318(104)=acd318(3)*acd318(104)
      acd318(105)=acd318(27)+acd318(28)
      acd318(106)=acd318(7)*acd318(105)
      acd318(107)=acd318(33)*acd318(18)
      acd318(108)=acd318(32)*acd318(16)
      acd318(109)=acd318(37)*acd318(26)
      acd318(110)=acd318(36)*acd318(24)
      acd318(111)=acd318(35)*acd318(22)
      acd318(112)=acd318(34)*acd318(20)
      acd318(113)=acd318(31)*acd318(14)
      acd318(114)=acd318(30)*acd318(12)
      acd318(106)=acd318(114)+acd318(113)+acd318(112)+acd318(111)+acd318(110)+a&
      &cd318(109)+acd318(107)+acd318(108)+acd318(106)
      acd318(106)=acd318(4)*acd318(106)
      acd318(107)=acd318(80)*acd318(101)
      acd318(108)=acd318(78)*acd318(100)
      acd318(109)=acd318(75)*acd318(99)
      acd318(110)=acd318(73)*acd318(98)
      acd318(111)=acd318(37)*acd318(97)
      acd318(112)=acd318(36)*acd318(96)
      acd318(113)=acd318(35)*acd318(95)
      acd318(114)=acd318(27)*acd318(43)
      acd318(107)=acd318(114)+acd318(113)+acd318(112)+acd318(111)+acd318(110)+a&
      &cd318(109)+acd318(107)+acd318(108)
      acd318(107)=acd318(19)*acd318(107)
      acd318(108)=acd318(80)*acd318(94)
      acd318(109)=acd318(78)*acd318(93)
      acd318(110)=acd318(75)*acd318(92)
      acd318(111)=acd318(73)*acd318(91)
      acd318(112)=acd318(37)*acd318(90)
      acd318(113)=acd318(36)*acd318(89)
      acd318(114)=acd318(35)*acd318(88)
      acd318(115)=acd318(27)*acd318(40)
      acd318(108)=acd318(115)+acd318(114)+acd318(113)+acd318(112)+acd318(111)+a&
      &cd318(110)+acd318(108)+acd318(109)
      acd318(108)=acd318(13)*acd318(108)
      acd318(109)=acd318(80)*acd318(87)
      acd318(110)=acd318(78)*acd318(86)
      acd318(111)=acd318(75)*acd318(85)
      acd318(112)=acd318(73)*acd318(84)
      acd318(113)=acd318(37)*acd318(83)
      acd318(114)=acd318(36)*acd318(82)
      acd318(115)=acd318(35)*acd318(81)
      acd318(116)=acd318(27)*acd318(39)
      acd318(109)=acd318(116)+acd318(115)+acd318(114)+acd318(113)+acd318(112)+a&
      &cd318(111)+acd318(109)+acd318(110)
      acd318(109)=acd318(11)*acd318(109)
      acd318(110)=acd318(70)*acd318(101)
      acd318(111)=acd318(66)*acd318(100)
      acd318(112)=acd318(60)*acd318(99)
      acd318(113)=acd318(56)*acd318(98)
      acd318(114)=acd318(25)*acd318(97)
      acd318(115)=acd318(23)*acd318(96)
      acd318(116)=acd318(21)*acd318(95)
      acd318(110)=acd318(116)+acd318(115)+acd318(114)+acd318(113)+acd318(112)+a&
      &cd318(110)+acd318(111)
      acd318(110)=acd318(34)*acd318(110)
      acd318(111)=acd318(70)*acd318(94)
      acd318(112)=acd318(66)*acd318(93)
      acd318(113)=acd318(60)*acd318(92)
      acd318(114)=acd318(56)*acd318(91)
      acd318(115)=acd318(25)*acd318(90)
      acd318(116)=acd318(23)*acd318(89)
      acd318(117)=acd318(21)*acd318(88)
      acd318(111)=acd318(117)+acd318(116)+acd318(115)+acd318(114)+acd318(113)+a&
      &cd318(111)+acd318(112)
      acd318(111)=acd318(31)*acd318(111)
      acd318(112)=acd318(70)*acd318(87)
      acd318(113)=acd318(66)*acd318(86)
      acd318(114)=acd318(60)*acd318(85)
      acd318(115)=acd318(56)*acd318(84)
      acd318(116)=acd318(25)*acd318(83)
      acd318(117)=acd318(23)*acd318(82)
      acd318(118)=acd318(21)*acd318(81)
      acd318(112)=acd318(118)+acd318(117)+acd318(116)+acd318(115)+acd318(114)+a&
      &cd318(112)+acd318(113)
      acd318(112)=acd318(30)*acd318(112)
      acd318(113)=acd318(17)*acd318(42)
      acd318(114)=acd318(15)*acd318(41)
      acd318(115)=acd318(25)*acd318(46)
      acd318(116)=acd318(23)*acd318(45)
      acd318(117)=acd318(21)*acd318(44)
      acd318(113)=-acd318(117)-acd318(113)+acd318(114)+acd318(115)-acd318(116)
      acd318(105)=-acd318(113)*acd318(105)
      acd318(113)=acd318(33)*acd318(42)
      acd318(114)=acd318(32)*acd318(41)
      acd318(115)=acd318(37)*acd318(46)
      acd318(116)=acd318(36)*acd318(45)
      acd318(117)=acd318(35)*acd318(44)
      acd318(113)=-acd318(117)-acd318(113)+acd318(114)+acd318(115)-acd318(116)
      acd318(114)=-acd318(8)*acd318(113)
      acd318(115)=acd318(34)*acd318(43)
      acd318(116)=acd318(31)*acd318(40)
      acd318(117)=acd318(30)*acd318(39)
      acd318(113)=acd318(117)+acd318(116)+acd318(115)-acd318(113)
      acd318(113)=acd318(6)*acd318(113)
      acd318(115)=acd318(1)*acd318(2)
      brack=acd318(102)+acd318(103)+acd318(104)+acd318(105)+acd318(106)+acd318(&
      &107)+acd318(108)+acd318(109)+acd318(110)+acd318(111)+acd318(112)+acd318(&
      &113)+acd318(114)+2.0_ki*acd318(115)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd318h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd318
      complex(ki) :: brack
      acd318(1)=d(iv1,iv2)
      acd318(2)=k2(iv3)
      acd318(3)=abb318(50)
      acd318(4)=e7(iv3)
      acd318(5)=abb318(40)
      acd318(6)=spvak1l6(iv3)
      acd318(7)=abb318(25)
      acd318(8)=spvak2k3(iv3)
      acd318(9)=abb318(52)
      acd318(10)=spvak2e7(iv3)
      acd318(11)=abb318(122)
      acd318(12)=spvae7l5(iv3)
      acd318(13)=abb318(21)
      acd318(14)=spvae7l6(iv3)
      acd318(15)=abb318(88)
      acd318(16)=d(iv1,iv3)
      acd318(17)=k2(iv2)
      acd318(18)=e7(iv2)
      acd318(19)=spvak1l6(iv2)
      acd318(20)=spvak2k3(iv2)
      acd318(21)=spvak2e7(iv2)
      acd318(22)=spvae7l5(iv2)
      acd318(23)=spvae7l6(iv2)
      acd318(24)=d(iv2,iv3)
      acd318(25)=k2(iv1)
      acd318(26)=e7(iv1)
      acd318(27)=spvak1l6(iv1)
      acd318(28)=spvak2k3(iv1)
      acd318(29)=spvak2e7(iv1)
      acd318(30)=spvae7l5(iv1)
      acd318(31)=spvae7l6(iv1)
      acd318(32)=spvak1k2(iv2)
      acd318(33)=spvak2l5(iv3)
      acd318(34)=abb318(64)
      acd318(35)=spvak2l6(iv3)
      acd318(36)=abb318(63)
      acd318(37)=spvak1k2(iv3)
      acd318(38)=spvak2l5(iv2)
      acd318(39)=spvak2l6(iv2)
      acd318(40)=spvak1k3(iv3)
      acd318(41)=abb318(73)
      acd318(42)=spvak4k2(iv3)
      acd318(43)=abb318(53)
      acd318(44)=spvak1k3(iv2)
      acd318(45)=spvak4k2(iv2)
      acd318(46)=abb318(70)
      acd318(47)=abb318(120)
      acd318(48)=spvak1k2(iv1)
      acd318(49)=spvak2l5(iv1)
      acd318(50)=spvak2l6(iv1)
      acd318(51)=spvak1k3(iv1)
      acd318(52)=spvak4k2(iv1)
      acd318(53)=-acd318(25)*acd318(3)
      acd318(54)=-acd318(27)*acd318(7)
      acd318(55)=-acd318(28)*acd318(9)
      acd318(56)=-acd318(29)*acd318(11)
      acd318(57)=-acd318(30)*acd318(13)
      acd318(58)=-acd318(31)*acd318(15)
      acd318(53)=acd318(58)+acd318(57)+acd318(56)+acd318(55)+acd318(54)+acd318(&
      &53)
      acd318(54)=2.0_ki*acd318(24)
      acd318(53)=acd318(54)*acd318(53)
      acd318(54)=-acd318(17)*acd318(3)
      acd318(55)=-acd318(19)*acd318(7)
      acd318(56)=-acd318(20)*acd318(9)
      acd318(57)=-acd318(21)*acd318(11)
      acd318(58)=-acd318(22)*acd318(13)
      acd318(59)=-acd318(23)*acd318(15)
      acd318(54)=acd318(59)+acd318(58)+acd318(57)+acd318(56)+acd318(55)+acd318(&
      &54)
      acd318(55)=2.0_ki*acd318(16)
      acd318(54)=acd318(55)*acd318(54)
      acd318(55)=-acd318(2)*acd318(3)
      acd318(56)=-acd318(6)*acd318(7)
      acd318(57)=-acd318(8)*acd318(9)
      acd318(58)=-acd318(10)*acd318(11)
      acd318(59)=-acd318(12)*acd318(13)
      acd318(60)=-acd318(14)*acd318(15)
      acd318(55)=acd318(60)+acd318(59)+acd318(58)+acd318(57)+acd318(56)+acd318(&
      &55)
      acd318(56)=2.0_ki*acd318(1)
      acd318(55)=acd318(56)*acd318(55)
      acd318(56)=acd318(33)*acd318(26)
      acd318(57)=acd318(49)*acd318(4)
      acd318(56)=acd318(56)+acd318(57)
      acd318(57)=-acd318(34)*acd318(56)
      acd318(58)=acd318(35)*acd318(26)
      acd318(59)=acd318(50)*acd318(4)
      acd318(58)=acd318(58)+acd318(59)
      acd318(59)=-acd318(36)*acd318(58)
      acd318(57)=acd318(59)+acd318(57)
      acd318(57)=acd318(32)*acd318(57)
      acd318(59)=acd318(38)*acd318(26)
      acd318(60)=acd318(49)*acd318(18)
      acd318(59)=acd318(59)+acd318(60)
      acd318(60)=-acd318(34)*acd318(59)
      acd318(61)=acd318(39)*acd318(26)
      acd318(62)=acd318(50)*acd318(18)
      acd318(61)=acd318(61)+acd318(62)
      acd318(62)=-acd318(36)*acd318(61)
      acd318(60)=acd318(62)+acd318(60)
      acd318(60)=acd318(37)*acd318(60)
      acd318(62)=-acd318(41)*acd318(59)
      acd318(63)=-acd318(46)*acd318(61)
      acd318(62)=acd318(63)+acd318(62)
      acd318(62)=acd318(40)*acd318(62)
      acd318(59)=-acd318(43)*acd318(59)
      acd318(61)=-acd318(47)*acd318(61)
      acd318(59)=acd318(61)+acd318(59)
      acd318(59)=acd318(42)*acd318(59)
      acd318(61)=-acd318(41)*acd318(56)
      acd318(63)=-acd318(46)*acd318(58)
      acd318(61)=acd318(63)+acd318(61)
      acd318(61)=acd318(44)*acd318(61)
      acd318(56)=-acd318(43)*acd318(56)
      acd318(58)=-acd318(47)*acd318(58)
      acd318(56)=acd318(58)+acd318(56)
      acd318(56)=acd318(45)*acd318(56)
      acd318(58)=acd318(33)*acd318(18)
      acd318(63)=acd318(38)*acd318(4)
      acd318(58)=acd318(58)+acd318(63)
      acd318(63)=-acd318(34)*acd318(58)
      acd318(64)=acd318(35)*acd318(18)
      acd318(65)=acd318(39)*acd318(4)
      acd318(64)=acd318(64)+acd318(65)
      acd318(65)=-acd318(36)*acd318(64)
      acd318(63)=acd318(65)+acd318(63)
      acd318(63)=acd318(48)*acd318(63)
      acd318(65)=-acd318(41)*acd318(58)
      acd318(66)=-acd318(46)*acd318(64)
      acd318(65)=acd318(65)+acd318(66)
      acd318(65)=acd318(51)*acd318(65)
      acd318(58)=-acd318(43)*acd318(58)
      acd318(64)=-acd318(47)*acd318(64)
      acd318(58)=acd318(58)+acd318(64)
      acd318(58)=acd318(52)*acd318(58)
      acd318(64)=-acd318(1)*acd318(4)
      acd318(66)=-acd318(16)*acd318(18)
      acd318(67)=-acd318(24)*acd318(26)
      acd318(64)=acd318(67)+acd318(64)+acd318(66)
      acd318(64)=acd318(5)*acd318(64)
      brack=acd318(53)+acd318(54)+acd318(55)+acd318(56)+acd318(57)+acd318(58)+a&
      &cd318(59)+acd318(60)+acd318(61)+acd318(62)+acd318(63)+2.0_ki*acd318(64)+&
      &acd318(65)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd318h3
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
!---#[ subroutine reconstruct_d318:
   subroutine     reconstruct_d318(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_318:
      coeffs%coeffs_318%c0 = derivative(czip)
      coeffs%coeffs_318%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_318%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_318%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_318%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_318%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_318%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_318%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_318%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_318%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_318%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_318%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_318%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_318%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_318%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_318%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_318%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_318%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_318%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_318%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_318%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_318%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_318%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_318%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_318%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_318%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_318%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_318%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_318%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_318%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_318%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_318%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_318%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_318%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_318%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_318:
   end subroutine reconstruct_d318
!---#] subroutine reconstruct_d318:
end module     p1_dbarc_epnebbbarg_d318h3l1d
