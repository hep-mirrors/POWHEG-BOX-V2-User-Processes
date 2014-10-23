module     p0_dbaru_epnebbbarg_d128h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d128h3l1d.f90
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
   public :: derivative , reconstruct_d128
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd128
      complex(ki) :: brack
      acd128(1)=dotproduct(k1,qshift)
      acd128(2)=dotproduct(qshift,spvak4k3)
      acd128(3)=abb128(39)
      acd128(4)=abb128(27)
      acd128(5)=dotproduct(k2,qshift)
      acd128(6)=abb128(76)
      acd128(7)=dotproduct(k3,qshift)
      acd128(8)=dotproduct(k4,qshift)
      acd128(9)=dotproduct(qshift,qshift)
      acd128(10)=abb128(30)
      acd128(11)=abb128(49)
      acd128(12)=dotproduct(qshift,spvak1l5)
      acd128(13)=abb128(21)
      acd128(14)=dotproduct(qshift,spvak1l6)
      acd128(15)=abb128(48)
      acd128(16)=dotproduct(qshift,spvak1k7)
      acd128(17)=abb128(43)
      acd128(18)=dotproduct(qshift,spvak2l5)
      acd128(19)=abb128(31)
      acd128(20)=dotproduct(qshift,spvak2l6)
      acd128(21)=abb128(57)
      acd128(22)=dotproduct(qshift,spvak2k7)
      acd128(23)=abb128(50)
      acd128(24)=dotproduct(qshift,spvak4k2)
      acd128(25)=abb128(16)
      acd128(26)=abb128(59)
      acd128(27)=abb128(35)
      acd128(28)=abb128(12)
      acd128(29)=abb128(26)
      acd128(30)=abb128(14)
      acd128(31)=abb128(29)
      acd128(32)=abb128(56)
      acd128(33)=abb128(42)
      acd128(34)=abb128(18)
      acd128(35)=abb128(28)
      acd128(36)=abb128(47)
      acd128(37)=abb128(64)
      acd128(38)=abb128(60)
      acd128(39)=dotproduct(qshift,spvak1k2)
      acd128(40)=abb128(32)
      acd128(41)=abb128(25)
      acd128(42)=abb128(19)
      acd128(43)=abb128(22)
      acd128(44)=abb128(20)
      acd128(45)=dotproduct(qshift,spvak3k2)
      acd128(46)=abb128(55)
      acd128(47)=abb128(34)
      acd128(48)=dotproduct(qshift,spvak1k3)
      acd128(49)=abb128(24)
      acd128(50)=abb128(17)
      acd128(51)=abb128(46)
      acd128(52)=abb128(45)
      acd128(53)=abb128(38)
      acd128(54)=abb128(23)
      acd128(55)=abb128(40)
      acd128(56)=abb128(37)
      acd128(57)=abb128(15)
      acd128(58)=abb128(13)
      acd128(59)=abb128(36)
      acd128(60)=acd128(16)*acd128(17)
      acd128(61)=acd128(14)*acd128(15)
      acd128(62)=acd128(12)*acd128(13)
      acd128(60)=-acd128(62)+acd128(60)+acd128(61)
      acd128(61)=acd128(7)+acd128(8)
      acd128(62)=-acd128(5)+acd128(61)
      acd128(62)=acd128(6)*acd128(62)
      acd128(63)=acd128(22)*acd128(23)
      acd128(64)=acd128(20)*acd128(21)
      acd128(65)=acd128(18)*acd128(19)
      acd128(66)=acd128(24)*acd128(25)
      acd128(67)=-acd128(9)*acd128(10)
      acd128(68)=acd128(2)*acd128(11)
      acd128(62)=acd128(68)+acd128(67)+acd128(66)+acd128(65)+acd128(64)+acd128(&
      &63)-acd128(26)+acd128(62)+acd128(60)
      acd128(62)=acd128(5)*acd128(62)
      acd128(63)=acd128(16)*acd128(30)
      acd128(64)=acd128(14)*acd128(29)
      acd128(65)=-acd128(12)*acd128(28)
      acd128(66)=-acd128(22)*acd128(33)
      acd128(67)=-acd128(20)*acd128(32)
      acd128(68)=-acd128(18)*acd128(31)
      acd128(69)=acd128(24)*acd128(34)
      acd128(63)=acd128(69)+acd128(68)+acd128(67)+acd128(66)+acd128(65)+acd128(&
      &64)+acd128(35)+acd128(63)
      acd128(63)=acd128(9)*acd128(63)
      acd128(64)=-acd128(22)*acd128(42)
      acd128(65)=-acd128(20)*acd128(41)
      acd128(66)=-acd128(18)*acd128(40)
      acd128(64)=acd128(66)+acd128(65)+acd128(64)+acd128(44)
      acd128(64)=acd128(39)*acd128(64)
      acd128(65)=acd128(34)*acd128(45)
      acd128(66)=acd128(1)*acd128(3)
      acd128(67)=acd128(16)*acd128(38)
      acd128(68)=acd128(14)*acd128(37)
      acd128(69)=acd128(12)*acd128(36)
      acd128(70)=acd128(24)*acd128(43)
      acd128(64)=acd128(70)+acd128(69)+acd128(68)+acd128(67)+acd128(66)-acd128(&
      &46)+acd128(65)+acd128(64)
      acd128(64)=acd128(2)*acd128(64)
      acd128(65)=-acd128(25)*acd128(61)
      acd128(66)=acd128(22)*acd128(54)
      acd128(67)=acd128(20)*acd128(51)
      acd128(68)=acd128(18)*acd128(47)
      acd128(65)=acd128(68)+acd128(67)+acd128(66)-acd128(57)+acd128(65)
      acd128(65)=acd128(24)*acd128(65)
      acd128(60)=-acd128(27)-acd128(60)
      acd128(60)=acd128(60)*acd128(61)
      acd128(61)=acd128(48)*acd128(55)
      acd128(66)=-acd128(39)*acd128(30)
      acd128(61)=acd128(66)-acd128(56)+acd128(61)
      acd128(61)=acd128(22)*acd128(61)
      acd128(66)=acd128(48)*acd128(52)
      acd128(67)=-acd128(39)*acd128(29)
      acd128(66)=acd128(67)-acd128(53)+acd128(66)
      acd128(66)=acd128(20)*acd128(66)
      acd128(67)=acd128(48)*acd128(49)
      acd128(68)=acd128(39)*acd128(28)
      acd128(67)=acd128(68)-acd128(50)+acd128(67)
      acd128(67)=acd128(18)*acd128(67)
      acd128(68)=-acd128(45)*acd128(58)
      acd128(69)=-acd128(1)*acd128(4)
      brack=acd128(59)+acd128(60)+acd128(61)+acd128(62)+acd128(63)+acd128(64)+a&
      &cd128(65)+acd128(66)+acd128(67)+acd128(68)+acd128(69)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd128
      complex(ki) :: brack
      acd128(1)=k1(iv1)
      acd128(2)=dotproduct(qshift,spvak4k3)
      acd128(3)=abb128(39)
      acd128(4)=abb128(27)
      acd128(5)=k2(iv1)
      acd128(6)=dotproduct(k2,qshift)
      acd128(7)=abb128(76)
      acd128(8)=dotproduct(k3,qshift)
      acd128(9)=dotproduct(k4,qshift)
      acd128(10)=dotproduct(qshift,qshift)
      acd128(11)=abb128(30)
      acd128(12)=abb128(49)
      acd128(13)=dotproduct(qshift,spvak1l5)
      acd128(14)=abb128(21)
      acd128(15)=dotproduct(qshift,spvak1l6)
      acd128(16)=abb128(48)
      acd128(17)=dotproduct(qshift,spvak1k7)
      acd128(18)=abb128(43)
      acd128(19)=dotproduct(qshift,spvak2l5)
      acd128(20)=abb128(31)
      acd128(21)=dotproduct(qshift,spvak2l6)
      acd128(22)=abb128(57)
      acd128(23)=dotproduct(qshift,spvak2k7)
      acd128(24)=abb128(50)
      acd128(25)=dotproduct(qshift,spvak4k2)
      acd128(26)=abb128(16)
      acd128(27)=abb128(59)
      acd128(28)=k3(iv1)
      acd128(29)=abb128(35)
      acd128(30)=k4(iv1)
      acd128(31)=qshift(iv1)
      acd128(32)=abb128(12)
      acd128(33)=abb128(26)
      acd128(34)=abb128(14)
      acd128(35)=abb128(29)
      acd128(36)=abb128(56)
      acd128(37)=abb128(42)
      acd128(38)=abb128(18)
      acd128(39)=abb128(28)
      acd128(40)=spvak4k3(iv1)
      acd128(41)=dotproduct(k1,qshift)
      acd128(42)=abb128(47)
      acd128(43)=abb128(64)
      acd128(44)=abb128(60)
      acd128(45)=dotproduct(qshift,spvak1k2)
      acd128(46)=abb128(32)
      acd128(47)=abb128(25)
      acd128(48)=abb128(19)
      acd128(49)=abb128(22)
      acd128(50)=abb128(20)
      acd128(51)=dotproduct(qshift,spvak3k2)
      acd128(52)=abb128(55)
      acd128(53)=spvak1l5(iv1)
      acd128(54)=spvak1l6(iv1)
      acd128(55)=spvak1k7(iv1)
      acd128(56)=spvak2l5(iv1)
      acd128(57)=abb128(34)
      acd128(58)=dotproduct(qshift,spvak1k3)
      acd128(59)=abb128(24)
      acd128(60)=abb128(17)
      acd128(61)=spvak2l6(iv1)
      acd128(62)=abb128(46)
      acd128(63)=abb128(45)
      acd128(64)=abb128(38)
      acd128(65)=spvak2k7(iv1)
      acd128(66)=abb128(23)
      acd128(67)=abb128(40)
      acd128(68)=abb128(37)
      acd128(69)=spvak4k2(iv1)
      acd128(70)=abb128(15)
      acd128(71)=spvak1k2(iv1)
      acd128(72)=spvak1k3(iv1)
      acd128(73)=spvak3k2(iv1)
      acd128(74)=abb128(13)
      acd128(75)=acd128(28)+acd128(30)
      acd128(76)=acd128(7)*acd128(75)
      acd128(77)=acd128(18)*acd128(55)
      acd128(78)=acd128(16)*acd128(54)
      acd128(79)=-acd128(14)*acd128(53)
      acd128(80)=acd128(65)*acd128(24)
      acd128(81)=acd128(61)*acd128(22)
      acd128(82)=acd128(56)*acd128(20)
      acd128(83)=acd128(69)*acd128(26)
      acd128(84)=2.0_ki*acd128(31)
      acd128(85)=-acd128(11)*acd128(84)
      acd128(86)=acd128(40)*acd128(12)
      acd128(76)=acd128(86)+acd128(85)+acd128(83)+acd128(82)+acd128(81)+acd128(&
      &80)+acd128(79)+acd128(78)+acd128(77)+acd128(76)
      acd128(76)=acd128(6)*acd128(76)
      acd128(77)=acd128(8)+acd128(9)
      acd128(78)=-2.0_ki*acd128(6)+acd128(77)
      acd128(78)=acd128(7)*acd128(78)
      acd128(79)=acd128(18)*acd128(17)
      acd128(80)=acd128(16)*acd128(15)
      acd128(81)=-acd128(14)*acd128(13)
      acd128(82)=acd128(23)*acd128(24)
      acd128(83)=acd128(21)*acd128(22)
      acd128(85)=acd128(19)*acd128(20)
      acd128(86)=acd128(25)*acd128(26)
      acd128(87)=-acd128(10)*acd128(11)
      acd128(78)=acd128(87)+acd128(86)+acd128(85)+acd128(83)+acd128(82)+acd128(&
      &81)+acd128(80)+acd128(79)-acd128(27)+acd128(78)
      acd128(78)=acd128(5)*acd128(78)
      acd128(79)=acd128(23)*acd128(48)
      acd128(80)=acd128(21)*acd128(47)
      acd128(81)=acd128(19)*acd128(46)
      acd128(79)=acd128(79)+acd128(80)+acd128(81)-acd128(50)
      acd128(80)=-acd128(71)*acd128(79)
      acd128(81)=-acd128(65)*acd128(48)
      acd128(82)=-acd128(61)*acd128(47)
      acd128(83)=-acd128(56)*acd128(46)
      acd128(81)=acd128(83)+acd128(81)+acd128(82)
      acd128(81)=acd128(45)*acd128(81)
      acd128(82)=acd128(1)*acd128(3)
      acd128(83)=acd128(38)*acd128(73)
      acd128(85)=acd128(55)*acd128(44)
      acd128(86)=acd128(54)*acd128(43)
      acd128(87)=acd128(53)*acd128(42)
      acd128(88)=acd128(69)*acd128(49)
      acd128(89)=acd128(5)*acd128(12)
      acd128(80)=acd128(89)+acd128(81)+acd128(88)+acd128(87)+acd128(86)+acd128(&
      &85)+acd128(82)+acd128(83)+acd128(80)
      acd128(80)=acd128(2)*acd128(80)
      acd128(81)=acd128(17)*acd128(34)
      acd128(82)=acd128(15)*acd128(33)
      acd128(83)=-acd128(13)*acd128(32)
      acd128(85)=-acd128(23)*acd128(37)
      acd128(86)=-acd128(21)*acd128(36)
      acd128(87)=-acd128(19)*acd128(35)
      acd128(88)=acd128(25)*acd128(38)
      acd128(81)=acd128(88)+acd128(87)+acd128(86)+acd128(85)+acd128(83)+acd128(&
      &82)+acd128(39)+acd128(81)
      acd128(81)=acd128(81)*acd128(84)
      acd128(79)=-acd128(45)*acd128(79)
      acd128(82)=acd128(3)*acd128(41)
      acd128(83)=acd128(38)*acd128(51)
      acd128(84)=acd128(17)*acd128(44)
      acd128(85)=acd128(15)*acd128(43)
      acd128(86)=acd128(13)*acd128(42)
      acd128(87)=acd128(25)*acd128(49)
      acd128(79)=acd128(79)+acd128(87)+acd128(86)+acd128(85)+acd128(84)+acd128(&
      &83)-acd128(52)+acd128(82)
      acd128(79)=acd128(40)*acd128(79)
      acd128(82)=acd128(55)*acd128(34)
      acd128(83)=acd128(54)*acd128(33)
      acd128(84)=-acd128(53)*acd128(32)
      acd128(85)=-acd128(65)*acd128(37)
      acd128(86)=-acd128(61)*acd128(36)
      acd128(87)=-acd128(56)*acd128(35)
      acd128(82)=acd128(87)+acd128(86)+acd128(85)+acd128(84)+acd128(82)+acd128(&
      &83)
      acd128(82)=acd128(10)*acd128(82)
      acd128(83)=-acd128(26)*acd128(77)
      acd128(84)=acd128(23)*acd128(66)
      acd128(85)=acd128(21)*acd128(62)
      acd128(86)=acd128(19)*acd128(57)
      acd128(87)=acd128(10)*acd128(38)
      acd128(83)=acd128(87)+acd128(86)+acd128(85)+acd128(84)-acd128(70)+acd128(&
      &83)
      acd128(83)=acd128(69)*acd128(83)
      acd128(84)=-acd128(26)*acd128(75)
      acd128(85)=acd128(65)*acd128(66)
      acd128(86)=acd128(61)*acd128(62)
      acd128(87)=acd128(56)*acd128(57)
      acd128(84)=acd128(87)+acd128(86)+acd128(84)+acd128(85)
      acd128(84)=acd128(25)*acd128(84)
      acd128(85)=-acd128(65)*acd128(34)
      acd128(86)=-acd128(61)*acd128(33)
      acd128(87)=acd128(56)*acd128(32)
      acd128(85)=acd128(87)+acd128(85)+acd128(86)
      acd128(85)=acd128(45)*acd128(85)
      acd128(86)=-acd128(55)*acd128(77)
      acd128(87)=-acd128(17)*acd128(75)
      acd128(86)=acd128(87)+acd128(86)
      acd128(86)=acd128(18)*acd128(86)
      acd128(87)=-acd128(54)*acd128(77)
      acd128(88)=-acd128(15)*acd128(75)
      acd128(87)=acd128(88)+acd128(87)
      acd128(87)=acd128(16)*acd128(87)
      acd128(77)=acd128(53)*acd128(77)
      acd128(88)=acd128(13)*acd128(75)
      acd128(77)=acd128(88)+acd128(77)
      acd128(77)=acd128(14)*acd128(77)
      acd128(88)=acd128(72)*acd128(67)
      acd128(89)=-acd128(71)*acd128(34)
      acd128(88)=acd128(88)+acd128(89)
      acd128(88)=acd128(23)*acd128(88)
      acd128(89)=acd128(72)*acd128(63)
      acd128(90)=-acd128(71)*acd128(33)
      acd128(89)=acd128(89)+acd128(90)
      acd128(89)=acd128(21)*acd128(89)
      acd128(90)=acd128(72)*acd128(59)
      acd128(91)=acd128(71)*acd128(32)
      acd128(90)=acd128(90)+acd128(91)
      acd128(90)=acd128(19)*acd128(90)
      acd128(75)=-acd128(29)*acd128(75)
      acd128(91)=-acd128(73)*acd128(74)
      acd128(92)=-acd128(1)*acd128(4)
      acd128(93)=acd128(58)*acd128(67)
      acd128(93)=-acd128(68)+acd128(93)
      acd128(93)=acd128(65)*acd128(93)
      acd128(94)=acd128(58)*acd128(63)
      acd128(94)=-acd128(64)+acd128(94)
      acd128(94)=acd128(61)*acd128(94)
      acd128(95)=acd128(58)*acd128(59)
      acd128(95)=-acd128(60)+acd128(95)
      acd128(95)=acd128(56)*acd128(95)
      brack=acd128(75)+acd128(76)+acd128(77)+acd128(78)+acd128(79)+acd128(80)+a&
      &cd128(81)+acd128(82)+acd128(83)+acd128(84)+acd128(85)+acd128(86)+acd128(&
      &87)+acd128(88)+acd128(89)+acd128(90)+acd128(91)+acd128(92)+acd128(93)+ac&
      &d128(94)+acd128(95)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd128
      complex(ki) :: brack
      acd128(1)=d(iv1,iv2)
      acd128(2)=dotproduct(k2,qshift)
      acd128(3)=abb128(30)
      acd128(4)=dotproduct(qshift,spvak1l5)
      acd128(5)=abb128(12)
      acd128(6)=dotproduct(qshift,spvak1l6)
      acd128(7)=abb128(26)
      acd128(8)=dotproduct(qshift,spvak1k7)
      acd128(9)=abb128(14)
      acd128(10)=dotproduct(qshift,spvak2l5)
      acd128(11)=abb128(29)
      acd128(12)=dotproduct(qshift,spvak2l6)
      acd128(13)=abb128(56)
      acd128(14)=dotproduct(qshift,spvak2k7)
      acd128(15)=abb128(42)
      acd128(16)=dotproduct(qshift,spvak4k2)
      acd128(17)=abb128(18)
      acd128(18)=abb128(28)
      acd128(19)=k1(iv1)
      acd128(20)=spvak4k3(iv2)
      acd128(21)=abb128(39)
      acd128(22)=k1(iv2)
      acd128(23)=spvak4k3(iv1)
      acd128(24)=k2(iv1)
      acd128(25)=k2(iv2)
      acd128(26)=abb128(76)
      acd128(27)=k3(iv2)
      acd128(28)=k4(iv2)
      acd128(29)=qshift(iv2)
      acd128(30)=spvak1l5(iv2)
      acd128(31)=abb128(21)
      acd128(32)=spvak1l6(iv2)
      acd128(33)=abb128(48)
      acd128(34)=spvak1k7(iv2)
      acd128(35)=abb128(43)
      acd128(36)=spvak2l5(iv2)
      acd128(37)=abb128(31)
      acd128(38)=spvak2l6(iv2)
      acd128(39)=abb128(57)
      acd128(40)=spvak2k7(iv2)
      acd128(41)=abb128(50)
      acd128(42)=spvak4k2(iv2)
      acd128(43)=abb128(16)
      acd128(44)=abb128(49)
      acd128(45)=k3(iv1)
      acd128(46)=k4(iv1)
      acd128(47)=qshift(iv1)
      acd128(48)=spvak1l5(iv1)
      acd128(49)=spvak1l6(iv1)
      acd128(50)=spvak1k7(iv1)
      acd128(51)=spvak2l5(iv1)
      acd128(52)=spvak2l6(iv1)
      acd128(53)=spvak2k7(iv1)
      acd128(54)=spvak4k2(iv1)
      acd128(55)=abb128(47)
      acd128(56)=abb128(64)
      acd128(57)=abb128(60)
      acd128(58)=abb128(34)
      acd128(59)=dotproduct(qshift,spvak1k2)
      acd128(60)=abb128(32)
      acd128(61)=spvak1k2(iv2)
      acd128(62)=dotproduct(qshift,spvak4k3)
      acd128(63)=spvak1k3(iv2)
      acd128(64)=abb128(24)
      acd128(65)=spvak1k2(iv1)
      acd128(66)=spvak1k3(iv1)
      acd128(67)=abb128(46)
      acd128(68)=abb128(25)
      acd128(69)=abb128(45)
      acd128(70)=abb128(23)
      acd128(71)=abb128(19)
      acd128(72)=abb128(40)
      acd128(73)=abb128(22)
      acd128(74)=abb128(20)
      acd128(75)=spvak3k2(iv2)
      acd128(76)=spvak3k2(iv1)
      acd128(77)=acd128(71)*acd128(14)
      acd128(78)=acd128(68)*acd128(12)
      acd128(79)=acd128(60)*acd128(10)
      acd128(77)=-acd128(74)+acd128(77)+acd128(78)+acd128(79)
      acd128(78)=-acd128(61)*acd128(77)
      acd128(79)=acd128(21)*acd128(22)
      acd128(80)=acd128(34)*acd128(57)
      acd128(81)=acd128(32)*acd128(56)
      acd128(82)=acd128(30)*acd128(55)
      acd128(83)=acd128(17)*acd128(75)
      acd128(84)=acd128(59)*acd128(71)
      acd128(85)=-acd128(40)*acd128(84)
      acd128(86)=acd128(59)*acd128(68)
      acd128(87)=-acd128(38)*acd128(86)
      acd128(88)=acd128(59)*acd128(60)
      acd128(89)=-acd128(36)*acd128(88)
      acd128(90)=acd128(42)*acd128(73)
      acd128(91)=acd128(25)*acd128(44)
      acd128(78)=acd128(91)+acd128(78)+acd128(90)+acd128(89)+acd128(87)+acd128(&
      &85)+acd128(83)+acd128(82)+acd128(81)+acd128(79)+acd128(80)
      acd128(78)=acd128(23)*acd128(78)
      acd128(77)=-acd128(65)*acd128(77)
      acd128(79)=acd128(21)*acd128(19)
      acd128(80)=acd128(50)*acd128(57)
      acd128(81)=acd128(49)*acd128(56)
      acd128(82)=acd128(48)*acd128(55)
      acd128(83)=acd128(17)*acd128(76)
      acd128(84)=-acd128(53)*acd128(84)
      acd128(85)=-acd128(52)*acd128(86)
      acd128(86)=-acd128(51)*acd128(88)
      acd128(87)=acd128(54)*acd128(73)
      acd128(88)=acd128(24)*acd128(44)
      acd128(77)=acd128(88)+acd128(77)+acd128(87)+acd128(86)+acd128(85)+acd128(&
      &84)+acd128(83)+acd128(82)+acd128(81)+acd128(79)+acd128(80)
      acd128(77)=acd128(20)*acd128(77)
      acd128(79)=acd128(45)+acd128(46)
      acd128(80)=acd128(26)*acd128(79)
      acd128(81)=acd128(35)*acd128(50)
      acd128(82)=acd128(33)*acd128(49)
      acd128(83)=-acd128(31)*acd128(48)
      acd128(84)=acd128(53)*acd128(41)
      acd128(85)=acd128(52)*acd128(39)
      acd128(86)=acd128(51)*acd128(37)
      acd128(87)=acd128(54)*acd128(43)
      acd128(88)=2.0_ki*acd128(47)
      acd128(89)=-acd128(3)*acd128(88)
      acd128(80)=acd128(89)+acd128(87)+acd128(86)+acd128(85)+acd128(84)+acd128(&
      &83)+acd128(82)+acd128(80)+acd128(81)
      acd128(80)=acd128(25)*acd128(80)
      acd128(81)=acd128(27)+acd128(28)
      acd128(82)=-2.0_ki*acd128(25)+acd128(81)
      acd128(82)=acd128(26)*acd128(82)
      acd128(83)=acd128(35)*acd128(34)
      acd128(84)=acd128(33)*acd128(32)
      acd128(85)=-acd128(31)*acd128(30)
      acd128(86)=acd128(40)*acd128(41)
      acd128(87)=acd128(38)*acd128(39)
      acd128(89)=acd128(36)*acd128(37)
      acd128(90)=acd128(42)*acd128(43)
      acd128(91)=2.0_ki*acd128(29)
      acd128(92)=-acd128(3)*acd128(91)
      acd128(82)=acd128(92)+acd128(90)+acd128(89)+acd128(87)+acd128(86)+acd128(&
      &85)+acd128(84)+acd128(83)+acd128(82)
      acd128(82)=acd128(24)*acd128(82)
      acd128(83)=-acd128(14)*acd128(15)
      acd128(84)=-acd128(12)*acd128(13)
      acd128(85)=-acd128(10)*acd128(11)
      acd128(86)=-acd128(3)*acd128(2)
      acd128(87)=acd128(17)*acd128(16)
      acd128(89)=acd128(9)*acd128(8)
      acd128(90)=acd128(7)*acd128(6)
      acd128(92)=-acd128(5)*acd128(4)
      acd128(83)=acd128(92)+acd128(90)+acd128(89)+acd128(87)+acd128(86)+acd128(&
      &85)+acd128(84)+acd128(18)+acd128(83)
      acd128(83)=acd128(1)*acd128(83)
      acd128(84)=acd128(9)*acd128(50)
      acd128(85)=acd128(7)*acd128(49)
      acd128(86)=-acd128(5)*acd128(48)
      acd128(87)=-acd128(53)*acd128(15)
      acd128(89)=-acd128(52)*acd128(13)
      acd128(90)=-acd128(51)*acd128(11)
      acd128(92)=acd128(54)*acd128(17)
      acd128(84)=acd128(92)+acd128(90)+acd128(89)+acd128(87)+acd128(86)+acd128(&
      &84)+acd128(85)
      acd128(84)=acd128(84)*acd128(91)
      acd128(85)=acd128(9)*acd128(34)
      acd128(86)=acd128(7)*acd128(32)
      acd128(87)=-acd128(5)*acd128(30)
      acd128(89)=-acd128(40)*acd128(15)
      acd128(90)=-acd128(38)*acd128(13)
      acd128(91)=-acd128(36)*acd128(11)
      acd128(85)=acd128(91)+acd128(90)+acd128(89)+acd128(87)+acd128(85)+acd128(&
      &86)
      acd128(85)=acd128(85)*acd128(88)
      acd128(86)=-acd128(43)*acd128(79)
      acd128(87)=acd128(53)*acd128(70)
      acd128(89)=acd128(52)*acd128(67)
      acd128(90)=acd128(51)*acd128(58)
      acd128(88)=acd128(17)*acd128(88)
      acd128(86)=acd128(88)+acd128(90)+acd128(89)+acd128(86)+acd128(87)
      acd128(86)=acd128(42)*acd128(86)
      acd128(87)=-acd128(43)*acd128(81)
      acd128(88)=acd128(40)*acd128(70)
      acd128(89)=acd128(38)*acd128(67)
      acd128(90)=acd128(36)*acd128(58)
      acd128(87)=acd128(90)+acd128(89)+acd128(87)+acd128(88)
      acd128(87)=acd128(54)*acd128(87)
      acd128(88)=acd128(40)*acd128(72)
      acd128(89)=acd128(38)*acd128(69)
      acd128(90)=acd128(36)*acd128(64)
      acd128(88)=acd128(90)+acd128(89)+acd128(88)
      acd128(88)=acd128(66)*acd128(88)
      acd128(89)=acd128(53)*acd128(72)
      acd128(90)=acd128(52)*acd128(69)
      acd128(91)=acd128(51)*acd128(64)
      acd128(89)=acd128(91)+acd128(90)+acd128(89)
      acd128(89)=acd128(63)*acd128(89)
      acd128(90)=acd128(62)*acd128(71)
      acd128(90)=acd128(90)+acd128(9)
      acd128(91)=-acd128(40)*acd128(90)
      acd128(92)=acd128(62)*acd128(68)
      acd128(92)=acd128(92)+acd128(7)
      acd128(93)=-acd128(38)*acd128(92)
      acd128(94)=acd128(60)*acd128(62)
      acd128(94)=acd128(94)-acd128(5)
      acd128(95)=-acd128(36)*acd128(94)
      acd128(91)=acd128(95)+acd128(91)+acd128(93)
      acd128(91)=acd128(65)*acd128(91)
      acd128(90)=-acd128(53)*acd128(90)
      acd128(92)=-acd128(52)*acd128(92)
      acd128(93)=-acd128(51)*acd128(94)
      acd128(90)=acd128(93)+acd128(90)+acd128(92)
      acd128(90)=acd128(61)*acd128(90)
      acd128(92)=-acd128(50)*acd128(81)
      acd128(93)=-acd128(34)*acd128(79)
      acd128(92)=acd128(93)+acd128(92)
      acd128(92)=acd128(35)*acd128(92)
      acd128(93)=-acd128(49)*acd128(81)
      acd128(94)=-acd128(32)*acd128(79)
      acd128(93)=acd128(94)+acd128(93)
      acd128(93)=acd128(33)*acd128(93)
      acd128(81)=acd128(48)*acd128(81)
      acd128(79)=acd128(30)*acd128(79)
      acd128(79)=acd128(79)+acd128(81)
      acd128(79)=acd128(31)*acd128(79)
      brack=acd128(77)+acd128(78)+acd128(79)+acd128(80)+acd128(82)+2.0_ki*acd12&
      &8(83)+acd128(84)+acd128(85)+acd128(86)+acd128(87)+acd128(88)+acd128(89)+&
      &acd128(90)+acd128(91)+acd128(92)+acd128(93)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd128h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd128
      complex(ki) :: brack
      acd128(1)=d(iv1,iv2)
      acd128(2)=k2(iv3)
      acd128(3)=abb128(30)
      acd128(4)=spvak1l5(iv3)
      acd128(5)=abb128(12)
      acd128(6)=spvak1l6(iv3)
      acd128(7)=abb128(26)
      acd128(8)=spvak1k7(iv3)
      acd128(9)=abb128(14)
      acd128(10)=spvak2l5(iv3)
      acd128(11)=abb128(29)
      acd128(12)=spvak2l6(iv3)
      acd128(13)=abb128(56)
      acd128(14)=spvak2k7(iv3)
      acd128(15)=abb128(42)
      acd128(16)=spvak4k2(iv3)
      acd128(17)=abb128(18)
      acd128(18)=d(iv1,iv3)
      acd128(19)=k2(iv2)
      acd128(20)=spvak1l5(iv2)
      acd128(21)=spvak1l6(iv2)
      acd128(22)=spvak1k7(iv2)
      acd128(23)=spvak2l5(iv2)
      acd128(24)=spvak2l6(iv2)
      acd128(25)=spvak2k7(iv2)
      acd128(26)=spvak4k2(iv2)
      acd128(27)=d(iv2,iv3)
      acd128(28)=k2(iv1)
      acd128(29)=spvak1l5(iv1)
      acd128(30)=spvak1l6(iv1)
      acd128(31)=spvak1k7(iv1)
      acd128(32)=spvak2l5(iv1)
      acd128(33)=spvak2l6(iv1)
      acd128(34)=spvak2k7(iv1)
      acd128(35)=spvak4k2(iv1)
      acd128(36)=spvak1k2(iv2)
      acd128(37)=spvak4k3(iv3)
      acd128(38)=abb128(32)
      acd128(39)=spvak1k2(iv3)
      acd128(40)=spvak4k3(iv2)
      acd128(41)=spvak1k2(iv1)
      acd128(42)=spvak4k3(iv1)
      acd128(43)=abb128(25)
      acd128(44)=abb128(19)
      acd128(45)=-acd128(11)*acd128(10)
      acd128(46)=-acd128(13)*acd128(12)
      acd128(47)=-acd128(15)*acd128(14)
      acd128(48)=-acd128(2)*acd128(3)
      acd128(49)=-acd128(4)*acd128(5)
      acd128(50)=acd128(6)*acd128(7)
      acd128(51)=acd128(8)*acd128(9)
      acd128(52)=acd128(16)*acd128(17)
      acd128(45)=acd128(52)+acd128(51)+acd128(50)+acd128(49)+acd128(48)+acd128(&
      &47)+acd128(46)+acd128(45)
      acd128(46)=2.0_ki*acd128(1)
      acd128(45)=acd128(46)*acd128(45)
      acd128(46)=-acd128(28)*acd128(3)
      acd128(47)=-acd128(29)*acd128(5)
      acd128(48)=acd128(30)*acd128(7)
      acd128(49)=acd128(31)*acd128(9)
      acd128(50)=acd128(35)*acd128(17)
      acd128(46)=acd128(50)+acd128(49)+acd128(48)+acd128(47)+acd128(46)
      acd128(47)=2.0_ki*acd128(27)
      acd128(46)=acd128(47)*acd128(46)
      acd128(48)=-acd128(19)*acd128(3)
      acd128(49)=-acd128(20)*acd128(5)
      acd128(50)=acd128(21)*acd128(7)
      acd128(51)=acd128(22)*acd128(9)
      acd128(52)=acd128(26)*acd128(17)
      acd128(48)=acd128(52)+acd128(51)+acd128(50)+acd128(49)+acd128(48)
      acd128(49)=2.0_ki*acd128(18)
      acd128(48)=acd128(49)*acd128(48)
      acd128(50)=-acd128(10)*acd128(38)
      acd128(51)=-acd128(12)*acd128(43)
      acd128(52)=-acd128(14)*acd128(44)
      acd128(50)=acd128(50)+acd128(52)+acd128(51)
      acd128(51)=acd128(41)*acd128(40)
      acd128(52)=acd128(42)*acd128(36)
      acd128(51)=acd128(51)+acd128(52)
      acd128(50)=acd128(51)*acd128(50)
      acd128(51)=acd128(41)*acd128(37)
      acd128(52)=acd128(42)*acd128(39)
      acd128(51)=acd128(51)+acd128(52)
      acd128(52)=-acd128(38)*acd128(51)
      acd128(53)=-acd128(11)*acd128(49)
      acd128(52)=acd128(53)+acd128(52)
      acd128(52)=acd128(23)*acd128(52)
      acd128(53)=-acd128(43)*acd128(51)
      acd128(54)=-acd128(13)*acd128(49)
      acd128(53)=acd128(53)+acd128(54)
      acd128(53)=acd128(24)*acd128(53)
      acd128(51)=-acd128(44)*acd128(51)
      acd128(49)=-acd128(15)*acd128(49)
      acd128(49)=acd128(51)+acd128(49)
      acd128(49)=acd128(25)*acd128(49)
      acd128(51)=acd128(37)*acd128(36)
      acd128(54)=acd128(40)*acd128(39)
      acd128(51)=acd128(51)+acd128(54)
      acd128(54)=-acd128(38)*acd128(51)
      acd128(55)=-acd128(11)*acd128(47)
      acd128(54)=acd128(55)+acd128(54)
      acd128(54)=acd128(32)*acd128(54)
      acd128(55)=-acd128(43)*acd128(51)
      acd128(56)=-acd128(13)*acd128(47)
      acd128(55)=acd128(55)+acd128(56)
      acd128(55)=acd128(33)*acd128(55)
      acd128(51)=-acd128(44)*acd128(51)
      acd128(47)=-acd128(15)*acd128(47)
      acd128(47)=acd128(51)+acd128(47)
      acd128(47)=acd128(34)*acd128(47)
      brack=acd128(45)+acd128(46)+acd128(47)+acd128(48)+acd128(49)+acd128(50)+a&
      &cd128(52)+acd128(53)+acd128(54)+acd128(55)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd128h3
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
!---#[ subroutine reconstruct_d128:
   subroutine     reconstruct_d128(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group8
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group8), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_128:
      coeffs%coeffs_128%c0 = derivative(czip)
      coeffs%coeffs_128%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_128%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_128%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_128%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_128%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_128%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_128%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_128%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_128%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_128%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_128%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_128%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_128%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_128%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_128%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_128%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_128%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_128%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_128%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_128%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_128%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_128%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_128%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_128%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_128%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_128%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_128%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_128%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_128%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_128%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_128%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_128%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_128%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_128%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_128:
   end subroutine reconstruct_d128
!---#] subroutine reconstruct_d128:
end module     p0_dbaru_epnebbbarg_d128h3l1d
