module     p4_ubaru_epnemumnmubarg_d559h2l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity2d559h2l1d.f90
   ! generator: buildfortran_d.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d559
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd559h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd559
      complex(ki) :: brack
      acd559(1)=dotproduct(k1,qshift)
      acd559(2)=dotproduct(qshift,spvak2k7)
      acd559(3)=abb559(44)
      acd559(4)=dotproduct(k2,qshift)
      acd559(5)=dotproduct(qshift,spvak2k3)
      acd559(6)=abb559(43)
      acd559(7)=dotproduct(qshift,spvak2k4)
      acd559(8)=abb559(63)
      acd559(9)=dotproduct(qshift,spvak2k5)
      acd559(10)=abb559(31)
      acd559(11)=dotproduct(qshift,spvak2k6)
      acd559(12)=abb559(58)
      acd559(13)=abb559(40)
      acd559(14)=dotproduct(k3,qshift)
      acd559(15)=dotproduct(qshift,spvak2k1)
      acd559(16)=abb559(23)
      acd559(17)=dotproduct(k4,qshift)
      acd559(18)=dotproduct(k5,qshift)
      acd559(19)=dotproduct(k6,qshift)
      acd559(20)=dotproduct(k7,qshift)
      acd559(21)=dotproduct(qshift,qshift)
      acd559(22)=abb559(26)
      acd559(23)=abb559(37)
      acd559(24)=abb559(60)
      acd559(25)=abb559(48)
      acd559(26)=abb559(56)
      acd559(27)=abb559(13)
      acd559(28)=abb559(28)
      acd559(29)=abb559(15)
      acd559(30)=abb559(65)
      acd559(31)=abb559(49)
      acd559(32)=abb559(20)
      acd559(33)=dotproduct(qshift,spvak4k3)
      acd559(34)=abb559(21)
      acd559(35)=dotproduct(qshift,spvak4k6)
      acd559(36)=abb559(19)
      acd559(37)=dotproduct(qshift,spvak5k3)
      acd559(38)=abb559(14)
      acd559(39)=dotproduct(qshift,spvak5k6)
      acd559(40)=abb559(12)
      acd559(41)=abb559(18)
      acd559(42)=dotproduct(qshift,spvak3k1)
      acd559(43)=abb559(17)
      acd559(44)=dotproduct(qshift,spvak4k1)
      acd559(45)=abb559(16)
      acd559(46)=dotproduct(qshift,spvak5k1)
      acd559(47)=abb559(81)
      acd559(48)=dotproduct(qshift,spvak6k1)
      acd559(49)=abb559(100)
      acd559(50)=abb559(52)
      acd559(51)=-acd559(39)*acd559(40)
      acd559(52)=-acd559(37)*acd559(38)
      acd559(53)=-acd559(35)*acd559(36)
      acd559(54)=-acd559(33)*acd559(34)
      acd559(55)=acd559(14)+acd559(17)-acd559(19)-acd559(18)
      acd559(55)=acd559(16)*acd559(55)
      acd559(51)=acd559(55)+acd559(54)+acd559(53)+acd559(52)+acd559(41)+acd559(&
      &51)
      acd559(51)=acd559(15)*acd559(51)
      acd559(52)=acd559(20)+acd559(1)
      acd559(52)=acd559(3)*acd559(52)
      acd559(53)=acd559(48)*acd559(49)
      acd559(54)=acd559(46)*acd559(47)
      acd559(55)=acd559(44)*acd559(45)
      acd559(56)=acd559(42)*acd559(43)
      acd559(57)=acd559(11)*acd559(32)
      acd559(58)=acd559(9)*acd559(31)
      acd559(59)=acd559(7)*acd559(30)
      acd559(60)=acd559(5)*acd559(29)
      acd559(61)=-acd559(21)*acd559(22)
      acd559(62)=acd559(2)*acd559(28)
      acd559(51)=acd559(62)+acd559(51)+acd559(61)+acd559(60)+acd559(59)+acd559(&
      &58)+acd559(57)+acd559(56)+acd559(55)+acd559(54)-acd559(50)+acd559(53)+ac&
      &d559(52)
      acd559(51)=acd559(2)*acd559(51)
      acd559(52)=acd559(11)*acd559(12)
      acd559(53)=acd559(9)*acd559(10)
      acd559(54)=acd559(7)*acd559(8)
      acd559(55)=acd559(5)*acd559(6)
      acd559(52)=acd559(52)+acd559(53)+acd559(54)-acd559(55)
      acd559(53)=acd559(20)*acd559(52)
      acd559(52)=-acd559(13)-acd559(52)
      acd559(52)=acd559(4)*acd559(52)
      acd559(54)=-acd559(11)*acd559(26)
      acd559(55)=-acd559(9)*acd559(25)
      acd559(56)=-acd559(7)*acd559(24)
      acd559(57)=-acd559(5)*acd559(23)
      acd559(54)=acd559(57)+acd559(56)+acd559(55)+acd559(27)+acd559(54)
      acd559(54)=acd559(21)*acd559(54)
      brack=acd559(51)+acd559(52)+acd559(53)+acd559(54)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd559h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd559
      complex(ki) :: brack
      acd559(1)=k1(iv1)
      acd559(2)=dotproduct(qshift,spvak2k7)
      acd559(3)=abb559(44)
      acd559(4)=k2(iv1)
      acd559(5)=dotproduct(qshift,spvak2k3)
      acd559(6)=abb559(43)
      acd559(7)=dotproduct(qshift,spvak2k4)
      acd559(8)=abb559(63)
      acd559(9)=dotproduct(qshift,spvak2k5)
      acd559(10)=abb559(31)
      acd559(11)=dotproduct(qshift,spvak2k6)
      acd559(12)=abb559(58)
      acd559(13)=abb559(40)
      acd559(14)=k3(iv1)
      acd559(15)=dotproduct(qshift,spvak2k1)
      acd559(16)=abb559(23)
      acd559(17)=k4(iv1)
      acd559(18)=k5(iv1)
      acd559(19)=k6(iv1)
      acd559(20)=k7(iv1)
      acd559(21)=qshift(iv1)
      acd559(22)=abb559(26)
      acd559(23)=abb559(37)
      acd559(24)=abb559(60)
      acd559(25)=abb559(48)
      acd559(26)=abb559(56)
      acd559(27)=abb559(13)
      acd559(28)=spvak2k7(iv1)
      acd559(29)=dotproduct(k1,qshift)
      acd559(30)=dotproduct(k3,qshift)
      acd559(31)=dotproduct(k4,qshift)
      acd559(32)=dotproduct(k5,qshift)
      acd559(33)=dotproduct(k6,qshift)
      acd559(34)=dotproduct(k7,qshift)
      acd559(35)=dotproduct(qshift,qshift)
      acd559(36)=abb559(28)
      acd559(37)=abb559(15)
      acd559(38)=abb559(65)
      acd559(39)=abb559(49)
      acd559(40)=abb559(20)
      acd559(41)=dotproduct(qshift,spvak4k3)
      acd559(42)=abb559(21)
      acd559(43)=dotproduct(qshift,spvak4k6)
      acd559(44)=abb559(19)
      acd559(45)=dotproduct(qshift,spvak5k3)
      acd559(46)=abb559(14)
      acd559(47)=dotproduct(qshift,spvak5k6)
      acd559(48)=abb559(12)
      acd559(49)=abb559(18)
      acd559(50)=dotproduct(qshift,spvak3k1)
      acd559(51)=abb559(17)
      acd559(52)=dotproduct(qshift,spvak4k1)
      acd559(53)=abb559(16)
      acd559(54)=dotproduct(qshift,spvak5k1)
      acd559(55)=abb559(81)
      acd559(56)=dotproduct(qshift,spvak6k1)
      acd559(57)=abb559(100)
      acd559(58)=abb559(52)
      acd559(59)=spvak2k3(iv1)
      acd559(60)=dotproduct(k2,qshift)
      acd559(61)=spvak2k4(iv1)
      acd559(62)=spvak2k5(iv1)
      acd559(63)=spvak2k6(iv1)
      acd559(64)=spvak2k1(iv1)
      acd559(65)=spvak4k3(iv1)
      acd559(66)=spvak4k6(iv1)
      acd559(67)=spvak5k3(iv1)
      acd559(68)=spvak5k6(iv1)
      acd559(69)=spvak3k1(iv1)
      acd559(70)=spvak4k1(iv1)
      acd559(71)=spvak5k1(iv1)
      acd559(72)=spvak6k1(iv1)
      acd559(73)=-acd559(30)-acd559(31)+acd559(32)+acd559(33)
      acd559(73)=acd559(73)*acd559(16)
      acd559(74)=acd559(48)*acd559(47)
      acd559(75)=acd559(46)*acd559(45)
      acd559(76)=acd559(44)*acd559(43)
      acd559(77)=acd559(42)*acd559(41)
      acd559(73)=acd559(73)-acd559(49)+acd559(74)+acd559(75)+acd559(76)+acd559(&
      &77)
      acd559(74)=-acd559(64)*acd559(73)
      acd559(75)=-acd559(48)*acd559(68)
      acd559(76)=-acd559(46)*acd559(67)
      acd559(77)=-acd559(44)*acd559(66)
      acd559(78)=-acd559(42)*acd559(65)
      acd559(79)=acd559(14)+acd559(17)-acd559(19)-acd559(18)
      acd559(79)=acd559(16)*acd559(79)
      acd559(75)=acd559(79)+acd559(78)+acd559(77)+acd559(75)+acd559(76)
      acd559(75)=acd559(15)*acd559(75)
      acd559(76)=acd559(20)+acd559(1)
      acd559(76)=acd559(3)*acd559(76)
      acd559(77)=acd559(57)*acd559(72)
      acd559(78)=acd559(55)*acd559(71)
      acd559(79)=acd559(53)*acd559(70)
      acd559(80)=acd559(51)*acd559(69)
      acd559(81)=acd559(63)*acd559(40)
      acd559(82)=acd559(62)*acd559(39)
      acd559(83)=acd559(61)*acd559(38)
      acd559(84)=acd559(59)*acd559(37)
      acd559(85)=2.0_ki*acd559(21)
      acd559(86)=-acd559(22)*acd559(85)
      acd559(87)=acd559(28)*acd559(36)
      acd559(74)=2.0_ki*acd559(87)+acd559(75)+acd559(86)+acd559(84)+acd559(83)+&
      &acd559(82)+acd559(81)+acd559(80)+acd559(79)+acd559(77)+acd559(78)+acd559&
      &(74)+acd559(76)
      acd559(74)=acd559(2)*acd559(74)
      acd559(73)=-acd559(15)*acd559(73)
      acd559(75)=acd559(34)+acd559(29)
      acd559(75)=acd559(3)*acd559(75)
      acd559(76)=acd559(57)*acd559(56)
      acd559(77)=acd559(55)*acd559(54)
      acd559(78)=acd559(53)*acd559(52)
      acd559(79)=acd559(51)*acd559(50)
      acd559(80)=acd559(11)*acd559(40)
      acd559(81)=acd559(9)*acd559(39)
      acd559(82)=acd559(7)*acd559(38)
      acd559(83)=acd559(5)*acd559(37)
      acd559(84)=-acd559(35)*acd559(22)
      acd559(73)=acd559(73)+acd559(84)+acd559(83)+acd559(82)+acd559(81)+acd559(&
      &80)+acd559(79)+acd559(78)+acd559(77)-acd559(58)+acd559(76)+acd559(75)
      acd559(73)=acd559(28)*acd559(73)
      acd559(75)=acd559(12)*acd559(63)
      acd559(76)=acd559(10)*acd559(62)
      acd559(77)=acd559(8)*acd559(61)
      acd559(78)=acd559(6)*acd559(59)
      acd559(75)=acd559(75)+acd559(76)+acd559(77)-acd559(78)
      acd559(76)=acd559(34)-acd559(60)
      acd559(75)=acd559(75)*acd559(76)
      acd559(76)=-acd559(63)*acd559(26)
      acd559(77)=-acd559(62)*acd559(25)
      acd559(78)=-acd559(61)*acd559(24)
      acd559(79)=-acd559(59)*acd559(23)
      acd559(76)=acd559(79)+acd559(78)+acd559(76)+acd559(77)
      acd559(76)=acd559(35)*acd559(76)
      acd559(77)=acd559(11)*acd559(12)
      acd559(78)=acd559(9)*acd559(10)
      acd559(79)=acd559(7)*acd559(8)
      acd559(80)=acd559(5)*acd559(6)
      acd559(77)=acd559(77)+acd559(78)+acd559(79)-acd559(80)
      acd559(78)=acd559(20)*acd559(77)
      acd559(77)=-acd559(13)-acd559(77)
      acd559(77)=acd559(4)*acd559(77)
      acd559(79)=-acd559(11)*acd559(26)
      acd559(80)=-acd559(9)*acd559(25)
      acd559(81)=-acd559(7)*acd559(24)
      acd559(82)=-acd559(5)*acd559(23)
      acd559(79)=acd559(82)+acd559(81)+acd559(80)+acd559(27)+acd559(79)
      acd559(79)=acd559(79)*acd559(85)
      brack=acd559(73)+acd559(74)+acd559(75)+acd559(76)+acd559(77)+acd559(78)+a&
      &cd559(79)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd559h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(104) :: acd559
      complex(ki) :: brack
      acd559(1)=d(iv1,iv2)
      acd559(2)=dotproduct(qshift,spvak2k3)
      acd559(3)=abb559(37)
      acd559(4)=dotproduct(qshift,spvak2k4)
      acd559(5)=abb559(60)
      acd559(6)=dotproduct(qshift,spvak2k5)
      acd559(7)=abb559(48)
      acd559(8)=dotproduct(qshift,spvak2k6)
      acd559(9)=abb559(56)
      acd559(10)=dotproduct(qshift,spvak2k7)
      acd559(11)=abb559(26)
      acd559(12)=abb559(13)
      acd559(13)=k1(iv1)
      acd559(14)=spvak2k7(iv2)
      acd559(15)=abb559(44)
      acd559(16)=k1(iv2)
      acd559(17)=spvak2k7(iv1)
      acd559(18)=k2(iv1)
      acd559(19)=spvak2k3(iv2)
      acd559(20)=abb559(43)
      acd559(21)=spvak2k4(iv2)
      acd559(22)=abb559(63)
      acd559(23)=spvak2k5(iv2)
      acd559(24)=abb559(31)
      acd559(25)=spvak2k6(iv2)
      acd559(26)=abb559(58)
      acd559(27)=k2(iv2)
      acd559(28)=spvak2k3(iv1)
      acd559(29)=spvak2k4(iv1)
      acd559(30)=spvak2k5(iv1)
      acd559(31)=spvak2k6(iv1)
      acd559(32)=k3(iv1)
      acd559(33)=dotproduct(qshift,spvak2k1)
      acd559(34)=abb559(23)
      acd559(35)=spvak2k1(iv2)
      acd559(36)=k3(iv2)
      acd559(37)=spvak2k1(iv1)
      acd559(38)=k4(iv1)
      acd559(39)=k4(iv2)
      acd559(40)=k5(iv1)
      acd559(41)=k5(iv2)
      acd559(42)=k6(iv1)
      acd559(43)=k6(iv2)
      acd559(44)=k7(iv1)
      acd559(45)=k7(iv2)
      acd559(46)=qshift(iv1)
      acd559(47)=qshift(iv2)
      acd559(48)=abb559(15)
      acd559(49)=abb559(65)
      acd559(50)=abb559(49)
      acd559(51)=abb559(20)
      acd559(52)=abb559(28)
      acd559(53)=dotproduct(k3,qshift)
      acd559(54)=dotproduct(k4,qshift)
      acd559(55)=dotproduct(k5,qshift)
      acd559(56)=dotproduct(k6,qshift)
      acd559(57)=dotproduct(qshift,spvak4k3)
      acd559(58)=abb559(21)
      acd559(59)=dotproduct(qshift,spvak4k6)
      acd559(60)=abb559(19)
      acd559(61)=dotproduct(qshift,spvak5k3)
      acd559(62)=abb559(14)
      acd559(63)=dotproduct(qshift,spvak5k6)
      acd559(64)=abb559(12)
      acd559(65)=abb559(18)
      acd559(66)=spvak4k3(iv2)
      acd559(67)=spvak4k6(iv2)
      acd559(68)=spvak5k3(iv2)
      acd559(69)=spvak5k6(iv2)
      acd559(70)=spvak3k1(iv2)
      acd559(71)=abb559(17)
      acd559(72)=spvak4k1(iv2)
      acd559(73)=abb559(16)
      acd559(74)=spvak5k1(iv2)
      acd559(75)=abb559(81)
      acd559(76)=spvak6k1(iv2)
      acd559(77)=abb559(100)
      acd559(78)=spvak4k3(iv1)
      acd559(79)=spvak4k6(iv1)
      acd559(80)=spvak5k3(iv1)
      acd559(81)=spvak5k6(iv1)
      acd559(82)=spvak3k1(iv1)
      acd559(83)=spvak4k1(iv1)
      acd559(84)=spvak5k1(iv1)
      acd559(85)=spvak6k1(iv1)
      acd559(86)=acd559(64)*acd559(81)
      acd559(87)=acd559(62)*acd559(80)
      acd559(88)=acd559(60)*acd559(79)
      acd559(89)=acd559(58)*acd559(78)
      acd559(86)=acd559(89)+acd559(86)+acd559(87)+acd559(88)
      acd559(87)=-acd559(33)*acd559(86)
      acd559(88)=acd559(64)*acd559(63)
      acd559(89)=acd559(62)*acd559(61)
      acd559(90)=acd559(60)*acd559(59)
      acd559(91)=acd559(58)*acd559(57)
      acd559(88)=acd559(88)+acd559(89)+acd559(90)+acd559(91)-acd559(65)
      acd559(89)=-acd559(37)*acd559(88)
      acd559(90)=-acd559(32)-acd559(38)+acd559(40)+acd559(42)
      acd559(91)=-acd559(33)*acd559(90)
      acd559(92)=-acd559(53)-acd559(54)+acd559(55)+acd559(56)
      acd559(93)=-acd559(37)*acd559(92)
      acd559(91)=acd559(91)+acd559(93)
      acd559(91)=acd559(34)*acd559(91)
      acd559(93)=acd559(44)+acd559(13)
      acd559(93)=acd559(15)*acd559(93)
      acd559(94)=acd559(77)*acd559(85)
      acd559(95)=acd559(75)*acd559(84)
      acd559(96)=acd559(73)*acd559(83)
      acd559(97)=acd559(71)*acd559(82)
      acd559(98)=acd559(31)*acd559(51)
      acd559(99)=acd559(30)*acd559(50)
      acd559(100)=acd559(29)*acd559(49)
      acd559(101)=acd559(28)*acd559(48)
      acd559(102)=2.0_ki*acd559(11)
      acd559(103)=-acd559(46)*acd559(102)
      acd559(104)=acd559(17)*acd559(52)
      acd559(87)=2.0_ki*acd559(104)+acd559(91)+acd559(89)+acd559(87)+acd559(103&
      &)+acd559(101)+acd559(100)+acd559(99)+acd559(98)+acd559(97)+acd559(96)+ac&
      &d559(94)+acd559(95)+acd559(93)
      acd559(87)=acd559(14)*acd559(87)
      acd559(89)=acd559(64)*acd559(69)
      acd559(91)=acd559(62)*acd559(68)
      acd559(93)=acd559(60)*acd559(67)
      acd559(94)=acd559(58)*acd559(66)
      acd559(89)=acd559(94)+acd559(89)+acd559(91)+acd559(93)
      acd559(91)=-acd559(33)*acd559(89)
      acd559(88)=-acd559(35)*acd559(88)
      acd559(93)=-acd559(36)-acd559(39)+acd559(41)+acd559(43)
      acd559(94)=-acd559(33)*acd559(93)
      acd559(92)=-acd559(35)*acd559(92)
      acd559(92)=acd559(94)+acd559(92)
      acd559(92)=acd559(34)*acd559(92)
      acd559(94)=acd559(45)+acd559(16)
      acd559(94)=acd559(15)*acd559(94)
      acd559(95)=acd559(77)*acd559(76)
      acd559(96)=acd559(75)*acd559(74)
      acd559(97)=acd559(73)*acd559(72)
      acd559(98)=acd559(71)*acd559(70)
      acd559(99)=acd559(25)*acd559(51)
      acd559(100)=acd559(23)*acd559(50)
      acd559(101)=acd559(21)*acd559(49)
      acd559(103)=acd559(19)*acd559(48)
      acd559(104)=-acd559(47)*acd559(102)
      acd559(88)=acd559(92)+acd559(88)+acd559(91)+acd559(104)+acd559(103)+acd55&
      &9(101)+acd559(100)+acd559(99)+acd559(98)+acd559(97)+acd559(95)+acd559(96&
      &)+acd559(94)
      acd559(88)=acd559(17)*acd559(88)
      acd559(91)=-acd559(31)*acd559(9)
      acd559(92)=-acd559(30)*acd559(7)
      acd559(94)=-acd559(29)*acd559(5)
      acd559(95)=-acd559(28)*acd559(3)
      acd559(91)=acd559(95)+acd559(94)+acd559(91)+acd559(92)
      acd559(91)=acd559(47)*acd559(91)
      acd559(92)=-acd559(25)*acd559(9)
      acd559(94)=-acd559(23)*acd559(7)
      acd559(95)=-acd559(21)*acd559(5)
      acd559(96)=-acd559(19)*acd559(3)
      acd559(92)=acd559(96)+acd559(95)+acd559(92)+acd559(94)
      acd559(92)=acd559(46)*acd559(92)
      acd559(94)=-acd559(9)*acd559(8)
      acd559(95)=-acd559(7)*acd559(6)
      acd559(96)=-acd559(5)*acd559(4)
      acd559(97)=-acd559(3)*acd559(2)
      acd559(94)=acd559(97)+acd559(96)+acd559(95)+acd559(12)+acd559(94)
      acd559(94)=acd559(1)*acd559(94)
      acd559(91)=acd559(94)+acd559(91)+acd559(92)
      acd559(89)=-acd559(37)*acd559(89)
      acd559(86)=-acd559(35)*acd559(86)
      acd559(92)=-acd559(37)*acd559(93)
      acd559(90)=-acd559(35)*acd559(90)
      acd559(90)=acd559(92)+acd559(90)
      acd559(90)=acd559(34)*acd559(90)
      acd559(92)=-acd559(1)*acd559(102)
      acd559(86)=acd559(90)+acd559(86)+acd559(92)+acd559(89)
      acd559(86)=acd559(10)*acd559(86)
      acd559(89)=acd559(25)*acd559(26)
      acd559(90)=acd559(23)*acd559(24)
      acd559(92)=acd559(21)*acd559(22)
      acd559(93)=acd559(19)*acd559(20)
      acd559(89)=acd559(89)+acd559(90)+acd559(92)-acd559(93)
      acd559(90)=acd559(44)-acd559(18)
      acd559(89)=acd559(89)*acd559(90)
      acd559(90)=acd559(26)*acd559(31)
      acd559(92)=acd559(24)*acd559(30)
      acd559(93)=acd559(22)*acd559(29)
      acd559(94)=acd559(20)*acd559(28)
      acd559(90)=acd559(90)+acd559(92)+acd559(93)-acd559(94)
      acd559(92)=acd559(45)-acd559(27)
      acd559(90)=acd559(90)*acd559(92)
      brack=acd559(86)+acd559(87)+acd559(88)+acd559(89)+acd559(90)+2.0_ki*acd55&
      &9(91)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd559h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd559
      complex(ki) :: brack
      acd559(1)=d(iv1,iv2)
      acd559(2)=spvak2k3(iv3)
      acd559(3)=abb559(37)
      acd559(4)=spvak2k4(iv3)
      acd559(5)=abb559(60)
      acd559(6)=spvak2k5(iv3)
      acd559(7)=abb559(48)
      acd559(8)=spvak2k6(iv3)
      acd559(9)=abb559(56)
      acd559(10)=spvak2k7(iv3)
      acd559(11)=abb559(26)
      acd559(12)=d(iv1,iv3)
      acd559(13)=spvak2k3(iv2)
      acd559(14)=spvak2k4(iv2)
      acd559(15)=spvak2k5(iv2)
      acd559(16)=spvak2k6(iv2)
      acd559(17)=spvak2k7(iv2)
      acd559(18)=d(iv2,iv3)
      acd559(19)=spvak2k3(iv1)
      acd559(20)=spvak2k4(iv1)
      acd559(21)=spvak2k5(iv1)
      acd559(22)=spvak2k6(iv1)
      acd559(23)=spvak2k7(iv1)
      acd559(24)=k3(iv1)
      acd559(25)=spvak2k1(iv3)
      acd559(26)=abb559(23)
      acd559(27)=spvak2k1(iv2)
      acd559(28)=k3(iv2)
      acd559(29)=spvak2k1(iv1)
      acd559(30)=k3(iv3)
      acd559(31)=k4(iv1)
      acd559(32)=k4(iv2)
      acd559(33)=k4(iv3)
      acd559(34)=k5(iv1)
      acd559(35)=k5(iv2)
      acd559(36)=k5(iv3)
      acd559(37)=k6(iv1)
      acd559(38)=k6(iv2)
      acd559(39)=k6(iv3)
      acd559(40)=spvak4k3(iv3)
      acd559(41)=abb559(21)
      acd559(42)=spvak4k6(iv3)
      acd559(43)=abb559(19)
      acd559(44)=spvak5k3(iv3)
      acd559(45)=abb559(14)
      acd559(46)=spvak5k6(iv3)
      acd559(47)=abb559(12)
      acd559(48)=spvak4k3(iv2)
      acd559(49)=spvak4k6(iv2)
      acd559(50)=spvak5k3(iv2)
      acd559(51)=spvak5k6(iv2)
      acd559(52)=spvak4k3(iv1)
      acd559(53)=spvak4k6(iv1)
      acd559(54)=spvak5k3(iv1)
      acd559(55)=spvak5k6(iv1)
      acd559(56)=acd559(27)*acd559(23)
      acd559(57)=acd559(29)*acd559(17)
      acd559(56)=acd559(56)+acd559(57)
      acd559(57)=-acd559(39)-acd559(36)+acd559(33)+acd559(30)
      acd559(57)=acd559(57)*acd559(56)
      acd559(58)=acd559(25)*acd559(23)
      acd559(59)=acd559(29)*acd559(10)
      acd559(58)=acd559(58)+acd559(59)
      acd559(59)=-acd559(38)-acd559(35)+acd559(32)+acd559(28)
      acd559(59)=acd559(59)*acd559(58)
      acd559(60)=acd559(25)*acd559(17)
      acd559(61)=acd559(27)*acd559(10)
      acd559(60)=acd559(60)+acd559(61)
      acd559(61)=-acd559(37)-acd559(34)+acd559(31)+acd559(24)
      acd559(61)=acd559(61)*acd559(60)
      acd559(57)=acd559(61)+acd559(59)+acd559(57)
      acd559(57)=acd559(26)*acd559(57)
      acd559(59)=-acd559(48)*acd559(41)
      acd559(61)=-acd559(49)*acd559(43)
      acd559(62)=-acd559(50)*acd559(45)
      acd559(63)=-acd559(51)*acd559(47)
      acd559(59)=acd559(63)+acd559(62)+acd559(61)+acd559(59)
      acd559(58)=acd559(58)*acd559(59)
      acd559(59)=-acd559(40)*acd559(41)
      acd559(61)=-acd559(42)*acd559(43)
      acd559(62)=-acd559(44)*acd559(45)
      acd559(63)=-acd559(46)*acd559(47)
      acd559(59)=acd559(63)+acd559(62)+acd559(61)+acd559(59)
      acd559(56)=acd559(56)*acd559(59)
      acd559(59)=-acd559(19)*acd559(3)
      acd559(61)=-acd559(20)*acd559(5)
      acd559(62)=-acd559(21)*acd559(7)
      acd559(63)=-acd559(22)*acd559(9)
      acd559(59)=acd559(63)+acd559(62)+acd559(61)+acd559(59)
      acd559(61)=2.0_ki*acd559(18)
      acd559(59)=acd559(61)*acd559(59)
      acd559(61)=-acd559(13)*acd559(3)
      acd559(62)=-acd559(14)*acd559(5)
      acd559(63)=-acd559(15)*acd559(7)
      acd559(64)=-acd559(16)*acd559(9)
      acd559(61)=acd559(64)+acd559(63)+acd559(62)+acd559(61)
      acd559(62)=2.0_ki*acd559(12)
      acd559(61)=acd559(62)*acd559(61)
      acd559(62)=-acd559(2)*acd559(3)
      acd559(63)=-acd559(4)*acd559(5)
      acd559(64)=-acd559(6)*acd559(7)
      acd559(65)=-acd559(8)*acd559(9)
      acd559(62)=acd559(65)+acd559(64)+acd559(63)+acd559(62)
      acd559(63)=2.0_ki*acd559(1)
      acd559(62)=acd559(63)*acd559(62)
      acd559(63)=-acd559(52)*acd559(41)
      acd559(64)=-acd559(53)*acd559(43)
      acd559(65)=-acd559(54)*acd559(45)
      acd559(66)=-acd559(55)*acd559(47)
      acd559(63)=acd559(66)+acd559(65)+acd559(64)+acd559(63)
      acd559(60)=acd559(60)*acd559(63)
      acd559(63)=-acd559(1)*acd559(10)
      acd559(64)=-acd559(12)*acd559(17)
      acd559(65)=-acd559(18)*acd559(23)
      acd559(63)=acd559(65)+acd559(63)+acd559(64)
      acd559(63)=acd559(11)*acd559(63)
      brack=acd559(56)+acd559(57)+acd559(58)+acd559(59)+acd559(60)+acd559(61)+a&
      &cd559(62)+2.0_ki*acd559(63)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd559h2
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
!---#[ subroutine reconstruct_d559:
   subroutine     reconstruct_d559(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_559:
      coeffs%coeffs_559%c0 = derivative(czip)
      coeffs%coeffs_559%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_559%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_559%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_559%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_559%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_559%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_559%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_559%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_559%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_559%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_559%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_559%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_559%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_559%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_559%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_559%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_559%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_559%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_559%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_559%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_559%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_559%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_559%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_559%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_559%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_559%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_559%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_559%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_559%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_559%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_559%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_559%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_559%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_559%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_559:
   end subroutine reconstruct_d559
!---#] subroutine reconstruct_d559:
end module     p4_ubaru_epnemumnmubarg_d559h2l1d
