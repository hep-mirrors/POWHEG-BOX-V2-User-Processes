module     p0_dbaru_epnebbbarg_d125h7l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d125h7l1d.f90
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
   public :: derivative , reconstruct_d125
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd125h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd125
      complex(ki) :: brack
      acd125(1)=dotproduct(k1,qshift)
      acd125(2)=dotproduct(k2,qshift)
      acd125(3)=abb125(72)
      acd125(4)=dotproduct(l5,qshift)
      acd125(5)=abb125(53)
      acd125(6)=dotproduct(l6,qshift)
      acd125(7)=dotproduct(qshift,spvak2l5)
      acd125(8)=abb125(37)
      acd125(9)=dotproduct(qshift,spvak2l6)
      acd125(10)=abb125(59)
      acd125(11)=dotproduct(qshift,spvak7k2)
      acd125(12)=abb125(82)
      acd125(13)=abb125(31)
      acd125(14)=dotproduct(k3,qshift)
      acd125(15)=abb125(67)
      acd125(16)=dotproduct(k4,qshift)
      acd125(17)=dotproduct(qshift,qshift)
      acd125(18)=abb125(45)
      acd125(19)=dotproduct(qshift,spvak4k3)
      acd125(20)=abb125(64)
      acd125(21)=abb125(14)
      acd125(22)=abb125(16)
      acd125(23)=abb125(61)
      acd125(24)=abb125(57)
      acd125(25)=abb125(38)
      acd125(26)=abb125(65)
      acd125(27)=abb125(79)
      acd125(28)=abb125(56)
      acd125(29)=abb125(29)
      acd125(30)=abb125(22)
      acd125(31)=abb125(44)
      acd125(32)=abb125(23)
      acd125(33)=abb125(46)
      acd125(34)=dotproduct(k7,qshift)
      acd125(35)=abb125(13)
      acd125(36)=abb125(30)
      acd125(37)=abb125(33)
      acd125(38)=abb125(21)
      acd125(39)=abb125(74)
      acd125(40)=abb125(18)
      acd125(41)=abb125(15)
      acd125(42)=abb125(11)
      acd125(43)=abb125(39)
      acd125(44)=abb125(8)
      acd125(45)=abb125(27)
      acd125(46)=abb125(10)
      acd125(47)=abb125(20)
      acd125(48)=abb125(24)
      acd125(49)=abb125(28)
      acd125(50)=dotproduct(qshift,spvak1l5)
      acd125(51)=abb125(32)
      acd125(52)=dotproduct(qshift,spvak1l6)
      acd125(53)=abb125(25)
      acd125(54)=abb125(17)
      acd125(55)=dotproduct(qshift,spvak1k3)
      acd125(56)=abb125(26)
      acd125(57)=abb125(12)
      acd125(58)=abb125(9)
      acd125(59)=abb125(19)
      acd125(60)=acd125(4)+acd125(6)
      acd125(61)=acd125(30)*acd125(60)
      acd125(62)=-acd125(52)*acd125(53)
      acd125(63)=-acd125(50)*acd125(51)
      acd125(64)=-acd125(9)*acd125(46)
      acd125(65)=-acd125(7)*acd125(42)
      acd125(66)=-acd125(2)*acd125(20)
      acd125(61)=acd125(66)+acd125(65)+acd125(64)+acd125(63)+acd125(54)+acd125(&
      &62)+acd125(61)
      acd125(61)=acd125(19)*acd125(61)
      acd125(62)=acd125(31)*acd125(60)
      acd125(63)=acd125(14)+acd125(16)
      acd125(64)=acd125(27)*acd125(63)
      acd125(65)=acd125(55)*acd125(56)
      acd125(66)=acd125(1)*acd125(12)
      acd125(67)=-acd125(17)*acd125(39)
      acd125(68)=acd125(9)*acd125(47)
      acd125(69)=acd125(7)*acd125(43)
      acd125(70)=acd125(2)*acd125(21)
      acd125(61)=acd125(61)+acd125(70)+acd125(69)+acd125(68)+acd125(67)+acd125(&
      &66)-acd125(57)+acd125(65)+acd125(64)+acd125(62)
      acd125(61)=acd125(11)*acd125(61)
      acd125(62)=acd125(32)*acd125(60)
      acd125(64)=acd125(34)*acd125(35)
      acd125(65)=-acd125(17)*acd125(40)
      acd125(66)=acd125(9)*acd125(48)
      acd125(67)=acd125(7)*acd125(44)
      acd125(68)=acd125(2)*acd125(22)
      acd125(62)=acd125(68)+acd125(67)+acd125(66)+acd125(65)-acd125(58)+acd125(&
      &64)+acd125(62)
      acd125(62)=acd125(19)*acd125(62)
      acd125(64)=acd125(24)*acd125(63)
      acd125(65)=acd125(1)*acd125(5)
      acd125(66)=acd125(17)*acd125(29)
      acd125(64)=-acd125(33)+acd125(64)+acd125(65)+acd125(66)
      acd125(60)=acd125(64)*acd125(60)
      acd125(64)=acd125(26)*acd125(63)
      acd125(65)=acd125(1)*acd125(10)
      acd125(66)=-acd125(17)*acd125(38)
      acd125(64)=acd125(66)+acd125(65)-acd125(49)+acd125(64)
      acd125(64)=acd125(9)*acd125(64)
      acd125(65)=acd125(25)*acd125(63)
      acd125(66)=acd125(1)*acd125(8)
      acd125(67)=-acd125(17)*acd125(37)
      acd125(65)=acd125(67)+acd125(66)-acd125(45)+acd125(65)
      acd125(65)=acd125(7)*acd125(65)
      acd125(66)=acd125(15)*acd125(63)
      acd125(67)=acd125(1)*acd125(3)
      acd125(68)=-acd125(17)*acd125(18)
      acd125(66)=acd125(68)+acd125(67)-acd125(23)+acd125(66)
      acd125(66)=acd125(2)*acd125(66)
      acd125(63)=acd125(28)*acd125(63)
      acd125(67)=-acd125(34)*acd125(36)
      acd125(68)=-acd125(1)*acd125(13)
      acd125(69)=acd125(17)*acd125(41)
      brack=acd125(59)+acd125(60)+acd125(61)+acd125(62)+acd125(63)+acd125(64)+a&
      &cd125(65)+acd125(66)+acd125(67)+acd125(68)+acd125(69)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd125h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd125
      complex(ki) :: brack
      acd125(1)=k1(iv1)
      acd125(2)=dotproduct(k2,qshift)
      acd125(3)=abb125(72)
      acd125(4)=dotproduct(l5,qshift)
      acd125(5)=abb125(53)
      acd125(6)=dotproduct(l6,qshift)
      acd125(7)=dotproduct(qshift,spvak2l5)
      acd125(8)=abb125(37)
      acd125(9)=dotproduct(qshift,spvak2l6)
      acd125(10)=abb125(59)
      acd125(11)=dotproduct(qshift,spvak7k2)
      acd125(12)=abb125(82)
      acd125(13)=abb125(31)
      acd125(14)=k2(iv1)
      acd125(15)=dotproduct(k1,qshift)
      acd125(16)=dotproduct(k3,qshift)
      acd125(17)=abb125(67)
      acd125(18)=dotproduct(k4,qshift)
      acd125(19)=dotproduct(qshift,qshift)
      acd125(20)=abb125(45)
      acd125(21)=dotproduct(qshift,spvak4k3)
      acd125(22)=abb125(64)
      acd125(23)=abb125(14)
      acd125(24)=abb125(16)
      acd125(25)=abb125(61)
      acd125(26)=k3(iv1)
      acd125(27)=abb125(57)
      acd125(28)=abb125(38)
      acd125(29)=abb125(65)
      acd125(30)=abb125(79)
      acd125(31)=abb125(56)
      acd125(32)=k4(iv1)
      acd125(33)=l5(iv1)
      acd125(34)=abb125(29)
      acd125(35)=abb125(22)
      acd125(36)=abb125(44)
      acd125(37)=abb125(23)
      acd125(38)=abb125(46)
      acd125(39)=l6(iv1)
      acd125(40)=k7(iv1)
      acd125(41)=abb125(13)
      acd125(42)=abb125(30)
      acd125(43)=qshift(iv1)
      acd125(44)=abb125(33)
      acd125(45)=abb125(21)
      acd125(46)=abb125(74)
      acd125(47)=abb125(18)
      acd125(48)=abb125(15)
      acd125(49)=spvak2l5(iv1)
      acd125(50)=abb125(11)
      acd125(51)=abb125(39)
      acd125(52)=abb125(8)
      acd125(53)=abb125(27)
      acd125(54)=spvak2l6(iv1)
      acd125(55)=abb125(10)
      acd125(56)=abb125(20)
      acd125(57)=abb125(24)
      acd125(58)=abb125(28)
      acd125(59)=spvak7k2(iv1)
      acd125(60)=dotproduct(qshift,spvak1l5)
      acd125(61)=abb125(32)
      acd125(62)=dotproduct(qshift,spvak1l6)
      acd125(63)=abb125(25)
      acd125(64)=abb125(17)
      acd125(65)=dotproduct(qshift,spvak1k3)
      acd125(66)=abb125(26)
      acd125(67)=abb125(12)
      acd125(68)=spvak4k3(iv1)
      acd125(69)=dotproduct(k7,qshift)
      acd125(70)=abb125(9)
      acd125(71)=spvak1k3(iv1)
      acd125(72)=spvak1l5(iv1)
      acd125(73)=spvak1l6(iv1)
      acd125(74)=acd125(4)+acd125(6)
      acd125(75)=-acd125(35)*acd125(74)
      acd125(76)=acd125(63)*acd125(62)
      acd125(77)=acd125(61)*acd125(60)
      acd125(78)=acd125(9)*acd125(55)
      acd125(79)=acd125(7)*acd125(50)
      acd125(80)=acd125(2)*acd125(22)
      acd125(75)=acd125(77)+acd125(80)-acd125(64)+acd125(76)+acd125(78)+acd125(&
      &79)+acd125(75)
      acd125(76)=-acd125(68)*acd125(75)
      acd125(77)=acd125(33)+acd125(39)
      acd125(78)=acd125(35)*acd125(77)
      acd125(79)=-acd125(63)*acd125(73)
      acd125(80)=-acd125(61)*acd125(72)
      acd125(81)=-acd125(54)*acd125(55)
      acd125(82)=-acd125(49)*acd125(50)
      acd125(83)=-acd125(14)*acd125(22)
      acd125(78)=acd125(83)+acd125(82)+acd125(81)+acd125(79)+acd125(80)+acd125(&
      &78)
      acd125(78)=acd125(21)*acd125(78)
      acd125(79)=acd125(36)*acd125(77)
      acd125(80)=acd125(26)+acd125(32)
      acd125(81)=acd125(30)*acd125(80)
      acd125(82)=acd125(66)*acd125(71)
      acd125(83)=acd125(1)*acd125(12)
      acd125(84)=acd125(54)*acd125(56)
      acd125(85)=acd125(49)*acd125(51)
      acd125(86)=2.0_ki*acd125(43)
      acd125(87)=-acd125(46)*acd125(86)
      acd125(88)=acd125(14)*acd125(23)
      acd125(76)=acd125(78)+acd125(76)+acd125(88)+acd125(87)+acd125(85)+acd125(&
      &84)+acd125(83)+acd125(82)+acd125(81)+acd125(79)
      acd125(76)=acd125(11)*acd125(76)
      acd125(78)=acd125(36)*acd125(74)
      acd125(79)=acd125(16)+acd125(18)
      acd125(81)=acd125(30)*acd125(79)
      acd125(82)=acd125(66)*acd125(65)
      acd125(83)=acd125(15)*acd125(12)
      acd125(84)=-acd125(19)*acd125(46)
      acd125(85)=acd125(9)*acd125(56)
      acd125(87)=acd125(7)*acd125(51)
      acd125(88)=acd125(2)*acd125(23)
      acd125(78)=acd125(88)+acd125(87)+acd125(85)+acd125(84)+acd125(83)-acd125(&
      &67)+acd125(82)+acd125(81)+acd125(78)
      acd125(78)=acd125(59)*acd125(78)
      acd125(75)=-acd125(59)*acd125(75)
      acd125(81)=acd125(37)*acd125(77)
      acd125(82)=acd125(40)*acd125(41)
      acd125(83)=acd125(54)*acd125(57)
      acd125(84)=acd125(49)*acd125(52)
      acd125(85)=-acd125(47)*acd125(86)
      acd125(87)=acd125(14)*acd125(24)
      acd125(75)=acd125(75)+acd125(87)+acd125(85)+acd125(84)+acd125(82)+acd125(&
      &83)+acd125(81)
      acd125(75)=acd125(21)*acd125(75)
      acd125(81)=acd125(37)*acd125(74)
      acd125(82)=acd125(41)*acd125(69)
      acd125(83)=-acd125(19)*acd125(47)
      acd125(84)=acd125(9)*acd125(57)
      acd125(85)=acd125(7)*acd125(52)
      acd125(87)=acd125(2)*acd125(24)
      acd125(81)=acd125(87)+acd125(85)+acd125(84)+acd125(83)-acd125(70)+acd125(&
      &82)+acd125(81)
      acd125(81)=acd125(68)*acd125(81)
      acd125(82)=acd125(15)*acd125(5)
      acd125(83)=acd125(19)*acd125(34)
      acd125(84)=acd125(27)*acd125(79)
      acd125(82)=acd125(84)-acd125(38)+acd125(82)+acd125(83)
      acd125(77)=acd125(77)*acd125(82)
      acd125(82)=acd125(80)*acd125(27)
      acd125(83)=acd125(86)*acd125(34)
      acd125(84)=acd125(1)*acd125(5)
      acd125(82)=acd125(82)+acd125(83)+acd125(84)
      acd125(74)=acd125(82)*acd125(74)
      acd125(82)=acd125(29)*acd125(79)
      acd125(83)=acd125(15)*acd125(10)
      acd125(84)=-acd125(19)*acd125(45)
      acd125(82)=acd125(84)+acd125(83)-acd125(58)+acd125(82)
      acd125(82)=acd125(54)*acd125(82)
      acd125(83)=acd125(28)*acd125(79)
      acd125(84)=acd125(15)*acd125(8)
      acd125(85)=-acd125(19)*acd125(44)
      acd125(83)=acd125(85)+acd125(84)-acd125(53)+acd125(83)
      acd125(83)=acd125(49)*acd125(83)
      acd125(79)=acd125(17)*acd125(79)
      acd125(84)=acd125(15)*acd125(3)
      acd125(85)=-acd125(19)*acd125(20)
      acd125(79)=acd125(85)+acd125(84)-acd125(25)+acd125(79)
      acd125(79)=acd125(14)*acd125(79)
      acd125(84)=acd125(29)*acd125(80)
      acd125(85)=acd125(1)*acd125(10)
      acd125(87)=-acd125(45)*acd125(86)
      acd125(84)=acd125(87)+acd125(85)+acd125(84)
      acd125(84)=acd125(9)*acd125(84)
      acd125(85)=acd125(28)*acd125(80)
      acd125(87)=acd125(1)*acd125(8)
      acd125(88)=-acd125(44)*acd125(86)
      acd125(85)=acd125(88)+acd125(87)+acd125(85)
      acd125(85)=acd125(7)*acd125(85)
      acd125(87)=acd125(17)*acd125(80)
      acd125(88)=acd125(1)*acd125(3)
      acd125(89)=-acd125(20)*acd125(86)
      acd125(87)=acd125(89)+acd125(88)+acd125(87)
      acd125(87)=acd125(2)*acd125(87)
      acd125(80)=acd125(31)*acd125(80)
      acd125(88)=-acd125(40)*acd125(42)
      acd125(89)=-acd125(1)*acd125(13)
      acd125(86)=acd125(48)*acd125(86)
      brack=acd125(74)+acd125(75)+acd125(76)+acd125(77)+acd125(78)+acd125(79)+a&
      &cd125(80)+acd125(81)+acd125(82)+acd125(83)+acd125(84)+acd125(85)+acd125(&
      &86)+acd125(87)+acd125(88)+acd125(89)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd125h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(94) :: acd125
      complex(ki) :: brack
      acd125(1)=d(iv1,iv2)
      acd125(2)=dotproduct(k2,qshift)
      acd125(3)=abb125(45)
      acd125(4)=dotproduct(l5,qshift)
      acd125(5)=abb125(29)
      acd125(6)=dotproduct(l6,qshift)
      acd125(7)=dotproduct(qshift,spvak2l5)
      acd125(8)=abb125(33)
      acd125(9)=dotproduct(qshift,spvak2l6)
      acd125(10)=abb125(21)
      acd125(11)=dotproduct(qshift,spvak4k3)
      acd125(12)=abb125(18)
      acd125(13)=dotproduct(qshift,spvak7k2)
      acd125(14)=abb125(74)
      acd125(15)=abb125(15)
      acd125(16)=k1(iv1)
      acd125(17)=k2(iv2)
      acd125(18)=abb125(72)
      acd125(19)=l5(iv2)
      acd125(20)=abb125(53)
      acd125(21)=l6(iv2)
      acd125(22)=spvak2l5(iv2)
      acd125(23)=abb125(37)
      acd125(24)=spvak2l6(iv2)
      acd125(25)=abb125(59)
      acd125(26)=spvak7k2(iv2)
      acd125(27)=abb125(82)
      acd125(28)=k1(iv2)
      acd125(29)=k2(iv1)
      acd125(30)=l5(iv1)
      acd125(31)=l6(iv1)
      acd125(32)=spvak2l5(iv1)
      acd125(33)=spvak2l6(iv1)
      acd125(34)=spvak7k2(iv1)
      acd125(35)=k3(iv2)
      acd125(36)=abb125(67)
      acd125(37)=k4(iv2)
      acd125(38)=qshift(iv2)
      acd125(39)=spvak4k3(iv2)
      acd125(40)=abb125(64)
      acd125(41)=abb125(16)
      acd125(42)=abb125(14)
      acd125(43)=k3(iv1)
      acd125(44)=k4(iv1)
      acd125(45)=qshift(iv1)
      acd125(46)=spvak4k3(iv1)
      acd125(47)=abb125(57)
      acd125(48)=abb125(38)
      acd125(49)=abb125(65)
      acd125(50)=abb125(79)
      acd125(51)=abb125(22)
      acd125(52)=abb125(23)
      acd125(53)=abb125(44)
      acd125(54)=k7(iv1)
      acd125(55)=abb125(13)
      acd125(56)=k7(iv2)
      acd125(57)=abb125(11)
      acd125(58)=abb125(8)
      acd125(59)=abb125(39)
      acd125(60)=abb125(10)
      acd125(61)=abb125(24)
      acd125(62)=abb125(20)
      acd125(63)=dotproduct(qshift,spvak1l5)
      acd125(64)=abb125(32)
      acd125(65)=dotproduct(qshift,spvak1l6)
      acd125(66)=abb125(25)
      acd125(67)=abb125(17)
      acd125(68)=spvak1l5(iv2)
      acd125(69)=spvak1l6(iv2)
      acd125(70)=spvak1l5(iv1)
      acd125(71)=spvak1l6(iv1)
      acd125(72)=spvak1k3(iv2)
      acd125(73)=abb125(26)
      acd125(74)=spvak1k3(iv1)
      acd125(75)=acd125(66)*acd125(69)
      acd125(76)=acd125(64)*acd125(68)
      acd125(77)=acd125(19)+acd125(21)
      acd125(78)=acd125(77)*acd125(51)
      acd125(79)=acd125(24)*acd125(60)
      acd125(80)=acd125(22)*acd125(57)
      acd125(81)=acd125(17)*acd125(40)
      acd125(75)=acd125(81)+acd125(75)+acd125(79)+acd125(80)+acd125(76)-acd125(&
      &78)
      acd125(76)=-acd125(11)*acd125(75)
      acd125(78)=acd125(66)*acd125(65)
      acd125(79)=acd125(64)*acd125(63)
      acd125(80)=acd125(60)*acd125(9)
      acd125(81)=acd125(57)*acd125(7)
      acd125(82)=acd125(40)*acd125(2)
      acd125(83)=acd125(4)+acd125(6)
      acd125(84)=acd125(83)*acd125(51)
      acd125(78)=acd125(78)-acd125(84)-acd125(67)+acd125(79)+acd125(80)+acd125(&
      &81)+acd125(82)
      acd125(79)=-acd125(39)*acd125(78)
      acd125(80)=acd125(53)*acd125(77)
      acd125(81)=acd125(35)+acd125(37)
      acd125(82)=acd125(50)*acd125(81)
      acd125(84)=acd125(73)*acd125(72)
      acd125(85)=acd125(28)*acd125(27)
      acd125(86)=2.0_ki*acd125(38)
      acd125(87)=-acd125(14)*acd125(86)
      acd125(88)=acd125(24)*acd125(62)
      acd125(89)=acd125(22)*acd125(59)
      acd125(90)=acd125(17)*acd125(42)
      acd125(76)=acd125(79)+acd125(76)+acd125(90)+acd125(89)+acd125(88)+acd125(&
      &87)+acd125(85)+acd125(84)+acd125(82)+acd125(80)
      acd125(76)=acd125(34)*acd125(76)
      acd125(79)=acd125(66)*acd125(71)
      acd125(80)=acd125(64)*acd125(70)
      acd125(82)=acd125(30)+acd125(31)
      acd125(84)=acd125(82)*acd125(51)
      acd125(85)=acd125(33)*acd125(60)
      acd125(87)=acd125(32)*acd125(57)
      acd125(88)=acd125(29)*acd125(40)
      acd125(79)=acd125(88)+acd125(79)+acd125(85)+acd125(87)+acd125(80)-acd125(&
      &84)
      acd125(80)=-acd125(11)*acd125(79)
      acd125(78)=-acd125(46)*acd125(78)
      acd125(84)=acd125(53)*acd125(82)
      acd125(85)=acd125(43)+acd125(44)
      acd125(87)=acd125(50)*acd125(85)
      acd125(88)=acd125(73)*acd125(74)
      acd125(89)=acd125(16)*acd125(27)
      acd125(90)=2.0_ki*acd125(45)
      acd125(91)=-acd125(14)*acd125(90)
      acd125(92)=acd125(33)*acd125(62)
      acd125(93)=acd125(32)*acd125(59)
      acd125(94)=acd125(29)*acd125(42)
      acd125(78)=acd125(78)+acd125(80)+acd125(94)+acd125(93)+acd125(92)+acd125(&
      &91)+acd125(89)+acd125(88)+acd125(87)+acd125(84)
      acd125(78)=acd125(26)*acd125(78)
      acd125(75)=-acd125(13)*acd125(75)
      acd125(80)=acd125(52)*acd125(77)
      acd125(84)=acd125(55)*acd125(56)
      acd125(87)=-acd125(12)*acd125(86)
      acd125(88)=acd125(24)*acd125(61)
      acd125(89)=acd125(22)*acd125(58)
      acd125(91)=acd125(17)*acd125(41)
      acd125(75)=acd125(75)+acd125(91)+acd125(89)+acd125(88)+acd125(84)+acd125(&
      &87)+acd125(80)
      acd125(75)=acd125(46)*acd125(75)
      acd125(79)=-acd125(13)*acd125(79)
      acd125(80)=acd125(52)*acd125(82)
      acd125(84)=acd125(55)*acd125(54)
      acd125(87)=-acd125(12)*acd125(90)
      acd125(88)=acd125(33)*acd125(61)
      acd125(89)=acd125(32)*acd125(58)
      acd125(91)=acd125(29)*acd125(41)
      acd125(79)=acd125(79)+acd125(91)+acd125(89)+acd125(88)+acd125(84)+acd125(&
      &87)+acd125(80)
      acd125(79)=acd125(39)*acd125(79)
      acd125(80)=-acd125(9)*acd125(10)
      acd125(84)=-acd125(7)*acd125(8)
      acd125(87)=-acd125(2)*acd125(3)
      acd125(83)=acd125(5)*acd125(83)
      acd125(88)=-acd125(13)*acd125(14)
      acd125(89)=-acd125(11)*acd125(12)
      acd125(80)=acd125(89)+acd125(88)+acd125(83)+acd125(87)+acd125(84)+acd125(&
      &15)+acd125(80)
      acd125(83)=2.0_ki*acd125(1)
      acd125(80)=acd125(83)*acd125(80)
      acd125(83)=acd125(16)*acd125(20)
      acd125(84)=acd125(85)*acd125(47)
      acd125(87)=acd125(90)*acd125(5)
      acd125(83)=acd125(87)+acd125(83)+acd125(84)
      acd125(77)=acd125(83)*acd125(77)
      acd125(83)=acd125(28)*acd125(20)
      acd125(84)=acd125(81)*acd125(47)
      acd125(87)=acd125(86)*acd125(5)
      acd125(83)=acd125(87)+acd125(83)+acd125(84)
      acd125(82)=acd125(83)*acd125(82)
      acd125(83)=acd125(49)*acd125(81)
      acd125(84)=acd125(28)*acd125(25)
      acd125(87)=-acd125(10)*acd125(86)
      acd125(83)=acd125(87)+acd125(84)+acd125(83)
      acd125(83)=acd125(33)*acd125(83)
      acd125(84)=acd125(48)*acd125(81)
      acd125(87)=acd125(28)*acd125(23)
      acd125(88)=-acd125(8)*acd125(86)
      acd125(84)=acd125(88)+acd125(87)+acd125(84)
      acd125(84)=acd125(32)*acd125(84)
      acd125(81)=acd125(36)*acd125(81)
      acd125(87)=acd125(28)*acd125(18)
      acd125(86)=-acd125(3)*acd125(86)
      acd125(81)=acd125(86)+acd125(87)+acd125(81)
      acd125(81)=acd125(29)*acd125(81)
      acd125(86)=acd125(49)*acd125(85)
      acd125(87)=acd125(16)*acd125(25)
      acd125(88)=-acd125(10)*acd125(90)
      acd125(86)=acd125(88)+acd125(87)+acd125(86)
      acd125(86)=acd125(24)*acd125(86)
      acd125(87)=acd125(48)*acd125(85)
      acd125(88)=acd125(16)*acd125(23)
      acd125(89)=-acd125(8)*acd125(90)
      acd125(87)=acd125(89)+acd125(88)+acd125(87)
      acd125(87)=acd125(22)*acd125(87)
      acd125(85)=acd125(36)*acd125(85)
      acd125(88)=acd125(16)*acd125(18)
      acd125(89)=-acd125(3)*acd125(90)
      acd125(85)=acd125(89)+acd125(88)+acd125(85)
      acd125(85)=acd125(17)*acd125(85)
      brack=acd125(75)+acd125(76)+acd125(77)+acd125(78)+acd125(79)+acd125(80)+a&
      &cd125(81)+acd125(82)+acd125(83)+acd125(84)+acd125(85)+acd125(86)+acd125(&
      &87)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd125h7
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(52) :: acd125
      complex(ki) :: brack
      acd125(1)=d(iv1,iv2)
      acd125(2)=k2(iv3)
      acd125(3)=abb125(45)
      acd125(4)=l5(iv3)
      acd125(5)=abb125(29)
      acd125(6)=l6(iv3)
      acd125(7)=spvak2l5(iv3)
      acd125(8)=abb125(33)
      acd125(9)=spvak2l6(iv3)
      acd125(10)=abb125(21)
      acd125(11)=spvak4k3(iv3)
      acd125(12)=abb125(18)
      acd125(13)=spvak7k2(iv3)
      acd125(14)=abb125(74)
      acd125(15)=d(iv1,iv3)
      acd125(16)=k2(iv2)
      acd125(17)=l5(iv2)
      acd125(18)=l6(iv2)
      acd125(19)=spvak2l5(iv2)
      acd125(20)=spvak2l6(iv2)
      acd125(21)=spvak4k3(iv2)
      acd125(22)=spvak7k2(iv2)
      acd125(23)=d(iv2,iv3)
      acd125(24)=k2(iv1)
      acd125(25)=l5(iv1)
      acd125(26)=l6(iv1)
      acd125(27)=spvak2l5(iv1)
      acd125(28)=spvak2l6(iv1)
      acd125(29)=spvak4k3(iv1)
      acd125(30)=spvak7k2(iv1)
      acd125(31)=abb125(64)
      acd125(32)=abb125(22)
      acd125(33)=abb125(11)
      acd125(34)=abb125(10)
      acd125(35)=spvak1l5(iv3)
      acd125(36)=abb125(32)
      acd125(37)=spvak1l6(iv3)
      acd125(38)=abb125(25)
      acd125(39)=spvak1l5(iv2)
      acd125(40)=spvak1l6(iv2)
      acd125(41)=spvak1l5(iv1)
      acd125(42)=spvak1l6(iv1)
      acd125(43)=acd125(38)*acd125(40)
      acd125(44)=acd125(36)*acd125(39)
      acd125(45)=acd125(34)*acd125(20)
      acd125(46)=acd125(17)+acd125(18)
      acd125(47)=acd125(46)*acd125(32)
      acd125(48)=acd125(33)*acd125(19)
      acd125(49)=acd125(31)*acd125(16)
      acd125(43)=-acd125(47)+acd125(43)+acd125(48)+acd125(49)+acd125(44)+acd125&
      &(45)
      acd125(44)=-acd125(29)*acd125(43)
      acd125(45)=acd125(38)*acd125(42)
      acd125(47)=acd125(36)*acd125(41)
      acd125(48)=acd125(34)*acd125(28)
      acd125(49)=acd125(25)+acd125(26)
      acd125(50)=acd125(49)*acd125(32)
      acd125(51)=acd125(33)*acd125(27)
      acd125(52)=acd125(31)*acd125(24)
      acd125(45)=-acd125(50)+acd125(45)+acd125(51)+acd125(52)+acd125(47)+acd125&
      &(48)
      acd125(47)=-acd125(21)*acd125(45)
      acd125(48)=2.0_ki*acd125(1)
      acd125(50)=-acd125(14)*acd125(48)
      acd125(44)=acd125(47)+acd125(50)+acd125(44)
      acd125(44)=acd125(13)*acd125(44)
      acd125(43)=-acd125(30)*acd125(43)
      acd125(45)=-acd125(22)*acd125(45)
      acd125(47)=-acd125(12)*acd125(48)
      acd125(43)=acd125(45)+acd125(47)+acd125(43)
      acd125(43)=acd125(11)*acd125(43)
      acd125(45)=-acd125(10)*acd125(28)
      acd125(47)=-acd125(8)*acd125(27)
      acd125(48)=-acd125(3)*acd125(24)
      acd125(49)=acd125(5)*acd125(49)
      acd125(50)=-acd125(30)*acd125(14)
      acd125(51)=-acd125(29)*acd125(12)
      acd125(45)=acd125(51)+acd125(50)+acd125(49)+acd125(48)+acd125(45)+acd125(&
      &47)
      acd125(45)=acd125(23)*acd125(45)
      acd125(47)=-acd125(10)*acd125(20)
      acd125(48)=-acd125(8)*acd125(19)
      acd125(49)=-acd125(3)*acd125(16)
      acd125(46)=acd125(5)*acd125(46)
      acd125(46)=acd125(46)+acd125(49)+acd125(47)+acd125(48)
      acd125(46)=acd125(15)*acd125(46)
      acd125(47)=-acd125(9)*acd125(10)
      acd125(48)=-acd125(7)*acd125(8)
      acd125(49)=-acd125(2)*acd125(3)
      acd125(50)=acd125(4)+acd125(6)
      acd125(51)=acd125(5)*acd125(50)
      acd125(47)=acd125(51)+acd125(49)+acd125(47)+acd125(48)
      acd125(47)=acd125(1)*acd125(47)
      acd125(45)=acd125(47)+acd125(46)+acd125(45)
      acd125(46)=acd125(38)*acd125(37)
      acd125(47)=acd125(36)*acd125(35)
      acd125(48)=acd125(50)*acd125(32)
      acd125(49)=acd125(34)*acd125(9)
      acd125(50)=acd125(33)*acd125(7)
      acd125(51)=acd125(31)*acd125(2)
      acd125(46)=acd125(51)+acd125(46)+acd125(49)+acd125(50)+acd125(47)-acd125(&
      &48)
      acd125(47)=-acd125(29)*acd125(46)
      acd125(48)=2.0_ki*acd125(15)
      acd125(49)=-acd125(14)*acd125(48)
      acd125(47)=acd125(49)+acd125(47)
      acd125(47)=acd125(22)*acd125(47)
      acd125(46)=-acd125(30)*acd125(46)
      acd125(48)=-acd125(12)*acd125(48)
      acd125(46)=acd125(48)+acd125(46)
      acd125(46)=acd125(21)*acd125(46)
      brack=acd125(43)+acd125(44)+2.0_ki*acd125(45)+acd125(46)+acd125(47)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd125h7
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d125:
   subroutine     reconstruct_d125(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_125:
      coeffs%coeffs_125%c0 = derivative(czip)
      coeffs%coeffs_125%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_125%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_125%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_125%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_125%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_125%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_125%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_125%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_125%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_125%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_125%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_125%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_125%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_125%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_125%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_125%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_125%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_125%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_125%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_125%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_125%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_125%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_125%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_125%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_125%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_125%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_125%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_125%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_125%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_125%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_125%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_125%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_125%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_125%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_125:
   end subroutine reconstruct_d125
!---#] subroutine reconstruct_d125:
end module     p0_dbaru_epnebbbarg_d125h7l1d
