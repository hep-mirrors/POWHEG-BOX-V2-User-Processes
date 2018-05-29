module     p4_ubaru_epnemumnmubarg_d587h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p4_ubaru_epnemumnmubarg/helicity5d587h5l1d.f90
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
   public :: derivative , reconstruct_d587
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd587
      complex(ki) :: brack
      acd587(1)=dotproduct(k2,qshift)
      acd587(2)=dotproduct(k5,qshift)
      acd587(3)=abb587(26)
      acd587(4)=dotproduct(k6,qshift)
      acd587(5)=dotproduct(qshift,qshift)
      acd587(6)=abb587(30)
      acd587(7)=dotproduct(qshift,spvak5k6)
      acd587(8)=dotproduct(qshift,spvak7k2)
      acd587(9)=abb587(28)
      acd587(10)=abb587(29)
      acd587(11)=abb587(31)
      acd587(12)=dotproduct(k3,qshift)
      acd587(13)=dotproduct(k4,qshift)
      acd587(14)=abb587(23)
      acd587(15)=dotproduct(qshift,spvak1k6)
      acd587(16)=abb587(15)
      acd587(17)=dotproduct(qshift,spvak4k2)
      acd587(18)=abb587(16)
      acd587(19)=dotproduct(qshift,spvak4k3)
      acd587(20)=abb587(43)
      acd587(21)=abb587(19)
      acd587(22)=dotproduct(k7,qshift)
      acd587(23)=abb587(17)
      acd587(24)=abb587(35)
      acd587(25)=abb587(12)
      acd587(26)=abb587(24)
      acd587(27)=abb587(44)
      acd587(28)=abb587(13)
      acd587(29)=abb587(10)
      acd587(30)=abb587(38)
      acd587(31)=dotproduct(qshift,spvak1k2)
      acd587(32)=abb587(18)
      acd587(33)=dotproduct(qshift,spvak1k3)
      acd587(34)=abb587(20)
      acd587(35)=abb587(27)
      acd587(36)=abb587(9)
      acd587(37)=abb587(8)
      acd587(38)=abb587(36)
      acd587(39)=abb587(21)
      acd587(40)=dotproduct(qshift,spvak1k5)
      acd587(41)=abb587(14)
      acd587(42)=abb587(11)
      acd587(43)=abb587(32)
      acd587(44)=abb587(7)
      acd587(45)=abb587(39)
      acd587(46)=abb587(45)
      acd587(47)=-acd587(1)+acd587(12)+acd587(13)
      acd587(48)=acd587(9)*acd587(47)
      acd587(49)=-acd587(33)*acd587(34)
      acd587(50)=-acd587(31)*acd587(32)
      acd587(51)=-acd587(19)*acd587(30)
      acd587(52)=-acd587(17)*acd587(29)
      acd587(48)=acd587(52)+acd587(51)+acd587(50)+acd587(35)+acd587(49)+acd587(&
      &48)
      acd587(48)=acd587(8)*acd587(48)
      acd587(49)=acd587(2)+acd587(4)
      acd587(50)=acd587(22)+acd587(49)
      acd587(50)=acd587(14)*acd587(50)
      acd587(51)=acd587(10)*acd587(47)
      acd587(52)=acd587(31)*acd587(39)
      acd587(53)=acd587(25)*acd587(40)
      acd587(54)=acd587(19)*acd587(38)
      acd587(55)=acd587(17)*acd587(37)
      acd587(56)=acd587(15)*acd587(36)
      acd587(57)=-acd587(5)*acd587(24)
      acd587(48)=acd587(48)+acd587(57)+acd587(56)+acd587(55)+acd587(54)+acd587(&
      &53)-acd587(41)+acd587(52)+acd587(51)+acd587(50)
      acd587(48)=acd587(7)*acd587(48)
      acd587(50)=-acd587(3)*acd587(47)
      acd587(51)=acd587(19)*acd587(20)
      acd587(52)=acd587(17)*acd587(18)
      acd587(53)=acd587(15)*acd587(16)
      acd587(50)=-acd587(53)+acd587(51)-acd587(52)-acd587(21)+acd587(50)
      acd587(49)=acd587(50)*acd587(49)
      acd587(50)=-acd587(6)*acd587(47)
      acd587(51)=acd587(19)*acd587(27)
      acd587(52)=-acd587(17)*acd587(26)
      acd587(53)=-acd587(15)*acd587(25)
      acd587(50)=acd587(53)+acd587(52)+acd587(28)+acd587(51)+acd587(50)
      acd587(50)=acd587(5)*acd587(50)
      acd587(47)=-acd587(11)*acd587(47)
      acd587(51)=-acd587(22)*acd587(23)
      acd587(52)=-acd587(19)*acd587(46)
      acd587(53)=-acd587(17)*acd587(45)
      acd587(54)=-acd587(15)*acd587(44)
      acd587(55)=acd587(15)*acd587(42)
      acd587(55)=-acd587(43)+acd587(55)
      acd587(55)=acd587(8)*acd587(55)
      brack=acd587(47)+acd587(48)+acd587(49)+acd587(50)+acd587(51)+acd587(52)+a&
      &cd587(53)+acd587(54)+acd587(55)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd587
      complex(ki) :: brack
      acd587(1)=k2(iv1)
      acd587(2)=dotproduct(k5,qshift)
      acd587(3)=abb587(26)
      acd587(4)=dotproduct(k6,qshift)
      acd587(5)=dotproduct(qshift,qshift)
      acd587(6)=abb587(30)
      acd587(7)=dotproduct(qshift,spvak5k6)
      acd587(8)=dotproduct(qshift,spvak7k2)
      acd587(9)=abb587(28)
      acd587(10)=abb587(29)
      acd587(11)=abb587(31)
      acd587(12)=k3(iv1)
      acd587(13)=k4(iv1)
      acd587(14)=k5(iv1)
      acd587(15)=dotproduct(k2,qshift)
      acd587(16)=dotproduct(k3,qshift)
      acd587(17)=dotproduct(k4,qshift)
      acd587(18)=abb587(23)
      acd587(19)=dotproduct(qshift,spvak1k6)
      acd587(20)=abb587(15)
      acd587(21)=dotproduct(qshift,spvak4k2)
      acd587(22)=abb587(16)
      acd587(23)=dotproduct(qshift,spvak4k3)
      acd587(24)=abb587(43)
      acd587(25)=abb587(19)
      acd587(26)=k6(iv1)
      acd587(27)=k7(iv1)
      acd587(28)=abb587(17)
      acd587(29)=qshift(iv1)
      acd587(30)=abb587(35)
      acd587(31)=abb587(12)
      acd587(32)=abb587(24)
      acd587(33)=abb587(44)
      acd587(34)=abb587(13)
      acd587(35)=spvak5k6(iv1)
      acd587(36)=dotproduct(k7,qshift)
      acd587(37)=abb587(10)
      acd587(38)=abb587(38)
      acd587(39)=dotproduct(qshift,spvak1k2)
      acd587(40)=abb587(18)
      acd587(41)=dotproduct(qshift,spvak1k3)
      acd587(42)=abb587(20)
      acd587(43)=abb587(27)
      acd587(44)=abb587(9)
      acd587(45)=abb587(8)
      acd587(46)=abb587(36)
      acd587(47)=abb587(21)
      acd587(48)=dotproduct(qshift,spvak1k5)
      acd587(49)=abb587(14)
      acd587(50)=spvak7k2(iv1)
      acd587(51)=abb587(11)
      acd587(52)=abb587(32)
      acd587(53)=spvak1k6(iv1)
      acd587(54)=abb587(7)
      acd587(55)=spvak4k2(iv1)
      acd587(56)=abb587(39)
      acd587(57)=spvak4k3(iv1)
      acd587(58)=abb587(45)
      acd587(59)=spvak1k2(iv1)
      acd587(60)=spvak1k3(iv1)
      acd587(61)=spvak1k5(iv1)
      acd587(62)=-acd587(17)+acd587(15)-acd587(16)
      acd587(63)=acd587(62)*acd587(9)
      acd587(64)=acd587(42)*acd587(41)
      acd587(65)=acd587(39)*acd587(40)
      acd587(66)=acd587(23)*acd587(38)
      acd587(67)=acd587(21)*acd587(37)
      acd587(63)=acd587(63)+acd587(64)+acd587(66)+acd587(67)+acd587(65)-acd587(&
      &43)
      acd587(64)=-acd587(50)*acd587(63)
      acd587(65)=-acd587(42)*acd587(60)
      acd587(66)=-acd587(40)*acd587(59)
      acd587(67)=-acd587(57)*acd587(38)
      acd587(68)=-acd587(55)*acd587(37)
      acd587(69)=-acd587(1)+acd587(12)+acd587(13)
      acd587(70)=acd587(9)*acd587(69)
      acd587(65)=acd587(70)+acd587(68)+acd587(67)+acd587(65)+acd587(66)
      acd587(65)=acd587(8)*acd587(65)
      acd587(66)=acd587(10)*acd587(69)
      acd587(67)=acd587(14)+acd587(26)
      acd587(68)=acd587(27)+acd587(67)
      acd587(68)=acd587(18)*acd587(68)
      acd587(70)=acd587(47)*acd587(59)
      acd587(71)=acd587(31)*acd587(61)
      acd587(72)=acd587(57)*acd587(46)
      acd587(73)=acd587(55)*acd587(45)
      acd587(74)=acd587(53)*acd587(44)
      acd587(75)=2.0_ki*acd587(29)
      acd587(76)=-acd587(30)*acd587(75)
      acd587(64)=acd587(65)+acd587(64)+acd587(76)+acd587(74)+acd587(73)+acd587(&
      &72)+acd587(70)+acd587(71)+acd587(68)+acd587(66)
      acd587(64)=acd587(7)*acd587(64)
      acd587(63)=-acd587(8)*acd587(63)
      acd587(65)=acd587(2)+acd587(4)
      acd587(66)=acd587(36)+acd587(65)
      acd587(66)=acd587(18)*acd587(66)
      acd587(68)=acd587(39)*acd587(47)
      acd587(70)=acd587(31)*acd587(48)
      acd587(71)=acd587(19)*acd587(44)
      acd587(72)=acd587(23)*acd587(46)
      acd587(73)=acd587(21)*acd587(45)
      acd587(74)=-acd587(10)*acd587(62)
      acd587(76)=-acd587(5)*acd587(30)
      acd587(63)=acd587(63)+acd587(76)+acd587(74)+acd587(73)+acd587(72)+acd587(&
      &71)+acd587(70)-acd587(49)+acd587(68)+acd587(66)
      acd587(63)=acd587(35)*acd587(63)
      acd587(66)=-acd587(6)*acd587(69)
      acd587(68)=acd587(57)*acd587(33)
      acd587(70)=-acd587(55)*acd587(32)
      acd587(71)=-acd587(53)*acd587(31)
      acd587(66)=acd587(71)+acd587(68)+acd587(70)+acd587(66)
      acd587(66)=acd587(5)*acd587(66)
      acd587(68)=-acd587(19)*acd587(31)
      acd587(70)=acd587(23)*acd587(33)
      acd587(71)=-acd587(21)*acd587(32)
      acd587(72)=acd587(6)*acd587(62)
      acd587(68)=acd587(72)+acd587(71)+acd587(70)+acd587(34)+acd587(68)
      acd587(68)=acd587(68)*acd587(75)
      acd587(70)=acd587(19)*acd587(20)
      acd587(71)=acd587(23)*acd587(24)
      acd587(72)=acd587(21)*acd587(22)
      acd587(70)=acd587(70)-acd587(71)+acd587(72)+acd587(25)
      acd587(70)=-acd587(70)*acd587(67)
      acd587(71)=acd587(57)*acd587(24)
      acd587(72)=acd587(55)*acd587(22)
      acd587(73)=acd587(53)*acd587(20)
      acd587(71)=-acd587(73)+acd587(71)-acd587(72)
      acd587(71)=acd587(71)*acd587(65)
      acd587(62)=acd587(62)*acd587(67)
      acd587(65)=-acd587(69)*acd587(65)
      acd587(62)=acd587(65)+acd587(62)
      acd587(62)=acd587(3)*acd587(62)
      acd587(65)=acd587(8)*acd587(51)
      acd587(65)=acd587(65)-acd587(54)
      acd587(65)=acd587(53)*acd587(65)
      acd587(67)=-acd587(11)*acd587(69)
      acd587(69)=-acd587(27)*acd587(28)
      acd587(72)=-acd587(57)*acd587(58)
      acd587(73)=-acd587(55)*acd587(56)
      acd587(74)=acd587(19)*acd587(51)
      acd587(74)=-acd587(52)+acd587(74)
      acd587(74)=acd587(50)*acd587(74)
      brack=acd587(62)+acd587(63)+acd587(64)+acd587(65)+acd587(66)+acd587(67)+a&
      &cd587(68)+acd587(69)+acd587(70)+acd587(71)+acd587(72)+acd587(73)+acd587(&
      &74)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd587
      complex(ki) :: brack
      acd587(1)=d(iv1,iv2)
      acd587(2)=dotproduct(k2,qshift)
      acd587(3)=abb587(30)
      acd587(4)=dotproduct(k3,qshift)
      acd587(5)=dotproduct(k4,qshift)
      acd587(6)=dotproduct(qshift,spvak1k6)
      acd587(7)=abb587(12)
      acd587(8)=dotproduct(qshift,spvak4k2)
      acd587(9)=abb587(24)
      acd587(10)=dotproduct(qshift,spvak4k3)
      acd587(11)=abb587(44)
      acd587(12)=dotproduct(qshift,spvak5k6)
      acd587(13)=abb587(35)
      acd587(14)=abb587(13)
      acd587(15)=k2(iv1)
      acd587(16)=k5(iv2)
      acd587(17)=abb587(26)
      acd587(18)=k6(iv2)
      acd587(19)=qshift(iv2)
      acd587(20)=spvak5k6(iv2)
      acd587(21)=dotproduct(qshift,spvak7k2)
      acd587(22)=abb587(28)
      acd587(23)=abb587(29)
      acd587(24)=spvak7k2(iv2)
      acd587(25)=k2(iv2)
      acd587(26)=k5(iv1)
      acd587(27)=k6(iv1)
      acd587(28)=qshift(iv1)
      acd587(29)=spvak5k6(iv1)
      acd587(30)=spvak7k2(iv1)
      acd587(31)=k3(iv1)
      acd587(32)=k3(iv2)
      acd587(33)=k4(iv1)
      acd587(34)=k4(iv2)
      acd587(35)=spvak1k6(iv2)
      acd587(36)=abb587(15)
      acd587(37)=spvak4k2(iv2)
      acd587(38)=abb587(16)
      acd587(39)=spvak4k3(iv2)
      acd587(40)=abb587(43)
      acd587(41)=abb587(23)
      acd587(42)=spvak1k6(iv1)
      acd587(43)=spvak4k2(iv1)
      acd587(44)=spvak4k3(iv1)
      acd587(45)=k7(iv1)
      acd587(46)=k7(iv2)
      acd587(47)=abb587(9)
      acd587(48)=abb587(11)
      acd587(49)=abb587(10)
      acd587(50)=abb587(8)
      acd587(51)=abb587(38)
      acd587(52)=abb587(36)
      acd587(53)=dotproduct(qshift,spvak1k2)
      acd587(54)=abb587(18)
      acd587(55)=dotproduct(qshift,spvak1k3)
      acd587(56)=abb587(20)
      acd587(57)=abb587(27)
      acd587(58)=spvak1k2(iv2)
      acd587(59)=abb587(21)
      acd587(60)=spvak1k3(iv2)
      acd587(61)=spvak1k5(iv2)
      acd587(62)=spvak1k2(iv1)
      acd587(63)=spvak1k3(iv1)
      acd587(64)=spvak1k5(iv1)
      acd587(65)=acd587(56)*acd587(60)
      acd587(66)=acd587(54)*acd587(58)
      acd587(67)=acd587(39)*acd587(51)
      acd587(68)=acd587(37)*acd587(49)
      acd587(65)=acd587(66)+acd587(65)+acd587(67)+acd587(68)
      acd587(66)=-acd587(21)*acd587(65)
      acd587(67)=acd587(56)*acd587(55)
      acd587(68)=acd587(54)*acd587(53)
      acd587(69)=acd587(51)*acd587(10)
      acd587(70)=acd587(49)*acd587(8)
      acd587(67)=-acd587(57)+acd587(67)+acd587(68)+acd587(69)+acd587(70)
      acd587(68)=-acd587(24)*acd587(67)
      acd587(69)=-acd587(34)+acd587(25)-acd587(32)
      acd587(70)=-acd587(21)*acd587(69)
      acd587(71)=-acd587(5)+acd587(2)-acd587(4)
      acd587(72)=-acd587(24)*acd587(71)
      acd587(70)=acd587(70)+acd587(72)
      acd587(70)=acd587(22)*acd587(70)
      acd587(72)=acd587(16)+acd587(18)
      acd587(73)=acd587(46)+acd587(72)
      acd587(73)=acd587(41)*acd587(73)
      acd587(74)=acd587(58)*acd587(59)
      acd587(75)=acd587(35)*acd587(47)
      acd587(76)=acd587(7)*acd587(61)
      acd587(77)=acd587(39)*acd587(52)
      acd587(78)=acd587(37)*acd587(50)
      acd587(79)=-acd587(23)*acd587(69)
      acd587(80)=2.0_ki*acd587(13)
      acd587(81)=-acd587(19)*acd587(80)
      acd587(66)=acd587(70)+acd587(68)+acd587(66)+acd587(81)+acd587(79)+acd587(&
      &78)+acd587(77)+acd587(76)+acd587(74)+acd587(75)+acd587(73)
      acd587(66)=acd587(29)*acd587(66)
      acd587(68)=acd587(56)*acd587(63)
      acd587(70)=acd587(54)*acd587(62)
      acd587(73)=acd587(44)*acd587(51)
      acd587(74)=acd587(43)*acd587(49)
      acd587(68)=acd587(70)+acd587(68)+acd587(73)+acd587(74)
      acd587(70)=-acd587(21)*acd587(68)
      acd587(67)=-acd587(30)*acd587(67)
      acd587(73)=-acd587(15)+acd587(31)+acd587(33)
      acd587(74)=acd587(21)*acd587(73)
      acd587(75)=-acd587(30)*acd587(71)
      acd587(74)=acd587(74)+acd587(75)
      acd587(74)=acd587(22)*acd587(74)
      acd587(75)=acd587(23)*acd587(73)
      acd587(76)=acd587(26)+acd587(27)
      acd587(77)=acd587(45)+acd587(76)
      acd587(77)=acd587(41)*acd587(77)
      acd587(78)=acd587(62)*acd587(59)
      acd587(79)=acd587(42)*acd587(47)
      acd587(81)=acd587(7)*acd587(64)
      acd587(82)=acd587(44)*acd587(52)
      acd587(83)=acd587(43)*acd587(50)
      acd587(84)=-acd587(28)*acd587(80)
      acd587(67)=acd587(74)+acd587(67)+acd587(70)+acd587(84)+acd587(83)+acd587(&
      &82)+acd587(81)+acd587(78)+acd587(79)+acd587(77)+acd587(75)
      acd587(67)=acd587(20)*acd587(67)
      acd587(70)=-acd587(7)*acd587(35)
      acd587(74)=acd587(39)*acd587(11)
      acd587(75)=-acd587(37)*acd587(9)
      acd587(70)=acd587(75)+acd587(70)+acd587(74)
      acd587(70)=acd587(28)*acd587(70)
      acd587(74)=-acd587(7)*acd587(42)
      acd587(75)=acd587(44)*acd587(11)
      acd587(77)=-acd587(43)*acd587(9)
      acd587(74)=acd587(77)+acd587(74)+acd587(75)
      acd587(74)=acd587(19)*acd587(74)
      acd587(75)=acd587(28)*acd587(69)
      acd587(77)=-acd587(19)*acd587(73)
      acd587(71)=acd587(1)*acd587(71)
      acd587(71)=acd587(71)+acd587(75)+acd587(77)
      acd587(71)=acd587(3)*acd587(71)
      acd587(70)=acd587(71)+acd587(70)+acd587(74)
      acd587(65)=-acd587(12)*acd587(65)
      acd587(71)=acd587(35)*acd587(48)
      acd587(65)=acd587(71)+acd587(65)
      acd587(65)=acd587(30)*acd587(65)
      acd587(68)=-acd587(12)*acd587(68)
      acd587(71)=acd587(42)*acd587(48)
      acd587(68)=acd587(71)+acd587(68)
      acd587(68)=acd587(24)*acd587(68)
      acd587(71)=acd587(42)*acd587(36)
      acd587(74)=acd587(44)*acd587(40)
      acd587(75)=acd587(43)*acd587(38)
      acd587(71)=acd587(75)+acd587(71)-acd587(74)
      acd587(71)=-acd587(71)*acd587(72)
      acd587(74)=acd587(35)*acd587(36)
      acd587(75)=acd587(39)*acd587(40)
      acd587(77)=acd587(37)*acd587(38)
      acd587(74)=-acd587(74)+acd587(75)-acd587(77)
      acd587(74)=acd587(74)*acd587(76)
      acd587(75)=acd587(10)*acd587(11)
      acd587(77)=-acd587(8)*acd587(9)
      acd587(78)=-acd587(7)*acd587(6)
      acd587(75)=acd587(78)+acd587(77)+acd587(14)+acd587(75)
      acd587(77)=-acd587(12)*acd587(80)
      acd587(75)=acd587(77)+2.0_ki*acd587(75)
      acd587(75)=acd587(1)*acd587(75)
      acd587(76)=acd587(69)*acd587(76)
      acd587(72)=-acd587(73)*acd587(72)
      acd587(72)=acd587(72)+acd587(76)
      acd587(72)=acd587(17)*acd587(72)
      acd587(69)=-acd587(30)*acd587(69)
      acd587(73)=acd587(24)*acd587(73)
      acd587(69)=acd587(69)+acd587(73)
      acd587(69)=acd587(22)*acd587(12)*acd587(69)
      brack=acd587(65)+acd587(66)+acd587(67)+acd587(68)+acd587(69)+2.0_ki*acd58&
      &7(70)+acd587(71)+acd587(72)+acd587(74)+acd587(75)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd587h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd587
      complex(ki) :: brack
      acd587(1)=d(iv1,iv2)
      acd587(2)=k2(iv3)
      acd587(3)=abb587(30)
      acd587(4)=k3(iv3)
      acd587(5)=k4(iv3)
      acd587(6)=spvak1k6(iv3)
      acd587(7)=abb587(12)
      acd587(8)=spvak4k2(iv3)
      acd587(9)=abb587(24)
      acd587(10)=spvak4k3(iv3)
      acd587(11)=abb587(44)
      acd587(12)=spvak5k6(iv3)
      acd587(13)=abb587(35)
      acd587(14)=d(iv1,iv3)
      acd587(15)=k2(iv2)
      acd587(16)=k3(iv2)
      acd587(17)=k4(iv2)
      acd587(18)=spvak1k6(iv2)
      acd587(19)=spvak4k2(iv2)
      acd587(20)=spvak4k3(iv2)
      acd587(21)=spvak5k6(iv2)
      acd587(22)=d(iv2,iv3)
      acd587(23)=k2(iv1)
      acd587(24)=k3(iv1)
      acd587(25)=k4(iv1)
      acd587(26)=spvak1k6(iv1)
      acd587(27)=spvak4k2(iv1)
      acd587(28)=spvak4k3(iv1)
      acd587(29)=spvak5k6(iv1)
      acd587(30)=spvak7k2(iv3)
      acd587(31)=abb587(28)
      acd587(32)=spvak7k2(iv2)
      acd587(33)=spvak7k2(iv1)
      acd587(34)=abb587(10)
      acd587(35)=abb587(38)
      acd587(36)=spvak1k2(iv3)
      acd587(37)=abb587(18)
      acd587(38)=spvak1k3(iv3)
      acd587(39)=abb587(20)
      acd587(40)=spvak1k2(iv2)
      acd587(41)=spvak1k3(iv2)
      acd587(42)=spvak1k2(iv1)
      acd587(43)=spvak1k3(iv1)
      acd587(44)=acd587(11)*acd587(28)
      acd587(45)=-acd587(9)*acd587(27)
      acd587(46)=-acd587(7)*acd587(26)
      acd587(44)=acd587(46)+acd587(44)+acd587(45)
      acd587(44)=acd587(22)*acd587(44)
      acd587(45)=acd587(11)*acd587(20)
      acd587(46)=-acd587(9)*acd587(19)
      acd587(47)=-acd587(7)*acd587(18)
      acd587(45)=acd587(47)+acd587(45)+acd587(46)
      acd587(45)=acd587(14)*acd587(45)
      acd587(46)=acd587(10)*acd587(11)
      acd587(47)=-acd587(8)*acd587(9)
      acd587(48)=-acd587(7)*acd587(6)
      acd587(46)=acd587(48)+acd587(46)+acd587(47)
      acd587(46)=acd587(1)*acd587(46)
      acd587(47)=-acd587(25)+acd587(23)-acd587(24)
      acd587(48)=acd587(22)*acd587(47)
      acd587(49)=-acd587(17)+acd587(15)-acd587(16)
      acd587(50)=acd587(14)*acd587(49)
      acd587(51)=-acd587(5)+acd587(2)-acd587(4)
      acd587(52)=acd587(1)*acd587(51)
      acd587(48)=acd587(52)+acd587(48)+acd587(50)
      acd587(48)=acd587(3)*acd587(48)
      acd587(44)=acd587(48)+acd587(46)+acd587(44)+acd587(45)
      acd587(45)=acd587(39)*acd587(38)
      acd587(46)=acd587(37)*acd587(36)
      acd587(48)=acd587(35)*acd587(10)
      acd587(50)=acd587(34)*acd587(8)
      acd587(45)=acd587(50)+acd587(45)+acd587(46)+acd587(48)
      acd587(46)=-acd587(32)*acd587(45)
      acd587(48)=acd587(39)*acd587(41)
      acd587(50)=acd587(37)*acd587(40)
      acd587(52)=acd587(35)*acd587(20)
      acd587(53)=acd587(34)*acd587(19)
      acd587(48)=acd587(50)+acd587(48)+acd587(52)+acd587(53)
      acd587(50)=-acd587(30)*acd587(48)
      acd587(52)=2.0_ki*acd587(13)
      acd587(53)=-acd587(22)*acd587(52)
      acd587(46)=acd587(50)+acd587(53)+acd587(46)
      acd587(46)=acd587(29)*acd587(46)
      acd587(45)=-acd587(33)*acd587(45)
      acd587(50)=acd587(39)*acd587(43)
      acd587(53)=acd587(37)*acd587(42)
      acd587(54)=acd587(35)*acd587(28)
      acd587(55)=acd587(34)*acd587(27)
      acd587(50)=acd587(53)+acd587(50)+acd587(54)+acd587(55)
      acd587(53)=-acd587(30)*acd587(50)
      acd587(54)=-acd587(14)*acd587(52)
      acd587(45)=acd587(53)+acd587(54)+acd587(45)
      acd587(45)=acd587(21)*acd587(45)
      acd587(48)=-acd587(33)*acd587(48)
      acd587(50)=-acd587(32)*acd587(50)
      acd587(52)=-acd587(1)*acd587(52)
      acd587(48)=acd587(50)+acd587(52)+acd587(48)
      acd587(48)=acd587(12)*acd587(48)
      acd587(50)=-acd587(32)*acd587(51)
      acd587(52)=-acd587(30)*acd587(49)
      acd587(50)=acd587(50)+acd587(52)
      acd587(50)=acd587(29)*acd587(50)
      acd587(51)=-acd587(33)*acd587(51)
      acd587(52)=-acd587(30)*acd587(47)
      acd587(51)=acd587(51)+acd587(52)
      acd587(51)=acd587(21)*acd587(51)
      acd587(49)=-acd587(33)*acd587(49)
      acd587(47)=-acd587(32)*acd587(47)
      acd587(47)=acd587(49)+acd587(47)
      acd587(47)=acd587(12)*acd587(47)
      acd587(47)=acd587(47)+acd587(50)+acd587(51)
      acd587(47)=acd587(31)*acd587(47)
      brack=2.0_ki*acd587(44)+acd587(45)+acd587(46)+acd587(47)+acd587(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd587h5
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
      qshift = -k3-k7-k6-k5-k4
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
!---#[ subroutine reconstruct_d587:
   subroutine     reconstruct_d587(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_587:
      coeffs%coeffs_587%c0 = derivative(czip)
      coeffs%coeffs_587%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_587%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_587%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_587%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_587%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_587%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_587%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_587%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_587%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_587%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_587%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_587%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_587%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_587%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_587%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_587%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_587%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_587%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_587%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_587%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_587%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_587%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_587%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_587%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_587%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_587%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_587%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_587%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_587%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_587%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_587%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_587%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_587%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_587%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_587:
   end subroutine reconstruct_d587
!---#] subroutine reconstruct_d587:
end module     p4_ubaru_epnemumnmubarg_d587h5l1d
