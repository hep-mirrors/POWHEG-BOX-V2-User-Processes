module     p0_dbaru_epnebbbarg_d92h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d92h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d92
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd92
      complex(ki) :: brack
      acd92(1)=dotproduct(k1,qshift)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(168)
      acd92(4)=dotproduct(qshift,spvak4k2)
      acd92(5)=abb92(45)
      acd92(6)=dotproduct(qshift,spval6k2)
      acd92(7)=abb92(59)
      acd92(8)=abb92(29)
      acd92(9)=abb92(101)
      acd92(10)=dotproduct(k3,qshift)
      acd92(11)=abb92(109)
      acd92(12)=dotproduct(k4,qshift)
      acd92(13)=dotproduct(l5,qshift)
      acd92(14)=dotproduct(l6,qshift)
      acd92(15)=dotproduct(k7,qshift)
      acd92(16)=abb92(113)
      acd92(17)=abb92(25)
      acd92(18)=abb92(19)
      acd92(19)=dotproduct(qshift,spvak1k2)
      acd92(20)=abb92(24)
      acd92(21)=dotproduct(qshift,spvak2k7)
      acd92(22)=abb92(20)
      acd92(23)=dotproduct(qshift,spvak4k3)
      acd92(24)=abb92(15)
      acd92(25)=dotproduct(qshift,spval5k2)
      acd92(26)=abb92(89)
      acd92(27)=abb92(60)
      acd92(28)=abb92(61)
      acd92(29)=abb92(153)
      acd92(30)=abb92(73)
      acd92(31)=abb92(123)
      acd92(32)=abb92(55)
      acd92(33)=abb92(17)
      acd92(34)=abb92(80)
      acd92(35)=abb92(106)
      acd92(36)=dotproduct(qshift,qshift)
      acd92(37)=abb92(27)
      acd92(38)=abb92(48)
      acd92(39)=abb92(30)
      acd92(40)=abb92(41)
      acd92(41)=abb92(36)
      acd92(42)=abb92(23)
      acd92(43)=abb92(35)
      acd92(44)=abb92(33)
      acd92(45)=abb92(21)
      acd92(46)=abb92(13)
      acd92(47)=abb92(14)
      acd92(48)=abb92(22)
      acd92(49)=abb92(18)
      acd92(50)=abb92(34)
      acd92(51)=abb92(16)
      acd92(52)=abb92(57)
      acd92(53)=dotproduct(qshift,spvak1l5)
      acd92(54)=abb92(39)
      acd92(55)=dotproduct(qshift,spvak1l6)
      acd92(56)=abb92(43)
      acd92(57)=dotproduct(qshift,spval6k1)
      acd92(58)=abb92(31)
      acd92(59)=dotproduct(qshift,spval6l5)
      acd92(60)=abb92(28)
      acd92(61)=abb92(26)
      acd92(62)=acd92(18)*acd92(2)
      acd92(63)=acd92(32)*acd92(15)
      acd92(64)=acd92(38)*acd92(4)
      acd92(65)=acd92(42)*acd92(21)
      acd92(66)=acd92(43)*acd92(23)
      acd92(62)=-acd92(44)+acd92(66)+acd92(65)+acd92(64)+acd92(63)+acd92(62)
      acd92(62)=acd92(6)*acd92(62)
      acd92(63)=acd92(16)*acd92(15)
      acd92(64)=acd92(17)*acd92(4)
      acd92(65)=acd92(22)*acd92(21)
      acd92(66)=acd92(24)*acd92(23)
      acd92(63)=-acd92(27)+acd92(66)+acd92(65)+acd92(64)+acd92(63)
      acd92(63)=acd92(2)*acd92(63)
      acd92(64)=acd92(33)*acd92(15)
      acd92(65)=acd92(39)*acd92(4)
      acd92(66)=acd92(45)*acd92(21)
      acd92(67)=acd92(46)*acd92(23)
      acd92(64)=-acd92(47)+acd92(67)+acd92(66)+acd92(65)+acd92(64)
      acd92(64)=acd92(19)*acd92(64)
      acd92(65)=acd92(34)*acd92(15)
      acd92(66)=acd92(40)*acd92(4)
      acd92(67)=acd92(48)*acd92(21)
      acd92(68)=acd92(50)*acd92(23)
      acd92(65)=-acd92(52)+acd92(68)+acd92(67)+acd92(66)+acd92(65)
      acd92(65)=acd92(25)*acd92(65)
      acd92(66)=acd92(3)*acd92(2)
      acd92(67)=acd92(5)*acd92(4)
      acd92(68)=-acd92(7)*acd92(6)
      acd92(66)=acd92(68)+acd92(66)+acd92(67)
      acd92(67)=-acd92(1)+acd92(14)+acd92(13)
      acd92(66)=acd92(67)*acd92(66)
      acd92(67)=-acd92(20)*acd92(19)
      acd92(68)=acd92(26)*acd92(25)
      acd92(67)=acd92(68)+acd92(67)
      acd92(68)=acd92(12)+acd92(10)
      acd92(69)=acd92(68)-acd92(2)
      acd92(67)=acd92(69)*acd92(67)
      acd92(69)=acd92(11)*acd92(2)
      acd92(70)=acd92(28)*acd92(6)
      acd92(69)=acd92(29)+acd92(70)+acd92(69)
      acd92(68)=acd92(68)*acd92(69)
      acd92(69)=-acd92(8)*acd92(1)
      acd92(70)=acd92(9)*acd92(2)**2
      acd92(71)=-acd92(30)*acd92(13)
      acd92(72)=-acd92(31)*acd92(14)
      acd92(73)=-acd92(35)*acd92(15)
      acd92(74)=acd92(37)*acd92(36)
      acd92(75)=-acd92(41)*acd92(4)
      acd92(76)=-acd92(49)*acd92(21)
      acd92(77)=-acd92(51)*acd92(23)
      acd92(78)=-acd92(54)*acd92(53)
      acd92(79)=-acd92(56)*acd92(55)
      acd92(80)=-acd92(58)*acd92(57)
      acd92(81)=-acd92(60)*acd92(59)
      brack=acd92(61)+acd92(62)+acd92(63)+acd92(64)+acd92(65)+acd92(66)+acd92(6&
      &7)+acd92(68)+acd92(69)+acd92(70)+acd92(71)+acd92(72)+acd92(73)+acd92(74)&
      &+acd92(75)+acd92(76)+acd92(77)+acd92(78)+acd92(79)+acd92(80)+acd92(81)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd92
      complex(ki) :: brack
      acd92(1)=k1(iv1)
      acd92(2)=dotproduct(k2,qshift)
      acd92(3)=abb92(168)
      acd92(4)=dotproduct(qshift,spvak4k2)
      acd92(5)=abb92(45)
      acd92(6)=dotproduct(qshift,spval6k2)
      acd92(7)=abb92(59)
      acd92(8)=abb92(29)
      acd92(9)=k2(iv1)
      acd92(10)=dotproduct(k1,qshift)
      acd92(11)=abb92(101)
      acd92(12)=dotproduct(k3,qshift)
      acd92(13)=abb92(109)
      acd92(14)=dotproduct(k4,qshift)
      acd92(15)=dotproduct(l5,qshift)
      acd92(16)=dotproduct(l6,qshift)
      acd92(17)=dotproduct(k7,qshift)
      acd92(18)=abb92(113)
      acd92(19)=abb92(25)
      acd92(20)=abb92(19)
      acd92(21)=dotproduct(qshift,spvak1k2)
      acd92(22)=abb92(24)
      acd92(23)=dotproduct(qshift,spvak2k7)
      acd92(24)=abb92(20)
      acd92(25)=dotproduct(qshift,spvak4k3)
      acd92(26)=abb92(15)
      acd92(27)=dotproduct(qshift,spval5k2)
      acd92(28)=abb92(89)
      acd92(29)=abb92(60)
      acd92(30)=k3(iv1)
      acd92(31)=abb92(61)
      acd92(32)=abb92(153)
      acd92(33)=k4(iv1)
      acd92(34)=l5(iv1)
      acd92(35)=abb92(73)
      acd92(36)=l6(iv1)
      acd92(37)=abb92(123)
      acd92(38)=k7(iv1)
      acd92(39)=abb92(55)
      acd92(40)=abb92(17)
      acd92(41)=abb92(80)
      acd92(42)=abb92(106)
      acd92(43)=qshift(iv1)
      acd92(44)=abb92(27)
      acd92(45)=spvak4k2(iv1)
      acd92(46)=abb92(48)
      acd92(47)=abb92(30)
      acd92(48)=abb92(41)
      acd92(49)=abb92(36)
      acd92(50)=spval6k2(iv1)
      acd92(51)=abb92(23)
      acd92(52)=abb92(35)
      acd92(53)=abb92(33)
      acd92(54)=spvak1k2(iv1)
      acd92(55)=abb92(21)
      acd92(56)=abb92(13)
      acd92(57)=abb92(14)
      acd92(58)=spvak2k7(iv1)
      acd92(59)=abb92(22)
      acd92(60)=abb92(18)
      acd92(61)=spvak4k3(iv1)
      acd92(62)=abb92(34)
      acd92(63)=abb92(16)
      acd92(64)=spval5k2(iv1)
      acd92(65)=abb92(57)
      acd92(66)=spvak1l5(iv1)
      acd92(67)=abb92(39)
      acd92(68)=spvak1l6(iv1)
      acd92(69)=abb92(43)
      acd92(70)=spval6k1(iv1)
      acd92(71)=abb92(31)
      acd92(72)=spval6l5(iv1)
      acd92(73)=abb92(28)
      acd92(74)=acd92(12)+acd92(14)
      acd92(75)=-acd92(13)*acd92(74)
      acd92(76)=-acd92(25)*acd92(26)
      acd92(77)=-acd92(23)*acd92(24)
      acd92(78)=-acd92(17)*acd92(18)
      acd92(79)=-acd92(16)+acd92(10)-acd92(15)
      acd92(80)=acd92(3)*acd92(79)
      acd92(81)=acd92(27)*acd92(28)
      acd92(82)=-acd92(21)*acd92(22)
      acd92(83)=-acd92(4)*acd92(19)
      acd92(84)=-acd92(6)*acd92(20)
      acd92(85)=acd92(2)*acd92(11)
      acd92(75)=-2.0_ki*acd92(85)+acd92(84)+acd92(83)+acd92(82)+acd92(81)+acd92&
      &(80)+acd92(78)+acd92(77)+acd92(29)+acd92(76)+acd92(75)
      acd92(75)=acd92(9)*acd92(75)
      acd92(76)=acd92(30)+acd92(33)
      acd92(77)=-acd92(13)*acd92(76)
      acd92(78)=-acd92(61)*acd92(26)
      acd92(80)=-acd92(58)*acd92(24)
      acd92(81)=-acd92(38)*acd92(18)
      acd92(82)=-acd92(36)+acd92(1)-acd92(34)
      acd92(83)=acd92(3)*acd92(82)
      acd92(84)=acd92(64)*acd92(28)
      acd92(85)=-acd92(54)*acd92(22)
      acd92(86)=-acd92(45)*acd92(19)
      acd92(87)=-acd92(50)*acd92(20)
      acd92(77)=acd92(87)+acd92(86)+acd92(85)+acd92(84)+acd92(83)+acd92(81)+acd&
      &92(78)+acd92(80)+acd92(77)
      acd92(77)=acd92(2)*acd92(77)
      acd92(78)=-acd92(31)*acd92(76)
      acd92(80)=-acd92(61)*acd92(52)
      acd92(81)=-acd92(58)*acd92(51)
      acd92(83)=-acd92(38)*acd92(39)
      acd92(84)=-acd92(7)*acd92(82)
      acd92(85)=-acd92(45)*acd92(46)
      acd92(78)=acd92(85)+acd92(84)+acd92(83)+acd92(80)+acd92(81)+acd92(78)
      acd92(78)=acd92(6)*acd92(78)
      acd92(80)=-acd92(31)*acd92(74)
      acd92(81)=-acd92(25)*acd92(52)
      acd92(83)=-acd92(23)*acd92(51)
      acd92(84)=-acd92(17)*acd92(39)
      acd92(85)=-acd92(7)*acd92(79)
      acd92(86)=-acd92(4)*acd92(46)
      acd92(80)=acd92(86)+acd92(85)+acd92(84)+acd92(83)+acd92(53)+acd92(81)+acd&
      &92(80)
      acd92(80)=acd92(50)*acd92(80)
      acd92(81)=-acd92(25)*acd92(62)
      acd92(83)=-acd92(23)*acd92(59)
      acd92(84)=-acd92(17)*acd92(41)
      acd92(85)=-acd92(28)*acd92(74)
      acd92(86)=-acd92(4)*acd92(48)
      acd92(81)=acd92(86)+acd92(85)+acd92(84)+acd92(83)+acd92(65)+acd92(81)
      acd92(81)=acd92(64)*acd92(81)
      acd92(83)=-acd92(25)*acd92(56)
      acd92(84)=-acd92(23)*acd92(55)
      acd92(85)=-acd92(17)*acd92(40)
      acd92(74)=acd92(22)*acd92(74)
      acd92(86)=-acd92(4)*acd92(47)
      acd92(74)=acd92(86)+acd92(74)+acd92(85)+acd92(84)+acd92(57)+acd92(83)
      acd92(74)=acd92(54)*acd92(74)
      acd92(83)=-acd92(61)*acd92(62)
      acd92(84)=-acd92(58)*acd92(59)
      acd92(85)=-acd92(38)*acd92(41)
      acd92(86)=-acd92(28)*acd92(76)
      acd92(83)=acd92(86)+acd92(85)+acd92(83)+acd92(84)
      acd92(83)=acd92(27)*acd92(83)
      acd92(84)=-acd92(61)*acd92(56)
      acd92(85)=-acd92(58)*acd92(55)
      acd92(86)=-acd92(38)*acd92(40)
      acd92(87)=acd92(22)*acd92(76)
      acd92(84)=acd92(87)+acd92(86)+acd92(84)+acd92(85)
      acd92(84)=acd92(21)*acd92(84)
      acd92(79)=acd92(5)*acd92(79)
      acd92(85)=-acd92(27)*acd92(48)
      acd92(86)=-acd92(21)*acd92(47)
      acd92(79)=acd92(86)+acd92(85)+acd92(49)+acd92(79)
      acd92(79)=acd92(45)*acd92(79)
      acd92(76)=-acd92(32)*acd92(76)
      acd92(85)=acd92(72)*acd92(73)
      acd92(86)=acd92(70)*acd92(71)
      acd92(87)=acd92(68)*acd92(69)
      acd92(88)=acd92(66)*acd92(67)
      acd92(89)=acd92(43)*acd92(44)
      acd92(90)=acd92(36)*acd92(37)
      acd92(91)=acd92(34)*acd92(35)
      acd92(92)=acd92(1)*acd92(8)
      acd92(93)=acd92(61)*acd92(63)
      acd92(94)=acd92(58)*acd92(60)
      acd92(95)=acd92(38)*acd92(42)
      acd92(82)=acd92(4)*acd92(5)*acd92(82)
      brack=acd92(74)+acd92(75)+acd92(76)+acd92(77)+acd92(78)+acd92(79)+acd92(8&
      &0)+acd92(81)+acd92(82)+acd92(83)+acd92(84)+acd92(85)+acd92(86)+acd92(87)&
      &+acd92(88)-2.0_ki*acd92(89)+acd92(90)+acd92(91)+acd92(92)+acd92(93)+acd9&
      &2(94)+acd92(95)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd92
      complex(ki) :: brack
      acd92(1)=d(iv1,iv2)
      acd92(2)=abb92(27)
      acd92(3)=k1(iv1)
      acd92(4)=k2(iv2)
      acd92(5)=abb92(168)
      acd92(6)=spvak4k2(iv2)
      acd92(7)=abb92(45)
      acd92(8)=spval6k2(iv2)
      acd92(9)=abb92(59)
      acd92(10)=k1(iv2)
      acd92(11)=k2(iv1)
      acd92(12)=spvak4k2(iv1)
      acd92(13)=spval6k2(iv1)
      acd92(14)=abb92(101)
      acd92(15)=k3(iv2)
      acd92(16)=abb92(109)
      acd92(17)=k4(iv2)
      acd92(18)=l5(iv2)
      acd92(19)=l6(iv2)
      acd92(20)=k7(iv2)
      acd92(21)=abb92(113)
      acd92(22)=abb92(25)
      acd92(23)=abb92(19)
      acd92(24)=spvak1k2(iv2)
      acd92(25)=abb92(24)
      acd92(26)=spvak2k7(iv2)
      acd92(27)=abb92(20)
      acd92(28)=spvak4k3(iv2)
      acd92(29)=abb92(15)
      acd92(30)=spval5k2(iv2)
      acd92(31)=abb92(89)
      acd92(32)=k3(iv1)
      acd92(33)=k4(iv1)
      acd92(34)=l5(iv1)
      acd92(35)=l6(iv1)
      acd92(36)=k7(iv1)
      acd92(37)=spvak1k2(iv1)
      acd92(38)=spvak2k7(iv1)
      acd92(39)=spvak4k3(iv1)
      acd92(40)=spval5k2(iv1)
      acd92(41)=abb92(61)
      acd92(42)=abb92(55)
      acd92(43)=abb92(17)
      acd92(44)=abb92(80)
      acd92(45)=abb92(48)
      acd92(46)=abb92(30)
      acd92(47)=abb92(41)
      acd92(48)=abb92(23)
      acd92(49)=abb92(35)
      acd92(50)=abb92(21)
      acd92(51)=abb92(13)
      acd92(52)=abb92(22)
      acd92(53)=abb92(34)
      acd92(54)=acd92(39)*acd92(29)
      acd92(55)=acd92(38)*acd92(27)
      acd92(56)=acd92(36)*acd92(21)
      acd92(57)=acd92(32)+acd92(33)
      acd92(58)=acd92(16)*acd92(57)
      acd92(59)=-acd92(35)+acd92(3)-acd92(34)
      acd92(60)=-acd92(5)*acd92(59)
      acd92(61)=-acd92(40)*acd92(31)
      acd92(62)=acd92(37)*acd92(25)
      acd92(63)=acd92(12)*acd92(22)
      acd92(64)=acd92(13)*acd92(23)
      acd92(65)=acd92(11)*acd92(14)
      acd92(54)=2.0_ki*acd92(65)+acd92(64)+acd92(63)+acd92(62)+acd92(61)+acd92(&
      &60)+acd92(58)+acd92(56)+acd92(54)+acd92(55)
      acd92(54)=acd92(4)*acd92(54)
      acd92(55)=acd92(15)+acd92(17)
      acd92(56)=acd92(16)*acd92(55)
      acd92(58)=acd92(28)*acd92(29)
      acd92(60)=acd92(26)*acd92(27)
      acd92(61)=acd92(20)*acd92(21)
      acd92(62)=-acd92(19)+acd92(10)-acd92(18)
      acd92(63)=-acd92(5)*acd92(62)
      acd92(64)=-acd92(30)*acd92(31)
      acd92(65)=acd92(24)*acd92(25)
      acd92(66)=acd92(6)*acd92(22)
      acd92(67)=acd92(8)*acd92(23)
      acd92(56)=acd92(67)+acd92(66)+acd92(65)+acd92(64)+acd92(63)+acd92(61)+acd&
      &92(58)+acd92(60)+acd92(56)
      acd92(56)=acd92(11)*acd92(56)
      acd92(58)=acd92(41)*acd92(55)
      acd92(60)=acd92(28)*acd92(49)
      acd92(61)=acd92(26)*acd92(48)
      acd92(63)=acd92(20)*acd92(42)
      acd92(64)=acd92(9)*acd92(62)
      acd92(65)=acd92(6)*acd92(45)
      acd92(58)=acd92(65)+acd92(64)+acd92(63)+acd92(60)+acd92(61)+acd92(58)
      acd92(58)=acd92(13)*acd92(58)
      acd92(60)=acd92(41)*acd92(57)
      acd92(61)=acd92(39)*acd92(49)
      acd92(63)=acd92(38)*acd92(48)
      acd92(64)=acd92(36)*acd92(42)
      acd92(65)=acd92(9)*acd92(59)
      acd92(66)=acd92(12)*acd92(45)
      acd92(60)=acd92(66)+acd92(65)+acd92(64)+acd92(61)+acd92(63)+acd92(60)
      acd92(60)=acd92(8)*acd92(60)
      acd92(61)=acd92(28)*acd92(53)
      acd92(63)=acd92(26)*acd92(52)
      acd92(64)=acd92(20)*acd92(44)
      acd92(65)=acd92(31)*acd92(55)
      acd92(61)=acd92(65)+acd92(64)+acd92(61)+acd92(63)
      acd92(61)=acd92(40)*acd92(61)
      acd92(63)=acd92(28)*acd92(51)
      acd92(64)=acd92(26)*acd92(50)
      acd92(65)=acd92(20)*acd92(43)
      acd92(55)=-acd92(25)*acd92(55)
      acd92(55)=acd92(55)+acd92(65)+acd92(63)+acd92(64)
      acd92(55)=acd92(37)*acd92(55)
      acd92(63)=acd92(39)*acd92(53)
      acd92(64)=acd92(38)*acd92(52)
      acd92(65)=acd92(36)*acd92(44)
      acd92(66)=acd92(31)*acd92(57)
      acd92(63)=acd92(66)+acd92(65)+acd92(63)+acd92(64)
      acd92(63)=acd92(30)*acd92(63)
      acd92(64)=acd92(39)*acd92(51)
      acd92(65)=acd92(38)*acd92(50)
      acd92(66)=acd92(36)*acd92(43)
      acd92(57)=-acd92(25)*acd92(57)
      acd92(57)=acd92(57)+acd92(66)+acd92(64)+acd92(65)
      acd92(57)=acd92(24)*acd92(57)
      acd92(62)=-acd92(7)*acd92(62)
      acd92(64)=acd92(30)*acd92(47)
      acd92(65)=acd92(24)*acd92(46)
      acd92(62)=acd92(65)+acd92(62)+acd92(64)
      acd92(62)=acd92(12)*acd92(62)
      acd92(59)=-acd92(7)*acd92(59)
      acd92(64)=acd92(40)*acd92(47)
      acd92(65)=acd92(37)*acd92(46)
      acd92(59)=acd92(65)+acd92(59)+acd92(64)
      acd92(59)=acd92(6)*acd92(59)
      acd92(64)=acd92(1)*acd92(2)
      brack=acd92(54)+acd92(55)+acd92(56)+acd92(57)+acd92(58)+acd92(59)+acd92(6&
      &0)+acd92(61)+acd92(62)+acd92(63)+2.0_ki*acd92(64)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k6+k5
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d92:
   subroutine     reconstruct_d92(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_92:
      coeffs%coeffs_92%c0 = derivative(czip)
      coeffs%coeffs_92%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_92%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_92%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_92%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_92%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_92%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_92%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_92%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_92%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_92%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_92%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_92%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_92%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_92%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_92:
   end subroutine reconstruct_d92
!---#] subroutine reconstruct_d92:
end module     p0_dbaru_epnebbbarg_d92h0l1d
