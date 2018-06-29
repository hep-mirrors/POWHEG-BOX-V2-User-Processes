module     p8_cbarc_epnemumnmubarg_d573h2l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity2d573h2l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d573
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd573h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd573
      complex(ki) :: brack
      acd573(1)=dotproduct(k1,qshift)
      acd573(2)=dotproduct(qshift,spvak2k7)
      acd573(3)=abb573(65)
      acd573(4)=dotproduct(k2,qshift)
      acd573(5)=dotproduct(qshift,spvak2k3)
      acd573(6)=abb573(41)
      acd573(7)=dotproduct(qshift,spvak2k4)
      acd573(8)=abb573(55)
      acd573(9)=dotproduct(qshift,spvak2k5)
      acd573(10)=abb573(60)
      acd573(11)=dotproduct(qshift,spvak2k6)
      acd573(12)=abb573(106)
      acd573(13)=abb573(71)
      acd573(14)=dotproduct(k3,qshift)
      acd573(15)=dotproduct(qshift,spvak2k1)
      acd573(16)=abb573(13)
      acd573(17)=dotproduct(k4,qshift)
      acd573(18)=dotproduct(k5,qshift)
      acd573(19)=dotproduct(k6,qshift)
      acd573(20)=dotproduct(k7,qshift)
      acd573(21)=abb573(16)
      acd573(22)=dotproduct(qshift,qshift)
      acd573(23)=abb573(15)
      acd573(24)=abb573(18)
      acd573(25)=abb573(82)
      acd573(26)=abb573(94)
      acd573(27)=abb573(45)
      acd573(28)=abb573(11)
      acd573(29)=abb573(32)
      acd573(30)=abb573(21)
      acd573(31)=abb573(30)
      acd573(32)=abb573(47)
      acd573(33)=abb573(19)
      acd573(34)=dotproduct(qshift,spvak4k3)
      acd573(35)=abb573(17)
      acd573(36)=dotproduct(qshift,spvak4k6)
      acd573(37)=abb573(24)
      acd573(38)=dotproduct(qshift,spvak5k3)
      acd573(39)=abb573(20)
      acd573(40)=dotproduct(qshift,spvak5k6)
      acd573(41)=abb573(23)
      acd573(42)=abb573(22)
      acd573(43)=dotproduct(qshift,spvak3k1)
      acd573(44)=abb573(73)
      acd573(45)=dotproduct(qshift,spvak4k1)
      acd573(46)=abb573(69)
      acd573(47)=dotproduct(qshift,spvak5k1)
      acd573(48)=abb573(72)
      acd573(49)=dotproduct(qshift,spvak6k1)
      acd573(50)=abb573(90)
      acd573(51)=abb573(14)
      acd573(52)=abb573(12)
      acd573(53)=-acd573(40)*acd573(41)
      acd573(54)=-acd573(38)*acd573(39)
      acd573(55)=-acd573(36)*acd573(37)
      acd573(56)=-acd573(34)*acd573(35)
      acd573(57)=acd573(14)+acd573(17)-acd573(19)-acd573(18)
      acd573(57)=acd573(16)*acd573(57)
      acd573(53)=acd573(57)+acd573(56)+acd573(55)+acd573(54)+acd573(42)+acd573(&
      &53)
      acd573(53)=acd573(15)*acd573(53)
      acd573(54)=acd573(20)+acd573(1)
      acd573(54)=acd573(3)*acd573(54)
      acd573(55)=acd573(49)*acd573(50)
      acd573(56)=acd573(47)*acd573(48)
      acd573(57)=acd573(45)*acd573(46)
      acd573(58)=acd573(43)*acd573(44)
      acd573(59)=acd573(11)*acd573(33)
      acd573(60)=acd573(9)*acd573(32)
      acd573(61)=acd573(7)*acd573(31)
      acd573(62)=acd573(5)*acd573(30)
      acd573(63)=-acd573(22)*acd573(23)
      acd573(64)=acd573(2)*acd573(29)
      acd573(53)=acd573(64)+acd573(53)+acd573(63)+acd573(62)+acd573(61)+acd573(&
      &60)+acd573(59)+acd573(58)+acd573(57)+acd573(56)-acd573(51)+acd573(55)+ac&
      &d573(54)
      acd573(53)=acd573(2)*acd573(53)
      acd573(54)=acd573(11)*acd573(12)
      acd573(55)=acd573(9)*acd573(10)
      acd573(56)=acd573(7)*acd573(8)
      acd573(57)=acd573(5)*acd573(6)
      acd573(54)=acd573(54)-acd573(55)+acd573(56)+acd573(57)
      acd573(55)=-acd573(13)-acd573(54)
      acd573(55)=acd573(4)*acd573(55)
      acd573(56)=-acd573(11)*acd573(27)
      acd573(57)=-acd573(9)*acd573(26)
      acd573(58)=-acd573(7)*acd573(25)
      acd573(59)=-acd573(5)*acd573(24)
      acd573(56)=acd573(59)+acd573(58)+acd573(57)+acd573(28)+acd573(56)
      acd573(56)=acd573(22)*acd573(56)
      acd573(54)=-acd573(21)+acd573(54)
      acd573(54)=acd573(20)*acd573(54)
      brack=acd573(52)+acd573(53)+acd573(54)+acd573(55)+acd573(56)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd573h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(88) :: acd573
      complex(ki) :: brack
      acd573(1)=k1(iv1)
      acd573(2)=dotproduct(qshift,spvak2k7)
      acd573(3)=abb573(65)
      acd573(4)=k2(iv1)
      acd573(5)=dotproduct(qshift,spvak2k3)
      acd573(6)=abb573(41)
      acd573(7)=dotproduct(qshift,spvak2k4)
      acd573(8)=abb573(55)
      acd573(9)=dotproduct(qshift,spvak2k5)
      acd573(10)=abb573(60)
      acd573(11)=dotproduct(qshift,spvak2k6)
      acd573(12)=abb573(106)
      acd573(13)=abb573(71)
      acd573(14)=k3(iv1)
      acd573(15)=dotproduct(qshift,spvak2k1)
      acd573(16)=abb573(13)
      acd573(17)=k4(iv1)
      acd573(18)=k5(iv1)
      acd573(19)=k6(iv1)
      acd573(20)=k7(iv1)
      acd573(21)=abb573(16)
      acd573(22)=qshift(iv1)
      acd573(23)=abb573(15)
      acd573(24)=abb573(18)
      acd573(25)=abb573(82)
      acd573(26)=abb573(94)
      acd573(27)=abb573(45)
      acd573(28)=abb573(11)
      acd573(29)=spvak2k7(iv1)
      acd573(30)=dotproduct(k1,qshift)
      acd573(31)=dotproduct(k3,qshift)
      acd573(32)=dotproduct(k4,qshift)
      acd573(33)=dotproduct(k5,qshift)
      acd573(34)=dotproduct(k6,qshift)
      acd573(35)=dotproduct(k7,qshift)
      acd573(36)=dotproduct(qshift,qshift)
      acd573(37)=abb573(32)
      acd573(38)=abb573(21)
      acd573(39)=abb573(30)
      acd573(40)=abb573(47)
      acd573(41)=abb573(19)
      acd573(42)=dotproduct(qshift,spvak4k3)
      acd573(43)=abb573(17)
      acd573(44)=dotproduct(qshift,spvak4k6)
      acd573(45)=abb573(24)
      acd573(46)=dotproduct(qshift,spvak5k3)
      acd573(47)=abb573(20)
      acd573(48)=dotproduct(qshift,spvak5k6)
      acd573(49)=abb573(23)
      acd573(50)=abb573(22)
      acd573(51)=dotproduct(qshift,spvak3k1)
      acd573(52)=abb573(73)
      acd573(53)=dotproduct(qshift,spvak4k1)
      acd573(54)=abb573(69)
      acd573(55)=dotproduct(qshift,spvak5k1)
      acd573(56)=abb573(72)
      acd573(57)=dotproduct(qshift,spvak6k1)
      acd573(58)=abb573(90)
      acd573(59)=abb573(14)
      acd573(60)=spvak2k3(iv1)
      acd573(61)=dotproduct(k2,qshift)
      acd573(62)=spvak2k4(iv1)
      acd573(63)=spvak2k5(iv1)
      acd573(64)=spvak2k6(iv1)
      acd573(65)=spvak2k1(iv1)
      acd573(66)=spvak4k3(iv1)
      acd573(67)=spvak4k6(iv1)
      acd573(68)=spvak5k3(iv1)
      acd573(69)=spvak5k6(iv1)
      acd573(70)=spvak3k1(iv1)
      acd573(71)=spvak4k1(iv1)
      acd573(72)=spvak5k1(iv1)
      acd573(73)=spvak6k1(iv1)
      acd573(74)=-acd573(31)-acd573(32)+acd573(33)+acd573(34)
      acd573(74)=acd573(74)*acd573(16)
      acd573(75)=acd573(49)*acd573(48)
      acd573(76)=acd573(47)*acd573(46)
      acd573(77)=acd573(45)*acd573(44)
      acd573(78)=acd573(43)*acd573(42)
      acd573(74)=acd573(74)-acd573(50)+acd573(75)+acd573(76)+acd573(77)+acd573(&
      &78)
      acd573(75)=acd573(65)*acd573(74)
      acd573(76)=acd573(49)*acd573(69)
      acd573(77)=acd573(47)*acd573(68)
      acd573(78)=acd573(45)*acd573(67)
      acd573(79)=acd573(43)*acd573(66)
      acd573(80)=-acd573(14)-acd573(17)+acd573(19)+acd573(18)
      acd573(80)=acd573(16)*acd573(80)
      acd573(76)=acd573(80)+acd573(79)+acd573(78)+acd573(76)+acd573(77)
      acd573(76)=acd573(15)*acd573(76)
      acd573(77)=-acd573(20)-acd573(1)
      acd573(77)=acd573(3)*acd573(77)
      acd573(78)=-acd573(58)*acd573(73)
      acd573(79)=-acd573(56)*acd573(72)
      acd573(80)=-acd573(54)*acd573(71)
      acd573(81)=-acd573(52)*acd573(70)
      acd573(82)=-acd573(64)*acd573(41)
      acd573(83)=-acd573(63)*acd573(40)
      acd573(84)=-acd573(62)*acd573(39)
      acd573(85)=-acd573(60)*acd573(38)
      acd573(86)=2.0_ki*acd573(22)
      acd573(87)=acd573(23)*acd573(86)
      acd573(88)=acd573(29)*acd573(37)
      acd573(75)=-2.0_ki*acd573(88)+acd573(76)+acd573(87)+acd573(85)+acd573(84)&
      &+acd573(83)+acd573(82)+acd573(81)+acd573(80)+acd573(78)+acd573(79)+acd57&
      &3(75)+acd573(77)
      acd573(75)=acd573(2)*acd573(75)
      acd573(74)=acd573(15)*acd573(74)
      acd573(76)=-acd573(35)-acd573(30)
      acd573(76)=acd573(3)*acd573(76)
      acd573(77)=-acd573(58)*acd573(57)
      acd573(78)=-acd573(56)*acd573(55)
      acd573(79)=-acd573(54)*acd573(53)
      acd573(80)=-acd573(52)*acd573(51)
      acd573(81)=-acd573(11)*acd573(41)
      acd573(82)=-acd573(9)*acd573(40)
      acd573(83)=-acd573(7)*acd573(39)
      acd573(84)=-acd573(5)*acd573(38)
      acd573(85)=acd573(36)*acd573(23)
      acd573(74)=acd573(74)+acd573(85)+acd573(84)+acd573(83)+acd573(82)+acd573(&
      &81)+acd573(80)+acd573(79)+acd573(78)+acd573(59)+acd573(77)+acd573(76)
      acd573(74)=acd573(29)*acd573(74)
      acd573(76)=acd573(12)*acd573(64)
      acd573(77)=acd573(10)*acd573(63)
      acd573(78)=acd573(8)*acd573(62)
      acd573(79)=acd573(6)*acd573(60)
      acd573(76)=acd573(76)-acd573(77)+acd573(78)+acd573(79)
      acd573(77)=-acd573(35)+acd573(61)
      acd573(76)=acd573(76)*acd573(77)
      acd573(77)=acd573(64)*acd573(27)
      acd573(78)=acd573(63)*acd573(26)
      acd573(79)=acd573(62)*acd573(25)
      acd573(80)=acd573(60)*acd573(24)
      acd573(77)=acd573(80)+acd573(79)+acd573(77)+acd573(78)
      acd573(77)=acd573(36)*acd573(77)
      acd573(78)=acd573(11)*acd573(12)
      acd573(79)=acd573(9)*acd573(10)
      acd573(80)=acd573(7)*acd573(8)
      acd573(81)=acd573(5)*acd573(6)
      acd573(78)=acd573(78)-acd573(79)+acd573(80)+acd573(81)
      acd573(79)=acd573(13)+acd573(78)
      acd573(79)=acd573(4)*acd573(79)
      acd573(80)=acd573(11)*acd573(27)
      acd573(81)=acd573(9)*acd573(26)
      acd573(82)=acd573(7)*acd573(25)
      acd573(83)=acd573(5)*acd573(24)
      acd573(80)=acd573(83)+acd573(82)+acd573(81)-acd573(28)+acd573(80)
      acd573(80)=acd573(80)*acd573(86)
      acd573(78)=acd573(21)-acd573(78)
      acd573(78)=acd573(20)*acd573(78)
      brack=acd573(74)+acd573(75)+acd573(76)+acd573(77)+acd573(78)+acd573(79)+a&
      &cd573(80)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd573h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(104) :: acd573
      complex(ki) :: brack
      acd573(1)=d(iv1,iv2)
      acd573(2)=dotproduct(qshift,spvak2k3)
      acd573(3)=abb573(18)
      acd573(4)=dotproduct(qshift,spvak2k4)
      acd573(5)=abb573(82)
      acd573(6)=dotproduct(qshift,spvak2k5)
      acd573(7)=abb573(94)
      acd573(8)=dotproduct(qshift,spvak2k6)
      acd573(9)=abb573(45)
      acd573(10)=dotproduct(qshift,spvak2k7)
      acd573(11)=abb573(15)
      acd573(12)=abb573(11)
      acd573(13)=k1(iv1)
      acd573(14)=spvak2k7(iv2)
      acd573(15)=abb573(65)
      acd573(16)=k1(iv2)
      acd573(17)=spvak2k7(iv1)
      acd573(18)=k2(iv1)
      acd573(19)=spvak2k3(iv2)
      acd573(20)=abb573(41)
      acd573(21)=spvak2k4(iv2)
      acd573(22)=abb573(55)
      acd573(23)=spvak2k5(iv2)
      acd573(24)=abb573(60)
      acd573(25)=spvak2k6(iv2)
      acd573(26)=abb573(106)
      acd573(27)=k2(iv2)
      acd573(28)=spvak2k3(iv1)
      acd573(29)=spvak2k4(iv1)
      acd573(30)=spvak2k5(iv1)
      acd573(31)=spvak2k6(iv1)
      acd573(32)=k3(iv1)
      acd573(33)=dotproduct(qshift,spvak2k1)
      acd573(34)=abb573(13)
      acd573(35)=spvak2k1(iv2)
      acd573(36)=k3(iv2)
      acd573(37)=spvak2k1(iv1)
      acd573(38)=k4(iv1)
      acd573(39)=k4(iv2)
      acd573(40)=k5(iv1)
      acd573(41)=k5(iv2)
      acd573(42)=k6(iv1)
      acd573(43)=k6(iv2)
      acd573(44)=k7(iv1)
      acd573(45)=k7(iv2)
      acd573(46)=qshift(iv1)
      acd573(47)=qshift(iv2)
      acd573(48)=abb573(21)
      acd573(49)=abb573(30)
      acd573(50)=abb573(47)
      acd573(51)=abb573(19)
      acd573(52)=abb573(32)
      acd573(53)=dotproduct(k3,qshift)
      acd573(54)=dotproduct(k4,qshift)
      acd573(55)=dotproduct(k5,qshift)
      acd573(56)=dotproduct(k6,qshift)
      acd573(57)=dotproduct(qshift,spvak4k3)
      acd573(58)=abb573(17)
      acd573(59)=dotproduct(qshift,spvak4k6)
      acd573(60)=abb573(24)
      acd573(61)=dotproduct(qshift,spvak5k3)
      acd573(62)=abb573(20)
      acd573(63)=dotproduct(qshift,spvak5k6)
      acd573(64)=abb573(23)
      acd573(65)=abb573(22)
      acd573(66)=spvak4k3(iv2)
      acd573(67)=spvak4k6(iv2)
      acd573(68)=spvak5k3(iv2)
      acd573(69)=spvak5k6(iv2)
      acd573(70)=spvak3k1(iv2)
      acd573(71)=abb573(73)
      acd573(72)=spvak4k1(iv2)
      acd573(73)=abb573(69)
      acd573(74)=spvak5k1(iv2)
      acd573(75)=abb573(72)
      acd573(76)=spvak6k1(iv2)
      acd573(77)=abb573(90)
      acd573(78)=spvak4k3(iv1)
      acd573(79)=spvak4k6(iv1)
      acd573(80)=spvak5k3(iv1)
      acd573(81)=spvak5k6(iv1)
      acd573(82)=spvak3k1(iv1)
      acd573(83)=spvak4k1(iv1)
      acd573(84)=spvak5k1(iv1)
      acd573(85)=spvak6k1(iv1)
      acd573(86)=acd573(64)*acd573(81)
      acd573(87)=acd573(62)*acd573(80)
      acd573(88)=acd573(60)*acd573(79)
      acd573(89)=acd573(58)*acd573(78)
      acd573(86)=acd573(89)+acd573(86)+acd573(87)+acd573(88)
      acd573(87)=-acd573(33)*acd573(86)
      acd573(88)=acd573(64)*acd573(63)
      acd573(89)=acd573(62)*acd573(61)
      acd573(90)=acd573(60)*acd573(59)
      acd573(91)=acd573(58)*acd573(57)
      acd573(88)=acd573(88)+acd573(89)+acd573(90)+acd573(91)-acd573(65)
      acd573(89)=-acd573(37)*acd573(88)
      acd573(90)=-acd573(32)-acd573(38)+acd573(40)+acd573(42)
      acd573(91)=-acd573(33)*acd573(90)
      acd573(92)=-acd573(53)-acd573(54)+acd573(55)+acd573(56)
      acd573(93)=-acd573(37)*acd573(92)
      acd573(91)=acd573(91)+acd573(93)
      acd573(91)=acd573(34)*acd573(91)
      acd573(93)=acd573(44)+acd573(13)
      acd573(93)=acd573(15)*acd573(93)
      acd573(94)=acd573(77)*acd573(85)
      acd573(95)=acd573(75)*acd573(84)
      acd573(96)=acd573(73)*acd573(83)
      acd573(97)=acd573(71)*acd573(82)
      acd573(98)=acd573(31)*acd573(51)
      acd573(99)=acd573(30)*acd573(50)
      acd573(100)=acd573(29)*acd573(49)
      acd573(101)=acd573(28)*acd573(48)
      acd573(102)=2.0_ki*acd573(11)
      acd573(103)=-acd573(46)*acd573(102)
      acd573(104)=acd573(17)*acd573(52)
      acd573(87)=2.0_ki*acd573(104)+acd573(91)+acd573(89)+acd573(87)+acd573(103&
      &)+acd573(101)+acd573(100)+acd573(99)+acd573(98)+acd573(97)+acd573(96)+ac&
      &d573(94)+acd573(95)+acd573(93)
      acd573(87)=acd573(14)*acd573(87)
      acd573(89)=acd573(64)*acd573(69)
      acd573(91)=acd573(62)*acd573(68)
      acd573(93)=acd573(60)*acd573(67)
      acd573(94)=acd573(58)*acd573(66)
      acd573(89)=acd573(94)+acd573(89)+acd573(91)+acd573(93)
      acd573(91)=-acd573(33)*acd573(89)
      acd573(88)=-acd573(35)*acd573(88)
      acd573(93)=-acd573(36)-acd573(39)+acd573(41)+acd573(43)
      acd573(94)=-acd573(33)*acd573(93)
      acd573(92)=-acd573(35)*acd573(92)
      acd573(92)=acd573(94)+acd573(92)
      acd573(92)=acd573(34)*acd573(92)
      acd573(94)=acd573(45)+acd573(16)
      acd573(94)=acd573(15)*acd573(94)
      acd573(95)=acd573(77)*acd573(76)
      acd573(96)=acd573(75)*acd573(74)
      acd573(97)=acd573(73)*acd573(72)
      acd573(98)=acd573(71)*acd573(70)
      acd573(99)=acd573(25)*acd573(51)
      acd573(100)=acd573(23)*acd573(50)
      acd573(101)=acd573(21)*acd573(49)
      acd573(103)=acd573(19)*acd573(48)
      acd573(104)=-acd573(47)*acd573(102)
      acd573(88)=acd573(92)+acd573(88)+acd573(91)+acd573(104)+acd573(103)+acd57&
      &3(101)+acd573(100)+acd573(99)+acd573(98)+acd573(97)+acd573(95)+acd573(96&
      &)+acd573(94)
      acd573(88)=acd573(17)*acd573(88)
      acd573(91)=-acd573(31)*acd573(9)
      acd573(92)=-acd573(30)*acd573(7)
      acd573(94)=-acd573(29)*acd573(5)
      acd573(95)=-acd573(28)*acd573(3)
      acd573(91)=acd573(95)+acd573(94)+acd573(91)+acd573(92)
      acd573(91)=acd573(47)*acd573(91)
      acd573(92)=-acd573(25)*acd573(9)
      acd573(94)=-acd573(23)*acd573(7)
      acd573(95)=-acd573(21)*acd573(5)
      acd573(96)=-acd573(19)*acd573(3)
      acd573(92)=acd573(96)+acd573(95)+acd573(92)+acd573(94)
      acd573(92)=acd573(46)*acd573(92)
      acd573(94)=-acd573(9)*acd573(8)
      acd573(95)=-acd573(7)*acd573(6)
      acd573(96)=-acd573(5)*acd573(4)
      acd573(97)=-acd573(3)*acd573(2)
      acd573(94)=acd573(97)+acd573(96)+acd573(95)+acd573(12)+acd573(94)
      acd573(94)=acd573(1)*acd573(94)
      acd573(91)=acd573(94)+acd573(91)+acd573(92)
      acd573(89)=-acd573(37)*acd573(89)
      acd573(86)=-acd573(35)*acd573(86)
      acd573(92)=-acd573(37)*acd573(93)
      acd573(90)=-acd573(35)*acd573(90)
      acd573(90)=acd573(92)+acd573(90)
      acd573(90)=acd573(34)*acd573(90)
      acd573(92)=-acd573(1)*acd573(102)
      acd573(86)=acd573(90)+acd573(86)+acd573(92)+acd573(89)
      acd573(86)=acd573(10)*acd573(86)
      acd573(89)=acd573(25)*acd573(26)
      acd573(90)=acd573(23)*acd573(24)
      acd573(92)=acd573(21)*acd573(22)
      acd573(93)=acd573(19)*acd573(20)
      acd573(89)=acd573(89)-acd573(90)+acd573(92)+acd573(93)
      acd573(90)=acd573(44)-acd573(18)
      acd573(89)=acd573(89)*acd573(90)
      acd573(90)=acd573(26)*acd573(31)
      acd573(92)=acd573(24)*acd573(30)
      acd573(93)=acd573(22)*acd573(29)
      acd573(94)=acd573(20)*acd573(28)
      acd573(90)=acd573(90)-acd573(92)+acd573(93)+acd573(94)
      acd573(92)=acd573(45)-acd573(27)
      acd573(90)=acd573(90)*acd573(92)
      brack=acd573(86)+acd573(87)+acd573(88)+acd573(89)+acd573(90)+2.0_ki*acd57&
      &3(91)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd573h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd573
      complex(ki) :: brack
      acd573(1)=d(iv1,iv2)
      acd573(2)=spvak2k3(iv3)
      acd573(3)=abb573(18)
      acd573(4)=spvak2k4(iv3)
      acd573(5)=abb573(82)
      acd573(6)=spvak2k5(iv3)
      acd573(7)=abb573(94)
      acd573(8)=spvak2k6(iv3)
      acd573(9)=abb573(45)
      acd573(10)=spvak2k7(iv3)
      acd573(11)=abb573(15)
      acd573(12)=d(iv1,iv3)
      acd573(13)=spvak2k3(iv2)
      acd573(14)=spvak2k4(iv2)
      acd573(15)=spvak2k5(iv2)
      acd573(16)=spvak2k6(iv2)
      acd573(17)=spvak2k7(iv2)
      acd573(18)=d(iv2,iv3)
      acd573(19)=spvak2k3(iv1)
      acd573(20)=spvak2k4(iv1)
      acd573(21)=spvak2k5(iv1)
      acd573(22)=spvak2k6(iv1)
      acd573(23)=spvak2k7(iv1)
      acd573(24)=k3(iv1)
      acd573(25)=spvak2k1(iv3)
      acd573(26)=abb573(13)
      acd573(27)=spvak2k1(iv2)
      acd573(28)=k3(iv2)
      acd573(29)=spvak2k1(iv1)
      acd573(30)=k3(iv3)
      acd573(31)=k4(iv1)
      acd573(32)=k4(iv2)
      acd573(33)=k4(iv3)
      acd573(34)=k5(iv1)
      acd573(35)=k5(iv2)
      acd573(36)=k5(iv3)
      acd573(37)=k6(iv1)
      acd573(38)=k6(iv2)
      acd573(39)=k6(iv3)
      acd573(40)=spvak4k3(iv3)
      acd573(41)=abb573(17)
      acd573(42)=spvak4k6(iv3)
      acd573(43)=abb573(24)
      acd573(44)=spvak5k3(iv3)
      acd573(45)=abb573(20)
      acd573(46)=spvak5k6(iv3)
      acd573(47)=abb573(23)
      acd573(48)=spvak4k3(iv2)
      acd573(49)=spvak4k6(iv2)
      acd573(50)=spvak5k3(iv2)
      acd573(51)=spvak5k6(iv2)
      acd573(52)=spvak4k3(iv1)
      acd573(53)=spvak4k6(iv1)
      acd573(54)=spvak5k3(iv1)
      acd573(55)=spvak5k6(iv1)
      acd573(56)=acd573(27)*acd573(23)
      acd573(57)=acd573(29)*acd573(17)
      acd573(56)=acd573(56)+acd573(57)
      acd573(57)=acd573(39)+acd573(36)-acd573(33)-acd573(30)
      acd573(57)=acd573(57)*acd573(56)
      acd573(58)=acd573(25)*acd573(23)
      acd573(59)=acd573(29)*acd573(10)
      acd573(58)=acd573(58)+acd573(59)
      acd573(59)=acd573(38)+acd573(35)-acd573(32)-acd573(28)
      acd573(59)=acd573(59)*acd573(58)
      acd573(60)=acd573(25)*acd573(17)
      acd573(61)=acd573(27)*acd573(10)
      acd573(60)=acd573(60)+acd573(61)
      acd573(61)=acd573(37)+acd573(34)-acd573(31)-acd573(24)
      acd573(61)=acd573(61)*acd573(60)
      acd573(57)=acd573(61)+acd573(59)+acd573(57)
      acd573(57)=acd573(26)*acd573(57)
      acd573(59)=acd573(48)*acd573(41)
      acd573(61)=acd573(49)*acd573(43)
      acd573(62)=acd573(50)*acd573(45)
      acd573(63)=acd573(51)*acd573(47)
      acd573(59)=acd573(63)+acd573(62)+acd573(61)+acd573(59)
      acd573(58)=acd573(58)*acd573(59)
      acd573(59)=acd573(40)*acd573(41)
      acd573(61)=acd573(42)*acd573(43)
      acd573(62)=acd573(44)*acd573(45)
      acd573(63)=acd573(46)*acd573(47)
      acd573(59)=acd573(63)+acd573(62)+acd573(61)+acd573(59)
      acd573(56)=acd573(56)*acd573(59)
      acd573(59)=acd573(19)*acd573(3)
      acd573(61)=acd573(20)*acd573(5)
      acd573(62)=acd573(21)*acd573(7)
      acd573(63)=acd573(22)*acd573(9)
      acd573(59)=acd573(63)+acd573(62)+acd573(61)+acd573(59)
      acd573(61)=2.0_ki*acd573(18)
      acd573(59)=acd573(61)*acd573(59)
      acd573(61)=acd573(13)*acd573(3)
      acd573(62)=acd573(14)*acd573(5)
      acd573(63)=acd573(15)*acd573(7)
      acd573(64)=acd573(16)*acd573(9)
      acd573(61)=acd573(64)+acd573(63)+acd573(62)+acd573(61)
      acd573(62)=2.0_ki*acd573(12)
      acd573(61)=acd573(62)*acd573(61)
      acd573(62)=acd573(2)*acd573(3)
      acd573(63)=acd573(4)*acd573(5)
      acd573(64)=acd573(6)*acd573(7)
      acd573(65)=acd573(8)*acd573(9)
      acd573(62)=acd573(65)+acd573(64)+acd573(63)+acd573(62)
      acd573(63)=2.0_ki*acd573(1)
      acd573(62)=acd573(63)*acd573(62)
      acd573(63)=acd573(52)*acd573(41)
      acd573(64)=acd573(53)*acd573(43)
      acd573(65)=acd573(54)*acd573(45)
      acd573(66)=acd573(55)*acd573(47)
      acd573(63)=acd573(66)+acd573(65)+acd573(64)+acd573(63)
      acd573(60)=acd573(60)*acd573(63)
      acd573(63)=acd573(1)*acd573(10)
      acd573(64)=acd573(12)*acd573(17)
      acd573(65)=acd573(18)*acd573(23)
      acd573(63)=acd573(65)+acd573(63)+acd573(64)
      acd573(63)=acd573(11)*acd573(63)
      brack=acd573(56)+acd573(57)+acd573(58)+acd573(59)+acd573(60)+acd573(61)+a&
      &cd573(62)+2.0_ki*acd573(63)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd573h2
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
      qshift = k7
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
!---#[ subroutine reconstruct_d573:
   subroutine     reconstruct_d573(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_573:
      coeffs%coeffs_573%c0 = derivative(czip)
      coeffs%coeffs_573%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_573%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_573%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_573%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_573%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_573%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_573%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_573%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_573%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_573%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_573%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_573%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_573%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_573%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_573%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_573%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_573%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_573%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_573%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_573%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_573%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_573%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_573%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_573%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_573%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_573%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_573%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_573%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_573%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_573%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_573%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_573%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_573%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_573%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_573:
   end subroutine reconstruct_d573
!---#] subroutine reconstruct_d573:
end module     p8_cbarc_epnemumnmubarg_d573h2l1d
