module     p12_sbars_epnemumnmubarg_d33h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p12_sbars_epnemumnmubarg/helicity5d33h5l1d.f90
   ! generator: buildfortran_d.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d33
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd33
      complex(ki) :: brack
      acd33(1)=dotproduct(k1,qshift)
      acd33(2)=dotproduct(qshift,spvak5k6)
      acd33(3)=abb33(21)
      acd33(4)=abb33(18)
      acd33(5)=dotproduct(k2,qshift)
      acd33(6)=abb33(14)
      acd33(7)=dotproduct(qshift,spvak1k3)
      acd33(8)=abb33(30)
      acd33(9)=dotproduct(qshift,spvak4k2)
      acd33(10)=abb33(46)
      acd33(11)=dotproduct(qshift,spvak4k3)
      acd33(12)=abb33(37)
      acd33(13)=dotproduct(qshift,spvak5k2)
      acd33(14)=abb33(12)
      acd33(15)=dotproduct(qshift,spvak7k3)
      acd33(16)=abb33(39)
      acd33(17)=abb33(36)
      acd33(18)=dotproduct(k5,qshift)
      acd33(19)=abb33(31)
      acd33(20)=dotproduct(k6,qshift)
      acd33(21)=dotproduct(k7,qshift)
      acd33(22)=abb33(13)
      acd33(23)=abb33(25)
      acd33(24)=dotproduct(qshift,qshift)
      acd33(25)=abb33(35)
      acd33(26)=abb33(34)
      acd33(27)=abb33(32)
      acd33(28)=abb33(50)
      acd33(29)=abb33(43)
      acd33(30)=abb33(20)
      acd33(31)=abb33(29)
      acd33(32)=abb33(7)
      acd33(33)=dotproduct(qshift,spvak1k2)
      acd33(34)=abb33(27)
      acd33(35)=dotproduct(qshift,spvak7k2)
      acd33(36)=abb33(47)
      acd33(37)=abb33(17)
      acd33(38)=abb33(26)
      acd33(39)=abb33(22)
      acd33(40)=dotproduct(qshift,spvak1k7)
      acd33(41)=abb33(33)
      acd33(42)=abb33(45)
      acd33(43)=dotproduct(qshift,spvak6k2)
      acd33(44)=dotproduct(qshift,spvak7k1)
      acd33(45)=abb33(48)
      acd33(46)=abb33(10)
      acd33(47)=abb33(51)
      acd33(48)=abb33(8)
      acd33(49)=dotproduct(qshift,spvak1k6)
      acd33(50)=abb33(23)
      acd33(51)=abb33(19)
      acd33(52)=dotproduct(qshift,spvak7k6)
      acd33(53)=abb33(24)
      acd33(54)=abb33(28)
      acd33(55)=abb33(11)
      acd33(56)=abb33(9)
      acd33(57)=abb33(15)
      acd33(58)=abb33(44)
      acd33(59)=abb33(16)
      acd33(60)=-acd33(43)*acd33(28)
      acd33(61)=acd33(3)*acd33(1)
      acd33(62)=acd33(6)*acd33(5)
      acd33(63)=acd33(22)*acd33(21)
      acd33(64)=acd33(31)*acd33(7)
      acd33(65)=acd33(32)*acd33(9)
      acd33(66)=acd33(33)*acd33(11)
      acd33(67)=-acd33(34)*acd33(66)
      acd33(68)=acd33(35)*acd33(11)
      acd33(69)=acd33(36)*acd33(68)
      acd33(70)=acd33(37)*acd33(13)
      acd33(71)=acd33(38)*acd33(15)
      acd33(72)=acd33(39)*acd33(33)
      acd33(73)=acd33(41)*acd33(40)
      acd33(74)=acd33(42)*acd33(35)
      acd33(75)=acd33(45)*acd33(44)
      acd33(60)=acd33(74)+acd33(72)-acd33(46)+acd33(75)+acd33(73)+acd33(71)+acd&
      &33(70)+acd33(69)+acd33(67)+acd33(65)+acd33(64)+acd33(63)+acd33(62)+acd33&
      &(61)+acd33(60)
      acd33(60)=acd33(2)*acd33(60)
      acd33(61)=-acd33(28)*acd33(13)
      acd33(62)=-acd33(25)*acd33(7)
      acd33(63)=-acd33(26)*acd33(9)
      acd33(64)=-acd33(27)*acd33(11)
      acd33(65)=-acd33(29)*acd33(15)
      acd33(61)=acd33(30)+acd33(65)+acd33(64)+acd33(63)+acd33(62)+acd33(61)
      acd33(61)=acd33(24)*acd33(61)
      acd33(62)=acd33(8)*acd33(7)
      acd33(63)=-acd33(10)*acd33(9)
      acd33(64)=acd33(14)*acd33(13)
      acd33(65)=-acd33(16)*acd33(15)
      acd33(62)=acd33(65)+acd33(64)+acd33(62)+acd33(63)
      acd33(63)=acd33(20)+acd33(18)
      acd33(64)=acd33(63)-acd33(5)
      acd33(62)=acd33(64)*acd33(62)
      acd33(64)=acd33(12)*acd33(5)
      acd33(65)=acd33(47)*acd33(13)
      acd33(67)=acd33(50)*acd33(49)
      acd33(69)=acd33(53)*acd33(52)
      acd33(64)=-acd33(54)+acd33(69)+acd33(67)+acd33(65)+acd33(64)
      acd33(64)=acd33(11)*acd33(64)
      acd33(63)=acd33(19)*acd33(63)
      acd33(65)=-acd33(4)*acd33(1)
      acd33(67)=-acd33(17)*acd33(5)
      acd33(69)=-acd33(23)*acd33(21)
      acd33(66)=acd33(48)*acd33(66)
      acd33(68)=acd33(51)*acd33(68)
      acd33(70)=-acd33(55)*acd33(13)
      acd33(71)=-acd33(56)*acd33(40)
      acd33(72)=-acd33(57)*acd33(43)
      acd33(73)=-acd33(58)*acd33(44)
      brack=acd33(59)+acd33(60)+acd33(61)+acd33(62)+acd33(63)+acd33(64)+acd33(6&
      &5)+acd33(66)+acd33(67)+acd33(68)+acd33(69)+acd33(70)+acd33(71)+acd33(72)&
      &+acd33(73)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd33
      complex(ki) :: brack
      acd33(1)=k1(iv1)
      acd33(2)=dotproduct(qshift,spvak5k6)
      acd33(3)=abb33(21)
      acd33(4)=abb33(18)
      acd33(5)=k2(iv1)
      acd33(6)=abb33(14)
      acd33(7)=dotproduct(qshift,spvak1k3)
      acd33(8)=abb33(30)
      acd33(9)=dotproduct(qshift,spvak4k2)
      acd33(10)=abb33(46)
      acd33(11)=dotproduct(qshift,spvak4k3)
      acd33(12)=abb33(37)
      acd33(13)=dotproduct(qshift,spvak5k2)
      acd33(14)=abb33(12)
      acd33(15)=dotproduct(qshift,spvak7k3)
      acd33(16)=abb33(39)
      acd33(17)=abb33(36)
      acd33(18)=k5(iv1)
      acd33(19)=abb33(31)
      acd33(20)=k6(iv1)
      acd33(21)=k7(iv1)
      acd33(22)=abb33(13)
      acd33(23)=abb33(25)
      acd33(24)=qshift(iv1)
      acd33(25)=abb33(35)
      acd33(26)=abb33(34)
      acd33(27)=abb33(32)
      acd33(28)=abb33(50)
      acd33(29)=abb33(43)
      acd33(30)=abb33(20)
      acd33(31)=spvak5k6(iv1)
      acd33(32)=dotproduct(k1,qshift)
      acd33(33)=dotproduct(k2,qshift)
      acd33(34)=dotproduct(k7,qshift)
      acd33(35)=abb33(29)
      acd33(36)=abb33(7)
      acd33(37)=dotproduct(qshift,spvak1k2)
      acd33(38)=abb33(27)
      acd33(39)=dotproduct(qshift,spvak7k2)
      acd33(40)=abb33(47)
      acd33(41)=abb33(17)
      acd33(42)=abb33(26)
      acd33(43)=abb33(22)
      acd33(44)=dotproduct(qshift,spvak1k7)
      acd33(45)=abb33(33)
      acd33(46)=abb33(45)
      acd33(47)=dotproduct(qshift,spvak6k2)
      acd33(48)=dotproduct(qshift,spvak7k1)
      acd33(49)=abb33(48)
      acd33(50)=abb33(10)
      acd33(51)=spvak1k3(iv1)
      acd33(52)=dotproduct(k5,qshift)
      acd33(53)=dotproduct(k6,qshift)
      acd33(54)=dotproduct(qshift,qshift)
      acd33(55)=spvak4k2(iv1)
      acd33(56)=spvak4k3(iv1)
      acd33(57)=abb33(51)
      acd33(58)=abb33(8)
      acd33(59)=dotproduct(qshift,spvak1k6)
      acd33(60)=abb33(23)
      acd33(61)=abb33(19)
      acd33(62)=dotproduct(qshift,spvak7k6)
      acd33(63)=abb33(24)
      acd33(64)=abb33(28)
      acd33(65)=spvak5k2(iv1)
      acd33(66)=abb33(11)
      acd33(67)=spvak7k3(iv1)
      acd33(68)=spvak1k2(iv1)
      acd33(69)=spvak1k6(iv1)
      acd33(70)=spvak1k7(iv1)
      acd33(71)=abb33(9)
      acd33(72)=spvak7k2(iv1)
      acd33(73)=spvak7k6(iv1)
      acd33(74)=spvak6k2(iv1)
      acd33(75)=abb33(15)
      acd33(76)=spvak7k1(iv1)
      acd33(77)=abb33(44)
      acd33(78)=acd33(39)*acd33(40)
      acd33(79)=acd33(37)*acd33(38)
      acd33(78)=acd33(78)-acd33(79)
      acd33(79)=acd33(56)*acd33(78)
      acd33(80)=acd33(40)*acd33(72)
      acd33(81)=-acd33(38)*acd33(68)
      acd33(80)=acd33(80)+acd33(81)
      acd33(80)=acd33(11)*acd33(80)
      acd33(81)=acd33(49)*acd33(76)
      acd33(82)=acd33(45)*acd33(70)
      acd33(83)=acd33(21)*acd33(22)
      acd33(84)=acd33(1)*acd33(3)
      acd33(85)=acd33(72)*acd33(46)
      acd33(86)=acd33(68)*acd33(43)
      acd33(87)=-acd33(28)*acd33(74)
      acd33(88)=acd33(67)*acd33(42)
      acd33(89)=acd33(55)*acd33(36)
      acd33(90)=acd33(51)*acd33(35)
      acd33(91)=acd33(65)*acd33(41)
      acd33(92)=acd33(5)*acd33(6)
      acd33(79)=acd33(80)+acd33(79)+acd33(92)+acd33(91)+acd33(90)+acd33(89)+acd&
      &33(88)+acd33(87)+acd33(86)+acd33(85)+acd33(84)+acd33(83)+acd33(81)+acd33&
      &(82)
      acd33(79)=acd33(2)*acd33(79)
      acd33(78)=acd33(11)*acd33(78)
      acd33(80)=acd33(49)*acd33(48)
      acd33(81)=acd33(45)*acd33(44)
      acd33(82)=acd33(22)*acd33(34)
      acd33(83)=acd33(3)*acd33(32)
      acd33(84)=acd33(39)*acd33(46)
      acd33(85)=acd33(37)*acd33(43)
      acd33(86)=-acd33(28)*acd33(47)
      acd33(87)=acd33(15)*acd33(42)
      acd33(88)=acd33(9)*acd33(36)
      acd33(89)=acd33(7)*acd33(35)
      acd33(90)=acd33(33)*acd33(6)
      acd33(91)=acd33(13)*acd33(41)
      acd33(78)=acd33(78)+acd33(91)+acd33(90)+acd33(89)+acd33(88)+acd33(87)+acd&
      &33(86)+acd33(85)+acd33(84)+acd33(83)+acd33(82)+acd33(81)-acd33(50)+acd33&
      &(80)
      acd33(78)=acd33(31)*acd33(78)
      acd33(80)=acd33(63)*acd33(62)
      acd33(81)=acd33(60)*acd33(59)
      acd33(82)=acd33(39)*acd33(61)
      acd33(83)=acd33(37)*acd33(58)
      acd33(84)=-acd33(54)*acd33(27)
      acd33(85)=acd33(33)*acd33(12)
      acd33(86)=acd33(13)*acd33(57)
      acd33(80)=acd33(86)+acd33(85)+acd33(84)+acd33(83)+acd33(82)+acd33(81)-acd&
      &33(64)+acd33(80)
      acd33(80)=acd33(56)*acd33(80)
      acd33(81)=acd33(63)*acd33(73)
      acd33(82)=acd33(60)*acd33(69)
      acd33(83)=acd33(72)*acd33(61)
      acd33(84)=acd33(68)*acd33(58)
      acd33(85)=2.0_ki*acd33(24)
      acd33(86)=-acd33(27)*acd33(85)
      acd33(87)=acd33(65)*acd33(57)
      acd33(88)=acd33(5)*acd33(12)
      acd33(81)=acd33(88)+acd33(87)+acd33(86)+acd33(84)+acd33(83)+acd33(81)+acd&
      &33(82)
      acd33(81)=acd33(11)*acd33(81)
      acd33(82)=acd33(16)*acd33(15)
      acd33(83)=-acd33(13)*acd33(14)
      acd33(84)=acd33(10)*acd33(9)
      acd33(86)=-acd33(8)*acd33(7)
      acd33(82)=acd33(86)+acd33(84)+acd33(83)-acd33(17)+acd33(82)
      acd33(82)=acd33(5)*acd33(82)
      acd33(83)=-acd33(67)*acd33(29)
      acd33(84)=-acd33(55)*acd33(26)
      acd33(86)=-acd33(51)*acd33(25)
      acd33(83)=acd33(86)+acd33(83)+acd33(84)
      acd33(83)=acd33(54)*acd33(83)
      acd33(84)=-acd33(15)*acd33(29)
      acd33(86)=-acd33(9)*acd33(26)
      acd33(87)=-acd33(7)*acd33(25)
      acd33(84)=acd33(87)+acd33(86)+acd33(30)+acd33(84)
      acd33(84)=acd33(84)*acd33(85)
      acd33(86)=-acd33(33)+acd33(52)+acd33(53)
      acd33(87)=-acd33(67)*acd33(86)
      acd33(88)=acd33(18)+acd33(20)
      acd33(89)=-acd33(15)*acd33(88)
      acd33(87)=acd33(89)+acd33(87)
      acd33(87)=acd33(16)*acd33(87)
      acd33(85)=-acd33(28)*acd33(85)
      acd33(89)=acd33(14)*acd33(88)
      acd33(85)=acd33(85)+acd33(89)
      acd33(85)=acd33(13)*acd33(85)
      acd33(89)=-acd33(55)*acd33(86)
      acd33(90)=-acd33(9)*acd33(88)
      acd33(89)=acd33(90)+acd33(89)
      acd33(89)=acd33(10)*acd33(89)
      acd33(90)=acd33(51)*acd33(86)
      acd33(91)=acd33(7)*acd33(88)
      acd33(90)=acd33(91)+acd33(90)
      acd33(90)=acd33(8)*acd33(90)
      acd33(91)=-acd33(54)*acd33(28)
      acd33(86)=acd33(14)*acd33(86)
      acd33(86)=acd33(86)-acd33(66)+acd33(91)
      acd33(86)=acd33(65)*acd33(86)
      acd33(88)=acd33(19)*acd33(88)
      acd33(91)=-acd33(76)*acd33(77)
      acd33(92)=-acd33(74)*acd33(75)
      acd33(93)=-acd33(70)*acd33(71)
      acd33(94)=-acd33(21)*acd33(23)
      acd33(95)=-acd33(1)*acd33(4)
      brack=acd33(78)+acd33(79)+acd33(80)+acd33(81)+acd33(82)+acd33(83)+acd33(8&
      &4)+acd33(85)+acd33(86)+acd33(87)+acd33(88)+acd33(89)+acd33(90)+acd33(91)&
      &+acd33(92)+acd33(93)+acd33(94)+acd33(95)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(92) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=dotproduct(qshift,spvak1k3)
      acd33(3)=abb33(35)
      acd33(4)=dotproduct(qshift,spvak4k2)
      acd33(5)=abb33(34)
      acd33(6)=dotproduct(qshift,spvak4k3)
      acd33(7)=abb33(32)
      acd33(8)=dotproduct(qshift,spvak5k2)
      acd33(9)=abb33(50)
      acd33(10)=dotproduct(qshift,spvak7k3)
      acd33(11)=abb33(43)
      acd33(12)=abb33(20)
      acd33(13)=k1(iv1)
      acd33(14)=spvak5k6(iv2)
      acd33(15)=abb33(21)
      acd33(16)=k1(iv2)
      acd33(17)=spvak5k6(iv1)
      acd33(18)=k2(iv1)
      acd33(19)=spvak1k3(iv2)
      acd33(20)=abb33(30)
      acd33(21)=spvak4k2(iv2)
      acd33(22)=abb33(46)
      acd33(23)=spvak4k3(iv2)
      acd33(24)=abb33(37)
      acd33(25)=spvak5k2(iv2)
      acd33(26)=abb33(12)
      acd33(27)=spvak7k3(iv2)
      acd33(28)=abb33(39)
      acd33(29)=abb33(14)
      acd33(30)=k2(iv2)
      acd33(31)=spvak1k3(iv1)
      acd33(32)=spvak4k2(iv1)
      acd33(33)=spvak4k3(iv1)
      acd33(34)=spvak5k2(iv1)
      acd33(35)=spvak7k3(iv1)
      acd33(36)=k5(iv1)
      acd33(37)=k5(iv2)
      acd33(38)=k6(iv1)
      acd33(39)=k6(iv2)
      acd33(40)=k7(iv1)
      acd33(41)=abb33(13)
      acd33(42)=k7(iv2)
      acd33(43)=qshift(iv1)
      acd33(44)=qshift(iv2)
      acd33(45)=abb33(29)
      acd33(46)=abb33(7)
      acd33(47)=abb33(51)
      acd33(48)=dotproduct(qshift,spvak1k2)
      acd33(49)=abb33(27)
      acd33(50)=dotproduct(qshift,spvak7k2)
      acd33(51)=abb33(47)
      acd33(52)=spvak1k2(iv2)
      acd33(53)=dotproduct(qshift,spvak5k6)
      acd33(54)=abb33(8)
      acd33(55)=spvak1k6(iv2)
      acd33(56)=abb33(23)
      acd33(57)=spvak7k2(iv2)
      acd33(58)=abb33(19)
      acd33(59)=spvak7k6(iv2)
      acd33(60)=abb33(24)
      acd33(61)=spvak1k2(iv1)
      acd33(62)=spvak1k6(iv1)
      acd33(63)=spvak7k2(iv1)
      acd33(64)=spvak7k6(iv1)
      acd33(65)=abb33(17)
      acd33(66)=abb33(26)
      acd33(67)=abb33(22)
      acd33(68)=spvak1k7(iv2)
      acd33(69)=abb33(33)
      acd33(70)=abb33(45)
      acd33(71)=spvak6k2(iv2)
      acd33(72)=spvak7k1(iv2)
      acd33(73)=abb33(48)
      acd33(74)=spvak1k7(iv1)
      acd33(75)=spvak6k2(iv1)
      acd33(76)=spvak7k1(iv1)
      acd33(77)=acd33(51)*acd33(50)
      acd33(78)=acd33(49)*acd33(48)
      acd33(77)=acd33(77)-acd33(78)
      acd33(78)=acd33(23)*acd33(77)
      acd33(79)=acd33(51)*acd33(6)
      acd33(79)=acd33(79)+acd33(70)
      acd33(80)=acd33(57)*acd33(79)
      acd33(81)=acd33(49)*acd33(6)
      acd33(81)=acd33(81)-acd33(67)
      acd33(82)=-acd33(52)*acd33(81)
      acd33(83)=acd33(73)*acd33(72)
      acd33(84)=acd33(69)*acd33(68)
      acd33(85)=acd33(41)*acd33(42)
      acd33(86)=acd33(15)*acd33(16)
      acd33(87)=acd33(27)*acd33(66)
      acd33(88)=acd33(21)*acd33(46)
      acd33(89)=acd33(19)*acd33(45)
      acd33(90)=-acd33(9)*acd33(71)
      acd33(91)=acd33(30)*acd33(29)
      acd33(92)=acd33(25)*acd33(65)
      acd33(78)=acd33(78)+acd33(92)+acd33(91)+acd33(90)+acd33(89)+acd33(88)+acd&
      &33(87)+acd33(86)+acd33(85)+acd33(83)+acd33(84)+acd33(82)+acd33(80)
      acd33(78)=acd33(17)*acd33(78)
      acd33(77)=acd33(33)*acd33(77)
      acd33(79)=acd33(63)*acd33(79)
      acd33(80)=-acd33(61)*acd33(81)
      acd33(81)=acd33(73)*acd33(76)
      acd33(82)=acd33(69)*acd33(74)
      acd33(83)=acd33(41)*acd33(40)
      acd33(84)=acd33(15)*acd33(13)
      acd33(85)=acd33(35)*acd33(66)
      acd33(86)=acd33(32)*acd33(46)
      acd33(87)=acd33(31)*acd33(45)
      acd33(88)=-acd33(9)*acd33(75)
      acd33(89)=acd33(34)*acd33(65)
      acd33(90)=acd33(18)*acd33(29)
      acd33(77)=acd33(77)+acd33(90)+acd33(89)+acd33(88)+acd33(87)+acd33(86)+acd&
      &33(85)+acd33(84)+acd33(83)+acd33(81)+acd33(82)+acd33(80)+acd33(79)
      acd33(77)=acd33(14)*acd33(77)
      acd33(79)=acd33(49)*acd33(53)
      acd33(79)=acd33(79)-acd33(54)
      acd33(80)=-acd33(52)*acd33(79)
      acd33(81)=acd33(51)*acd33(53)
      acd33(81)=acd33(81)+acd33(58)
      acd33(82)=acd33(57)*acd33(81)
      acd33(83)=acd33(60)*acd33(59)
      acd33(84)=acd33(56)*acd33(55)
      acd33(85)=2.0_ki*acd33(7)
      acd33(85)=-acd33(44)*acd33(85)
      acd33(86)=acd33(30)*acd33(24)
      acd33(87)=acd33(25)*acd33(47)
      acd33(80)=acd33(87)+acd33(86)+acd33(85)+acd33(83)+acd33(84)+acd33(82)+acd&
      &33(80)
      acd33(80)=acd33(33)*acd33(80)
      acd33(81)=acd33(63)*acd33(81)
      acd33(79)=-acd33(61)*acd33(79)
      acd33(82)=acd33(60)*acd33(64)
      acd33(83)=acd33(56)*acd33(62)
      acd33(84)=2.0_ki*acd33(43)
      acd33(85)=-acd33(7)*acd33(84)
      acd33(86)=acd33(34)*acd33(47)
      acd33(87)=acd33(18)*acd33(24)
      acd33(79)=acd33(87)+acd33(86)+acd33(85)+acd33(82)+acd33(83)+acd33(79)+acd&
      &33(81)
      acd33(79)=acd33(23)*acd33(79)
      acd33(81)=-acd33(11)*acd33(10)
      acd33(82)=-acd33(5)*acd33(4)
      acd33(83)=-acd33(3)*acd33(2)
      acd33(85)=-acd33(9)*acd33(8)
      acd33(86)=-acd33(6)*acd33(7)
      acd33(81)=acd33(86)+acd33(85)+acd33(83)+acd33(82)+acd33(12)+acd33(81)
      acd33(81)=acd33(1)*acd33(81)
      acd33(82)=-acd33(35)*acd33(11)
      acd33(83)=-acd33(32)*acd33(5)
      acd33(85)=-acd33(31)*acd33(3)
      acd33(86)=-acd33(34)*acd33(9)
      acd33(82)=acd33(86)+acd33(85)+acd33(82)+acd33(83)
      acd33(82)=acd33(44)*acd33(82)
      acd33(83)=-acd33(27)*acd33(11)
      acd33(85)=-acd33(21)*acd33(5)
      acd33(86)=-acd33(19)*acd33(3)
      acd33(83)=acd33(86)+acd33(85)+acd33(83)
      acd33(83)=acd33(43)*acd33(83)
      acd33(81)=acd33(81)+acd33(82)+acd33(83)
      acd33(82)=acd33(28)*acd33(27)
      acd33(83)=-acd33(25)*acd33(26)
      acd33(85)=acd33(22)*acd33(21)
      acd33(86)=-acd33(20)*acd33(19)
      acd33(82)=acd33(86)+acd33(85)+acd33(82)+acd33(83)
      acd33(82)=acd33(18)*acd33(82)
      acd33(83)=-acd33(30)+acd33(37)+acd33(39)
      acd33(85)=-acd33(35)*acd33(83)
      acd33(86)=acd33(36)+acd33(38)
      acd33(87)=-acd33(27)*acd33(86)
      acd33(85)=acd33(87)+acd33(85)
      acd33(85)=acd33(28)*acd33(85)
      acd33(84)=-acd33(9)*acd33(84)
      acd33(87)=acd33(26)*acd33(86)
      acd33(84)=acd33(84)+acd33(87)
      acd33(84)=acd33(25)*acd33(84)
      acd33(87)=-acd33(32)*acd33(83)
      acd33(88)=-acd33(21)*acd33(86)
      acd33(87)=acd33(88)+acd33(87)
      acd33(87)=acd33(22)*acd33(87)
      acd33(88)=acd33(31)*acd33(83)
      acd33(86)=acd33(19)*acd33(86)
      acd33(86)=acd33(86)+acd33(88)
      acd33(86)=acd33(20)*acd33(86)
      acd33(83)=acd33(26)*acd33(34)*acd33(83)
      brack=acd33(77)+acd33(78)+acd33(79)+acd33(80)+2.0_ki*acd33(81)+acd33(82)+&
      &acd33(83)+acd33(84)+acd33(85)+acd33(86)+acd33(87)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=spvak1k3(iv3)
      acd33(3)=abb33(35)
      acd33(4)=spvak4k2(iv3)
      acd33(5)=abb33(34)
      acd33(6)=spvak4k3(iv3)
      acd33(7)=abb33(32)
      acd33(8)=spvak5k2(iv3)
      acd33(9)=abb33(50)
      acd33(10)=spvak7k3(iv3)
      acd33(11)=abb33(43)
      acd33(12)=d(iv1,iv3)
      acd33(13)=spvak1k3(iv2)
      acd33(14)=spvak4k2(iv2)
      acd33(15)=spvak4k3(iv2)
      acd33(16)=spvak5k2(iv2)
      acd33(17)=spvak7k3(iv2)
      acd33(18)=d(iv2,iv3)
      acd33(19)=spvak1k3(iv1)
      acd33(20)=spvak4k2(iv1)
      acd33(21)=spvak4k3(iv1)
      acd33(22)=spvak5k2(iv1)
      acd33(23)=spvak7k3(iv1)
      acd33(24)=spvak1k2(iv2)
      acd33(25)=spvak5k6(iv3)
      acd33(26)=abb33(27)
      acd33(27)=spvak1k2(iv3)
      acd33(28)=spvak5k6(iv2)
      acd33(29)=spvak7k2(iv3)
      acd33(30)=abb33(47)
      acd33(31)=spvak7k2(iv2)
      acd33(32)=spvak1k2(iv1)
      acd33(33)=spvak5k6(iv1)
      acd33(34)=spvak7k2(iv1)
      acd33(35)=acd33(25)*acd33(21)
      acd33(36)=acd33(33)*acd33(6)
      acd33(35)=acd33(35)+acd33(36)
      acd33(36)=-acd33(24)*acd33(35)
      acd33(37)=acd33(28)*acd33(21)
      acd33(38)=acd33(33)*acd33(15)
      acd33(37)=acd33(37)+acd33(38)
      acd33(38)=-acd33(27)*acd33(37)
      acd33(39)=acd33(25)*acd33(15)
      acd33(40)=acd33(28)*acd33(6)
      acd33(39)=acd33(39)+acd33(40)
      acd33(40)=-acd33(32)*acd33(39)
      acd33(36)=acd33(40)+acd33(38)+acd33(36)
      acd33(36)=acd33(26)*acd33(36)
      acd33(37)=acd33(29)*acd33(37)
      acd33(35)=acd33(31)*acd33(35)
      acd33(38)=acd33(34)*acd33(39)
      acd33(35)=acd33(38)+acd33(35)+acd33(37)
      acd33(35)=acd33(30)*acd33(35)
      acd33(37)=-acd33(19)*acd33(3)
      acd33(38)=-acd33(20)*acd33(5)
      acd33(39)=-acd33(22)*acd33(9)
      acd33(40)=-acd33(23)*acd33(11)
      acd33(37)=acd33(40)+acd33(39)+acd33(38)+acd33(37)
      acd33(38)=2.0_ki*acd33(18)
      acd33(37)=acd33(38)*acd33(37)
      acd33(38)=-acd33(13)*acd33(3)
      acd33(39)=-acd33(14)*acd33(5)
      acd33(40)=-acd33(16)*acd33(9)
      acd33(41)=-acd33(17)*acd33(11)
      acd33(38)=acd33(41)+acd33(40)+acd33(39)+acd33(38)
      acd33(39)=2.0_ki*acd33(12)
      acd33(38)=acd33(39)*acd33(38)
      acd33(39)=-acd33(2)*acd33(3)
      acd33(40)=-acd33(4)*acd33(5)
      acd33(41)=-acd33(8)*acd33(9)
      acd33(42)=-acd33(10)*acd33(11)
      acd33(39)=acd33(42)+acd33(41)+acd33(40)+acd33(39)
      acd33(40)=2.0_ki*acd33(1)
      acd33(39)=acd33(40)*acd33(39)
      acd33(40)=-acd33(6)*acd33(1)
      acd33(41)=-acd33(15)*acd33(12)
      acd33(42)=-acd33(21)*acd33(18)
      acd33(40)=acd33(42)+acd33(40)+acd33(41)
      acd33(40)=acd33(7)*acd33(40)
      brack=acd33(35)+acd33(36)+acd33(37)+acd33(38)+acd33(39)+2.0_ki*acd33(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd33h5
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
!---#[ subroutine reconstruct_d33:
   subroutine     reconstruct_d33(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_33:
      coeffs%coeffs_33%c0 = derivative(czip)
      coeffs%coeffs_33%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_33%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_33%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_33%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_33%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_33%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_33%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_33%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_33%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_33%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_33%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_33%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_33%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_33%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_33%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_33%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_33%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_33%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_33%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_33%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_33%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_33%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_33%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_33%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_33%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_33%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_33%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_33%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_33%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_33%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_33%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_33%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_33%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_33%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_33:
   end subroutine reconstruct_d33
!---#] subroutine reconstruct_d33:
end module     p12_sbars_epnemumnmubarg_d33h5l1d
