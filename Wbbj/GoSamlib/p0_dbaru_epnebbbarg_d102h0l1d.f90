module     p0_dbaru_epnebbbarg_d102h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d102h0l1d.f90
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
   public :: derivative , reconstruct_d102
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd102
      complex(ki) :: brack
      acd102(1)=dotproduct(k2,qshift)
      acd102(2)=dotproduct(k3,qshift)
      acd102(3)=abb102(19)
      acd102(4)=dotproduct(k4,qshift)
      acd102(5)=dotproduct(qshift,qshift)
      acd102(6)=abb102(16)
      acd102(7)=dotproduct(qshift,spvak4k3)
      acd102(8)=abb102(44)
      acd102(9)=dotproduct(qshift,spvak1k7)
      acd102(10)=abb102(28)
      acd102(11)=dotproduct(qshift,spvak4k2)
      acd102(12)=abb102(15)
      acd102(13)=dotproduct(qshift,spval5k7)
      acd102(14)=abb102(41)
      acd102(15)=dotproduct(qshift,spval6k7)
      acd102(16)=abb102(36)
      acd102(17)=abb102(33)
      acd102(18)=abb102(12)
      acd102(19)=abb102(31)
      acd102(20)=abb102(35)
      acd102(21)=dotproduct(qshift,spvak2k7)
      acd102(22)=abb102(14)
      acd102(23)=abb102(23)
      acd102(24)=abb102(21)
      acd102(25)=abb102(18)
      acd102(26)=abb102(49)
      acd102(27)=abb102(22)
      acd102(28)=dotproduct(qshift,spvak1k2)
      acd102(29)=abb102(11)
      acd102(30)=dotproduct(qshift,spval5k2)
      acd102(31)=abb102(24)
      acd102(32)=dotproduct(qshift,spval6k2)
      acd102(33)=abb102(20)
      acd102(34)=dotproduct(qshift,spvak1k3)
      acd102(35)=abb102(37)
      acd102(36)=dotproduct(qshift,spvak1k4)
      acd102(37)=abb102(50)
      acd102(38)=dotproduct(qshift,spval5k3)
      acd102(39)=abb102(45)
      acd102(40)=dotproduct(qshift,spval6k3)
      acd102(41)=abb102(48)
      acd102(42)=dotproduct(qshift,spvak3k2)
      acd102(43)=dotproduct(qshift,spval5k4)
      acd102(44)=abb102(29)
      acd102(45)=dotproduct(qshift,spval6k4)
      acd102(46)=abb102(26)
      acd102(47)=abb102(10)
      acd102(48)=abb102(46)
      acd102(49)=abb102(30)
      acd102(50)=abb102(32)
      acd102(51)=abb102(25)
      acd102(52)=abb102(17)
      acd102(53)=abb102(13)
      acd102(54)=abb102(39)
      acd102(55)=abb102(34)
      acd102(56)=abb102(43)
      acd102(57)=abb102(40)
      acd102(58)=abb102(9)
      acd102(59)=abb102(42)
      acd102(60)=abb102(38)
      acd102(61)=-acd102(42)*acd102(12)
      acd102(62)=acd102(8)*acd102(1)
      acd102(63)=acd102(24)*acd102(9)
      acd102(64)=acd102(25)*acd102(11)
      acd102(65)=acd102(26)*acd102(13)
      acd102(66)=acd102(27)*acd102(15)
      acd102(67)=acd102(35)*acd102(34)
      acd102(68)=acd102(37)*acd102(36)
      acd102(69)=acd102(39)*acd102(38)
      acd102(70)=acd102(41)*acd102(40)
      acd102(71)=acd102(44)*acd102(43)
      acd102(72)=acd102(46)*acd102(45)
      acd102(61)=acd102(72)+acd102(71)+acd102(70)+acd102(69)+acd102(68)+acd102(&
      &67)+acd102(66)+acd102(65)+acd102(64)+acd102(63)+acd102(62)+acd102(61)
      acd102(61)=acd102(7)*acd102(61)
      acd102(62)=-acd102(6)*acd102(1)
      acd102(63)=-acd102(17)*acd102(9)
      acd102(64)=-acd102(18)*acd102(11)
      acd102(65)=-acd102(19)*acd102(13)
      acd102(66)=-acd102(20)*acd102(15)
      acd102(67)=-acd102(22)*acd102(21)
      acd102(62)=acd102(23)+acd102(67)+acd102(66)+acd102(65)+acd102(64)+acd102(&
      &63)+acd102(62)
      acd102(62)=acd102(5)*acd102(62)
      acd102(63)=acd102(12)*acd102(11)
      acd102(64)=acd102(3)*acd102(1)
      acd102(65)=acd102(10)*acd102(9)
      acd102(66)=acd102(14)*acd102(13)
      acd102(67)=acd102(16)*acd102(15)
      acd102(63)=acd102(67)+acd102(66)+acd102(65)+acd102(63)+acd102(64)
      acd102(64)=acd102(4)+acd102(2)
      acd102(63)=acd102(64)*acd102(63)
      acd102(64)=acd102(29)*acd102(28)
      acd102(65)=acd102(31)*acd102(30)
      acd102(66)=acd102(33)*acd102(32)
      acd102(64)=acd102(66)+acd102(65)+acd102(64)
      acd102(64)=acd102(64)*acd102(7)
      acd102(65)=acd102(51)*acd102(34)
      acd102(66)=acd102(52)*acd102(38)
      acd102(67)=acd102(53)*acd102(40)
      acd102(64)=acd102(64)+acd102(67)+acd102(66)+acd102(65)
      acd102(64)=acd102(21)*acd102(64)
      acd102(65)=-acd102(47)*acd102(9)
      acd102(66)=-acd102(48)*acd102(11)
      acd102(67)=-acd102(49)*acd102(13)
      acd102(68)=-acd102(50)*acd102(15)
      acd102(69)=-acd102(54)*acd102(34)
      acd102(70)=-acd102(55)*acd102(36)
      acd102(71)=-acd102(56)*acd102(38)
      acd102(72)=-acd102(57)*acd102(40)
      acd102(73)=-acd102(58)*acd102(42)
      acd102(74)=-acd102(59)*acd102(43)
      acd102(75)=-acd102(60)*acd102(45)
      brack=acd102(61)+acd102(62)+acd102(63)+acd102(64)+acd102(65)+acd102(66)+a&
      &cd102(67)+acd102(68)+acd102(69)+acd102(70)+acd102(71)+acd102(72)+acd102(&
      &73)+acd102(74)+acd102(75)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(100) :: acd102
      complex(ki) :: brack
      acd102(1)=k2(iv1)
      acd102(2)=dotproduct(k3,qshift)
      acd102(3)=abb102(19)
      acd102(4)=dotproduct(k4,qshift)
      acd102(5)=dotproduct(qshift,qshift)
      acd102(6)=abb102(16)
      acd102(7)=dotproduct(qshift,spvak4k3)
      acd102(8)=abb102(44)
      acd102(9)=k3(iv1)
      acd102(10)=dotproduct(k2,qshift)
      acd102(11)=dotproduct(qshift,spvak1k7)
      acd102(12)=abb102(28)
      acd102(13)=dotproduct(qshift,spvak4k2)
      acd102(14)=abb102(15)
      acd102(15)=dotproduct(qshift,spval5k7)
      acd102(16)=abb102(41)
      acd102(17)=dotproduct(qshift,spval6k7)
      acd102(18)=abb102(36)
      acd102(19)=k4(iv1)
      acd102(20)=qshift(iv1)
      acd102(21)=abb102(33)
      acd102(22)=abb102(12)
      acd102(23)=abb102(31)
      acd102(24)=abb102(35)
      acd102(25)=dotproduct(qshift,spvak2k7)
      acd102(26)=abb102(14)
      acd102(27)=abb102(23)
      acd102(28)=spvak4k3(iv1)
      acd102(29)=abb102(21)
      acd102(30)=abb102(18)
      acd102(31)=abb102(49)
      acd102(32)=abb102(22)
      acd102(33)=dotproduct(qshift,spvak1k2)
      acd102(34)=abb102(11)
      acd102(35)=dotproduct(qshift,spval5k2)
      acd102(36)=abb102(24)
      acd102(37)=dotproduct(qshift,spval6k2)
      acd102(38)=abb102(20)
      acd102(39)=dotproduct(qshift,spvak1k3)
      acd102(40)=abb102(37)
      acd102(41)=dotproduct(qshift,spvak1k4)
      acd102(42)=abb102(50)
      acd102(43)=dotproduct(qshift,spval5k3)
      acd102(44)=abb102(45)
      acd102(45)=dotproduct(qshift,spval6k3)
      acd102(46)=abb102(48)
      acd102(47)=dotproduct(qshift,spvak3k2)
      acd102(48)=dotproduct(qshift,spval5k4)
      acd102(49)=abb102(29)
      acd102(50)=dotproduct(qshift,spval6k4)
      acd102(51)=abb102(26)
      acd102(52)=spvak1k7(iv1)
      acd102(53)=abb102(10)
      acd102(54)=spvak4k2(iv1)
      acd102(55)=abb102(46)
      acd102(56)=spval5k7(iv1)
      acd102(57)=abb102(30)
      acd102(58)=spval6k7(iv1)
      acd102(59)=abb102(32)
      acd102(60)=spvak2k7(iv1)
      acd102(61)=abb102(25)
      acd102(62)=abb102(17)
      acd102(63)=abb102(13)
      acd102(64)=spvak1k2(iv1)
      acd102(65)=spvak1k3(iv1)
      acd102(66)=abb102(39)
      acd102(67)=spvak1k4(iv1)
      acd102(68)=abb102(34)
      acd102(69)=spval5k2(iv1)
      acd102(70)=spval6k2(iv1)
      acd102(71)=spval5k3(iv1)
      acd102(72)=abb102(43)
      acd102(73)=spval6k3(iv1)
      acd102(74)=abb102(40)
      acd102(75)=spvak3k2(iv1)
      acd102(76)=abb102(9)
      acd102(77)=spval5k4(iv1)
      acd102(78)=abb102(42)
      acd102(79)=spval6k4(iv1)
      acd102(80)=abb102(38)
      acd102(81)=acd102(38)*acd102(37)
      acd102(82)=acd102(36)*acd102(35)
      acd102(83)=acd102(34)*acd102(33)
      acd102(81)=acd102(83)+acd102(81)+acd102(82)
      acd102(82)=acd102(60)*acd102(81)
      acd102(83)=acd102(38)*acd102(70)
      acd102(84)=acd102(36)*acd102(69)
      acd102(85)=acd102(34)*acd102(64)
      acd102(83)=acd102(85)+acd102(83)+acd102(84)
      acd102(83)=acd102(25)*acd102(83)
      acd102(84)=acd102(51)*acd102(79)
      acd102(85)=acd102(49)*acd102(77)
      acd102(86)=acd102(42)*acd102(67)
      acd102(87)=acd102(73)*acd102(46)
      acd102(88)=acd102(71)*acd102(44)
      acd102(89)=acd102(65)*acd102(40)
      acd102(90)=acd102(1)*acd102(8)
      acd102(91)=acd102(58)*acd102(32)
      acd102(92)=acd102(56)*acd102(31)
      acd102(93)=acd102(54)*acd102(30)
      acd102(94)=acd102(52)*acd102(29)
      acd102(95)=-acd102(14)*acd102(75)
      acd102(82)=acd102(83)+acd102(82)+acd102(95)+acd102(94)+acd102(93)+acd102(&
      &92)+acd102(91)+acd102(90)+acd102(89)+acd102(88)+acd102(87)+acd102(86)+ac&
      &d102(84)+acd102(85)
      acd102(82)=acd102(7)*acd102(82)
      acd102(81)=acd102(25)*acd102(81)
      acd102(83)=acd102(51)*acd102(50)
      acd102(84)=acd102(49)*acd102(48)
      acd102(85)=acd102(45)*acd102(46)
      acd102(86)=acd102(43)*acd102(44)
      acd102(87)=acd102(42)*acd102(41)
      acd102(88)=acd102(39)*acd102(40)
      acd102(89)=acd102(17)*acd102(32)
      acd102(90)=acd102(15)*acd102(31)
      acd102(91)=acd102(13)*acd102(30)
      acd102(92)=acd102(11)*acd102(29)
      acd102(93)=acd102(10)*acd102(8)
      acd102(94)=-acd102(14)*acd102(47)
      acd102(81)=acd102(81)+acd102(94)+acd102(93)+acd102(92)+acd102(91)+acd102(&
      &90)+acd102(89)+acd102(88)+acd102(87)+acd102(86)+acd102(85)+acd102(83)+ac&
      &d102(84)
      acd102(81)=acd102(28)*acd102(81)
      acd102(83)=-acd102(1)*acd102(6)
      acd102(84)=-acd102(58)*acd102(24)
      acd102(85)=-acd102(56)*acd102(23)
      acd102(86)=-acd102(54)*acd102(22)
      acd102(87)=-acd102(52)*acd102(21)
      acd102(83)=acd102(87)+acd102(86)+acd102(85)+acd102(83)+acd102(84)
      acd102(83)=acd102(5)*acd102(83)
      acd102(84)=-acd102(17)*acd102(24)
      acd102(85)=-acd102(15)*acd102(23)
      acd102(86)=-acd102(13)*acd102(22)
      acd102(87)=-acd102(11)*acd102(21)
      acd102(88)=-acd102(10)*acd102(6)
      acd102(84)=acd102(88)+acd102(87)+acd102(86)+acd102(85)+acd102(27)+acd102(&
      &84)
      acd102(85)=2.0_ki*acd102(20)
      acd102(84)=acd102(84)*acd102(85)
      acd102(86)=acd102(1)*acd102(3)
      acd102(87)=acd102(58)*acd102(18)
      acd102(88)=acd102(56)*acd102(16)
      acd102(89)=acd102(52)*acd102(12)
      acd102(86)=acd102(86)+acd102(87)+acd102(88)+acd102(89)
      acd102(87)=acd102(2)+acd102(4)
      acd102(86)=acd102(86)*acd102(87)
      acd102(88)=acd102(17)*acd102(18)
      acd102(89)=acd102(15)*acd102(16)
      acd102(90)=acd102(11)*acd102(12)
      acd102(91)=acd102(3)*acd102(10)
      acd102(88)=acd102(88)+acd102(89)+acd102(90)+acd102(91)
      acd102(89)=acd102(9)+acd102(19)
      acd102(88)=acd102(88)*acd102(89)
      acd102(90)=acd102(45)*acd102(63)
      acd102(91)=acd102(43)*acd102(62)
      acd102(92)=acd102(39)*acd102(61)
      acd102(93)=-acd102(5)*acd102(26)
      acd102(90)=acd102(93)+acd102(92)+acd102(90)+acd102(91)
      acd102(90)=acd102(60)*acd102(90)
      acd102(91)=acd102(73)*acd102(63)
      acd102(92)=acd102(71)*acd102(62)
      acd102(93)=acd102(65)*acd102(61)
      acd102(85)=-acd102(26)*acd102(85)
      acd102(85)=acd102(85)+acd102(93)+acd102(91)+acd102(92)
      acd102(85)=acd102(25)*acd102(85)
      acd102(89)=acd102(13)*acd102(89)
      acd102(87)=acd102(54)*acd102(87)
      acd102(87)=acd102(87)+acd102(89)
      acd102(87)=acd102(14)*acd102(87)
      acd102(89)=-acd102(79)*acd102(80)
      acd102(91)=-acd102(77)*acd102(78)
      acd102(92)=-acd102(75)*acd102(76)
      acd102(93)=-acd102(67)*acd102(68)
      acd102(94)=-acd102(73)*acd102(74)
      acd102(95)=-acd102(71)*acd102(72)
      acd102(96)=-acd102(65)*acd102(66)
      acd102(97)=-acd102(58)*acd102(59)
      acd102(98)=-acd102(56)*acd102(57)
      acd102(99)=-acd102(54)*acd102(55)
      acd102(100)=-acd102(52)*acd102(53)
      brack=acd102(81)+acd102(82)+acd102(83)+acd102(84)+acd102(85)+acd102(86)+a&
      &cd102(87)+acd102(88)+acd102(89)+acd102(90)+acd102(91)+acd102(92)+acd102(&
      &93)+acd102(94)+acd102(95)+acd102(96)+acd102(97)+acd102(98)+acd102(99)+ac&
      &d102(100)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd102
      complex(ki) :: brack
      acd102(1)=d(iv1,iv2)
      acd102(2)=dotproduct(k2,qshift)
      acd102(3)=abb102(16)
      acd102(4)=dotproduct(qshift,spvak1k7)
      acd102(5)=abb102(33)
      acd102(6)=dotproduct(qshift,spvak2k7)
      acd102(7)=abb102(14)
      acd102(8)=dotproduct(qshift,spvak4k2)
      acd102(9)=abb102(12)
      acd102(10)=dotproduct(qshift,spval5k7)
      acd102(11)=abb102(31)
      acd102(12)=dotproduct(qshift,spval6k7)
      acd102(13)=abb102(35)
      acd102(14)=abb102(23)
      acd102(15)=k2(iv1)
      acd102(16)=k3(iv2)
      acd102(17)=abb102(19)
      acd102(18)=k4(iv2)
      acd102(19)=qshift(iv2)
      acd102(20)=spvak4k3(iv2)
      acd102(21)=abb102(44)
      acd102(22)=k2(iv2)
      acd102(23)=k3(iv1)
      acd102(24)=k4(iv1)
      acd102(25)=qshift(iv1)
      acd102(26)=spvak4k3(iv1)
      acd102(27)=spvak1k7(iv2)
      acd102(28)=abb102(28)
      acd102(29)=spvak4k2(iv2)
      acd102(30)=abb102(15)
      acd102(31)=spval5k7(iv2)
      acd102(32)=abb102(41)
      acd102(33)=spval6k7(iv2)
      acd102(34)=abb102(36)
      acd102(35)=spvak1k7(iv1)
      acd102(36)=spvak4k2(iv1)
      acd102(37)=spval5k7(iv1)
      acd102(38)=spval6k7(iv1)
      acd102(39)=spvak2k7(iv2)
      acd102(40)=spvak2k7(iv1)
      acd102(41)=abb102(21)
      acd102(42)=dotproduct(qshift,spvak1k2)
      acd102(43)=abb102(11)
      acd102(44)=dotproduct(qshift,spval5k2)
      acd102(45)=abb102(24)
      acd102(46)=dotproduct(qshift,spval6k2)
      acd102(47)=abb102(20)
      acd102(48)=spvak1k2(iv2)
      acd102(49)=dotproduct(qshift,spvak4k3)
      acd102(50)=spvak1k3(iv2)
      acd102(51)=abb102(25)
      acd102(52)=spval5k2(iv2)
      acd102(53)=spval6k2(iv2)
      acd102(54)=spval5k3(iv2)
      acd102(55)=abb102(17)
      acd102(56)=spval6k3(iv2)
      acd102(57)=abb102(13)
      acd102(58)=spvak1k2(iv1)
      acd102(59)=spvak1k3(iv1)
      acd102(60)=spval5k2(iv1)
      acd102(61)=spval6k2(iv1)
      acd102(62)=spval5k3(iv1)
      acd102(63)=spval6k3(iv1)
      acd102(64)=abb102(18)
      acd102(65)=abb102(49)
      acd102(66)=abb102(22)
      acd102(67)=abb102(37)
      acd102(68)=spvak1k4(iv2)
      acd102(69)=abb102(50)
      acd102(70)=abb102(45)
      acd102(71)=abb102(48)
      acd102(72)=spvak3k2(iv2)
      acd102(73)=spval5k4(iv2)
      acd102(74)=abb102(29)
      acd102(75)=spval6k4(iv2)
      acd102(76)=abb102(26)
      acd102(77)=spvak1k4(iv1)
      acd102(78)=spvak3k2(iv1)
      acd102(79)=spval5k4(iv1)
      acd102(80)=spval6k4(iv1)
      acd102(81)=acd102(47)*acd102(53)
      acd102(82)=acd102(45)*acd102(52)
      acd102(83)=acd102(43)*acd102(48)
      acd102(81)=acd102(83)+acd102(81)+acd102(82)
      acd102(81)=acd102(6)*acd102(81)
      acd102(82)=acd102(47)*acd102(46)
      acd102(83)=acd102(45)*acd102(44)
      acd102(84)=acd102(43)*acd102(42)
      acd102(82)=acd102(84)+acd102(82)+acd102(83)
      acd102(83)=acd102(39)*acd102(82)
      acd102(84)=acd102(76)*acd102(75)
      acd102(85)=acd102(74)*acd102(73)
      acd102(86)=acd102(69)*acd102(68)
      acd102(87)=acd102(56)*acd102(71)
      acd102(88)=acd102(54)*acd102(70)
      acd102(89)=acd102(50)*acd102(67)
      acd102(90)=acd102(33)*acd102(66)
      acd102(91)=acd102(31)*acd102(65)
      acd102(92)=acd102(29)*acd102(64)
      acd102(93)=acd102(27)*acd102(41)
      acd102(94)=acd102(22)*acd102(21)
      acd102(95)=-acd102(30)*acd102(72)
      acd102(81)=acd102(83)+acd102(81)+acd102(95)+acd102(94)+acd102(93)+acd102(&
      &92)+acd102(91)+acd102(90)+acd102(89)+acd102(88)+acd102(87)+acd102(86)+ac&
      &d102(84)+acd102(85)
      acd102(81)=acd102(26)*acd102(81)
      acd102(83)=acd102(47)*acd102(61)
      acd102(84)=acd102(45)*acd102(60)
      acd102(85)=acd102(43)*acd102(58)
      acd102(83)=acd102(85)+acd102(83)+acd102(84)
      acd102(83)=acd102(6)*acd102(83)
      acd102(82)=acd102(40)*acd102(82)
      acd102(84)=acd102(76)*acd102(80)
      acd102(85)=acd102(74)*acd102(79)
      acd102(86)=acd102(69)*acd102(77)
      acd102(87)=acd102(63)*acd102(71)
      acd102(88)=acd102(62)*acd102(70)
      acd102(89)=acd102(59)*acd102(67)
      acd102(90)=acd102(38)*acd102(66)
      acd102(91)=acd102(37)*acd102(65)
      acd102(92)=acd102(36)*acd102(64)
      acd102(93)=acd102(35)*acd102(41)
      acd102(94)=acd102(15)*acd102(21)
      acd102(95)=-acd102(30)*acd102(78)
      acd102(82)=acd102(82)+acd102(83)+acd102(95)+acd102(94)+acd102(93)+acd102(&
      &92)+acd102(91)+acd102(90)+acd102(89)+acd102(88)+acd102(87)+acd102(86)+ac&
      &d102(84)+acd102(85)
      acd102(82)=acd102(20)*acd102(82)
      acd102(83)=acd102(56)*acd102(57)
      acd102(84)=acd102(54)*acd102(55)
      acd102(85)=acd102(50)*acd102(51)
      acd102(86)=acd102(47)*acd102(49)
      acd102(87)=acd102(53)*acd102(86)
      acd102(88)=acd102(45)*acd102(49)
      acd102(89)=acd102(52)*acd102(88)
      acd102(90)=acd102(43)*acd102(49)
      acd102(91)=acd102(48)*acd102(90)
      acd102(92)=2.0_ki*acd102(19)
      acd102(93)=-acd102(7)*acd102(92)
      acd102(83)=acd102(93)+acd102(91)+acd102(89)+acd102(87)+acd102(85)+acd102(&
      &83)+acd102(84)
      acd102(83)=acd102(40)*acd102(83)
      acd102(84)=acd102(57)*acd102(63)
      acd102(85)=acd102(55)*acd102(62)
      acd102(87)=acd102(51)*acd102(59)
      acd102(86)=acd102(61)*acd102(86)
      acd102(88)=acd102(60)*acd102(88)
      acd102(89)=acd102(58)*acd102(90)
      acd102(90)=2.0_ki*acd102(25)
      acd102(91)=-acd102(7)*acd102(90)
      acd102(84)=acd102(91)+acd102(89)+acd102(88)+acd102(86)+acd102(87)+acd102(&
      &84)+acd102(85)
      acd102(84)=acd102(39)*acd102(84)
      acd102(85)=-acd102(13)*acd102(12)
      acd102(86)=-acd102(11)*acd102(10)
      acd102(87)=-acd102(9)*acd102(8)
      acd102(88)=-acd102(5)*acd102(4)
      acd102(89)=-acd102(3)*acd102(2)
      acd102(91)=-acd102(6)*acd102(7)
      acd102(85)=acd102(91)+acd102(89)+acd102(88)+acd102(87)+acd102(86)+acd102(&
      &14)+acd102(85)
      acd102(85)=acd102(1)*acd102(85)
      acd102(86)=-acd102(33)*acd102(13)
      acd102(87)=-acd102(31)*acd102(11)
      acd102(88)=-acd102(29)*acd102(9)
      acd102(89)=-acd102(27)*acd102(5)
      acd102(91)=-acd102(22)*acd102(3)
      acd102(86)=acd102(91)+acd102(89)+acd102(88)+acd102(86)+acd102(87)
      acd102(86)=acd102(86)*acd102(90)
      acd102(87)=-acd102(38)*acd102(13)
      acd102(88)=-acd102(37)*acd102(11)
      acd102(89)=-acd102(36)*acd102(9)
      acd102(90)=-acd102(35)*acd102(5)
      acd102(91)=-acd102(15)*acd102(3)
      acd102(87)=acd102(91)+acd102(90)+acd102(89)+acd102(87)+acd102(88)
      acd102(87)=acd102(87)*acd102(92)
      acd102(88)=acd102(33)*acd102(34)
      acd102(89)=acd102(31)*acd102(32)
      acd102(90)=acd102(27)*acd102(28)
      acd102(91)=acd102(17)*acd102(22)
      acd102(88)=acd102(88)+acd102(89)+acd102(90)+acd102(91)
      acd102(89)=acd102(23)+acd102(24)
      acd102(88)=acd102(88)*acd102(89)
      acd102(90)=acd102(34)*acd102(38)
      acd102(91)=acd102(32)*acd102(37)
      acd102(92)=acd102(28)*acd102(35)
      acd102(93)=acd102(15)*acd102(17)
      acd102(90)=acd102(90)+acd102(91)+acd102(92)+acd102(93)
      acd102(91)=acd102(16)+acd102(18)
      acd102(90)=acd102(90)*acd102(91)
      acd102(91)=acd102(36)*acd102(91)
      acd102(89)=acd102(29)*acd102(89)
      acd102(89)=acd102(89)+acd102(91)
      acd102(89)=acd102(30)*acd102(89)
      brack=acd102(81)+acd102(82)+acd102(83)+acd102(84)+2.0_ki*acd102(85)+acd10&
      &2(86)+acd102(87)+acd102(88)+acd102(89)+acd102(90)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd102
      complex(ki) :: brack
      acd102(1)=d(iv1,iv2)
      acd102(2)=k2(iv3)
      acd102(3)=abb102(16)
      acd102(4)=spvak1k7(iv3)
      acd102(5)=abb102(33)
      acd102(6)=spvak2k7(iv3)
      acd102(7)=abb102(14)
      acd102(8)=spvak4k2(iv3)
      acd102(9)=abb102(12)
      acd102(10)=spval5k7(iv3)
      acd102(11)=abb102(31)
      acd102(12)=spval6k7(iv3)
      acd102(13)=abb102(35)
      acd102(14)=d(iv1,iv3)
      acd102(15)=k2(iv2)
      acd102(16)=spvak1k7(iv2)
      acd102(17)=spvak2k7(iv2)
      acd102(18)=spvak4k2(iv2)
      acd102(19)=spval5k7(iv2)
      acd102(20)=spval6k7(iv2)
      acd102(21)=d(iv2,iv3)
      acd102(22)=k2(iv1)
      acd102(23)=spvak1k7(iv1)
      acd102(24)=spvak2k7(iv1)
      acd102(25)=spvak4k2(iv1)
      acd102(26)=spval5k7(iv1)
      acd102(27)=spval6k7(iv1)
      acd102(28)=spvak1k2(iv2)
      acd102(29)=spvak4k3(iv3)
      acd102(30)=abb102(11)
      acd102(31)=spvak1k2(iv3)
      acd102(32)=spvak4k3(iv2)
      acd102(33)=spval5k2(iv3)
      acd102(34)=abb102(24)
      acd102(35)=spval6k2(iv3)
      acd102(36)=abb102(20)
      acd102(37)=spval5k2(iv2)
      acd102(38)=spval6k2(iv2)
      acd102(39)=spvak1k2(iv1)
      acd102(40)=spvak4k3(iv1)
      acd102(41)=spval5k2(iv1)
      acd102(42)=spval6k2(iv1)
      acd102(43)=-acd102(22)*acd102(3)
      acd102(44)=-acd102(23)*acd102(5)
      acd102(45)=-acd102(25)*acd102(9)
      acd102(46)=-acd102(26)*acd102(11)
      acd102(47)=-acd102(27)*acd102(13)
      acd102(43)=acd102(47)+acd102(46)+acd102(45)+acd102(44)+acd102(43)
      acd102(44)=2.0_ki*acd102(21)
      acd102(43)=acd102(44)*acd102(43)
      acd102(44)=-acd102(15)*acd102(3)
      acd102(45)=-acd102(16)*acd102(5)
      acd102(46)=-acd102(18)*acd102(9)
      acd102(47)=-acd102(19)*acd102(11)
      acd102(48)=-acd102(20)*acd102(13)
      acd102(44)=acd102(48)+acd102(47)+acd102(46)+acd102(45)+acd102(44)
      acd102(45)=2.0_ki*acd102(14)
      acd102(44)=acd102(45)*acd102(44)
      acd102(45)=-acd102(2)*acd102(3)
      acd102(46)=-acd102(4)*acd102(5)
      acd102(47)=-acd102(8)*acd102(9)
      acd102(48)=-acd102(10)*acd102(11)
      acd102(49)=-acd102(12)*acd102(13)
      acd102(45)=acd102(49)+acd102(48)+acd102(47)+acd102(46)+acd102(45)
      acd102(46)=2.0_ki*acd102(1)
      acd102(45)=acd102(46)*acd102(45)
      acd102(46)=acd102(39)*acd102(30)
      acd102(47)=acd102(41)*acd102(34)
      acd102(48)=acd102(42)*acd102(36)
      acd102(46)=acd102(46)+acd102(48)+acd102(47)
      acd102(47)=acd102(29)*acd102(17)
      acd102(48)=acd102(32)*acd102(6)
      acd102(47)=acd102(47)+acd102(48)
      acd102(46)=acd102(47)*acd102(46)
      acd102(47)=acd102(28)*acd102(30)
      acd102(48)=acd102(37)*acd102(34)
      acd102(49)=acd102(38)*acd102(36)
      acd102(47)=acd102(49)+acd102(48)+acd102(47)
      acd102(48)=acd102(29)*acd102(24)
      acd102(49)=acd102(40)*acd102(6)
      acd102(48)=acd102(48)+acd102(49)
      acd102(47)=acd102(48)*acd102(47)
      acd102(48)=acd102(31)*acd102(30)
      acd102(49)=acd102(33)*acd102(34)
      acd102(50)=acd102(35)*acd102(36)
      acd102(48)=acd102(50)+acd102(49)+acd102(48)
      acd102(49)=acd102(32)*acd102(24)
      acd102(50)=acd102(40)*acd102(17)
      acd102(49)=acd102(49)+acd102(50)
      acd102(48)=acd102(49)*acd102(48)
      acd102(49)=-acd102(1)*acd102(6)
      acd102(50)=-acd102(14)*acd102(17)
      acd102(51)=-acd102(21)*acd102(24)
      acd102(49)=acd102(51)+acd102(49)+acd102(50)
      acd102(49)=acd102(7)*acd102(49)
      brack=acd102(43)+acd102(44)+acd102(45)+acd102(46)+acd102(47)+acd102(48)+2&
      &.0_ki*acd102(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd102h0
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
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_102:
      coeffs%coeffs_102%c0 = derivative(czip)
      coeffs%coeffs_102%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_102%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_102%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_102%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_102%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_102%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_102%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_102%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_102%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_102%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_102%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_102%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_102%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_102%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_102%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_102%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_102%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_102%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_102%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_102%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_102%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_102%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_102%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_102%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_102%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_102%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_102%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_102%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_102%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_102%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_102%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_102%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_102%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_102%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_102:
   end subroutine reconstruct_d102
!---#] subroutine reconstruct_d102:
end module     p0_dbaru_epnebbbarg_d102h0l1d
