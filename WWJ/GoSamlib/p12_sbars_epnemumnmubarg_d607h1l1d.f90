module     p12_sbars_epnemumnmubarg_d607h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity1d607h1l1d.f90
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
   public :: derivative , reconstruct_d607
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd607
      complex(ki) :: brack
      acd607(1)=dotproduct(k2,qshift)
      acd607(2)=dotproduct(k7,qshift)
      acd607(3)=abb607(31)
      acd607(4)=dotproduct(qshift,qshift)
      acd607(5)=abb607(17)
      acd607(6)=dotproduct(qshift,spvak2k7)
      acd607(7)=dotproduct(qshift,spvak4k3)
      acd607(8)=abb607(14)
      acd607(9)=abb607(36)
      acd607(10)=abb607(27)
      acd607(11)=dotproduct(k3,qshift)
      acd607(12)=abb607(29)
      acd607(13)=abb607(20)
      acd607(14)=dotproduct(k4,qshift)
      acd607(15)=dotproduct(k5,qshift)
      acd607(16)=dotproduct(k6,qshift)
      acd607(17)=dotproduct(qshift,spvak1k7)
      acd607(18)=abb607(35)
      acd607(19)=dotproduct(qshift,spvak5k2)
      acd607(20)=abb607(28)
      acd607(21)=dotproduct(qshift,spvak5k6)
      acd607(22)=abb607(34)
      acd607(23)=abb607(23)
      acd607(24)=abb607(22)
      acd607(25)=abb607(16)
      acd607(26)=abb607(26)
      acd607(27)=abb607(18)
      acd607(28)=abb607(13)
      acd607(29)=abb607(7)
      acd607(30)=abb607(37)
      acd607(31)=dotproduct(qshift,spvak1k2)
      acd607(32)=abb607(10)
      acd607(33)=dotproduct(qshift,spvak1k6)
      acd607(34)=abb607(21)
      acd607(35)=abb607(11)
      acd607(36)=abb607(19)
      acd607(37)=abb607(32)
      acd607(38)=abb607(30)
      acd607(39)=dotproduct(qshift,spvak1k3)
      acd607(40)=abb607(33)
      acd607(41)=abb607(12)
      acd607(42)=abb607(8)
      acd607(43)=abb607(9)
      acd607(44)=abb607(15)
      acd607(45)=abb607(24)
      acd607(46)=abb607(25)
      acd607(47)=-acd607(16)+acd607(1)-acd607(15)
      acd607(48)=acd607(8)*acd607(47)
      acd607(49)=-acd607(33)*acd607(34)
      acd607(50)=-acd607(31)*acd607(32)
      acd607(51)=-acd607(21)*acd607(30)
      acd607(52)=-acd607(19)*acd607(29)
      acd607(48)=acd607(52)+acd607(51)+acd607(50)+acd607(35)+acd607(49)+acd607(&
      &48)
      acd607(48)=acd607(7)*acd607(48)
      acd607(49)=acd607(11)+acd607(14)
      acd607(50)=acd607(2)+acd607(49)
      acd607(50)=acd607(12)*acd607(50)
      acd607(51)=-acd607(9)*acd607(47)
      acd607(52)=acd607(39)*acd607(40)
      acd607(53)=acd607(21)*acd607(38)
      acd607(54)=acd607(19)*acd607(37)
      acd607(55)=acd607(17)*acd607(36)
      acd607(56)=-acd607(4)*acd607(24)
      acd607(48)=acd607(48)+acd607(56)+acd607(55)+acd607(54)+acd607(53)-acd607(&
      &41)+acd607(52)+acd607(51)+acd607(50)
      acd607(48)=acd607(6)*acd607(48)
      acd607(50)=-acd607(5)*acd607(47)
      acd607(51)=-acd607(21)*acd607(27)
      acd607(52)=-acd607(19)*acd607(26)
      acd607(53)=-acd607(17)*acd607(25)
      acd607(50)=acd607(53)+acd607(52)+acd607(28)+acd607(51)+acd607(50)
      acd607(50)=acd607(4)*acd607(50)
      acd607(51)=acd607(3)*acd607(47)
      acd607(52)=acd607(21)*acd607(22)
      acd607(53)=acd607(19)*acd607(20)
      acd607(54)=acd607(17)*acd607(18)
      acd607(51)=acd607(54)+acd607(53)-acd607(23)+acd607(52)+acd607(51)
      acd607(51)=acd607(2)*acd607(51)
      acd607(49)=-acd607(13)*acd607(49)
      acd607(47)=-acd607(10)*acd607(47)
      acd607(52)=-acd607(21)*acd607(46)
      acd607(53)=-acd607(19)*acd607(45)
      acd607(54)=-acd607(17)*acd607(44)
      acd607(55)=acd607(17)*acd607(42)
      acd607(55)=-acd607(43)+acd607(55)
      acd607(55)=acd607(7)*acd607(55)
      brack=acd607(47)+acd607(48)+acd607(49)+acd607(50)+acd607(51)+acd607(52)+a&
      &cd607(53)+acd607(54)+acd607(55)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(75) :: acd607
      complex(ki) :: brack
      acd607(1)=k2(iv1)
      acd607(2)=dotproduct(k7,qshift)
      acd607(3)=abb607(31)
      acd607(4)=dotproduct(qshift,qshift)
      acd607(5)=abb607(17)
      acd607(6)=dotproduct(qshift,spvak2k7)
      acd607(7)=dotproduct(qshift,spvak4k3)
      acd607(8)=abb607(14)
      acd607(9)=abb607(36)
      acd607(10)=abb607(27)
      acd607(11)=k3(iv1)
      acd607(12)=abb607(29)
      acd607(13)=abb607(20)
      acd607(14)=k4(iv1)
      acd607(15)=k5(iv1)
      acd607(16)=k6(iv1)
      acd607(17)=k7(iv1)
      acd607(18)=dotproduct(k2,qshift)
      acd607(19)=dotproduct(k5,qshift)
      acd607(20)=dotproduct(k6,qshift)
      acd607(21)=dotproduct(qshift,spvak1k7)
      acd607(22)=abb607(35)
      acd607(23)=dotproduct(qshift,spvak5k2)
      acd607(24)=abb607(28)
      acd607(25)=dotproduct(qshift,spvak5k6)
      acd607(26)=abb607(34)
      acd607(27)=abb607(23)
      acd607(28)=qshift(iv1)
      acd607(29)=abb607(22)
      acd607(30)=abb607(16)
      acd607(31)=abb607(26)
      acd607(32)=abb607(18)
      acd607(33)=abb607(13)
      acd607(34)=spvak2k7(iv1)
      acd607(35)=dotproduct(k3,qshift)
      acd607(36)=dotproduct(k4,qshift)
      acd607(37)=abb607(7)
      acd607(38)=abb607(37)
      acd607(39)=dotproduct(qshift,spvak1k2)
      acd607(40)=abb607(10)
      acd607(41)=dotproduct(qshift,spvak1k6)
      acd607(42)=abb607(21)
      acd607(43)=abb607(11)
      acd607(44)=abb607(19)
      acd607(45)=abb607(32)
      acd607(46)=abb607(30)
      acd607(47)=dotproduct(qshift,spvak1k3)
      acd607(48)=abb607(33)
      acd607(49)=abb607(12)
      acd607(50)=spvak4k3(iv1)
      acd607(51)=abb607(8)
      acd607(52)=abb607(9)
      acd607(53)=spvak1k7(iv1)
      acd607(54)=abb607(15)
      acd607(55)=spvak5k2(iv1)
      acd607(56)=abb607(24)
      acd607(57)=spvak5k6(iv1)
      acd607(58)=abb607(25)
      acd607(59)=spvak1k2(iv1)
      acd607(60)=spvak1k3(iv1)
      acd607(61)=spvak1k6(iv1)
      acd607(62)=-acd607(20)+acd607(18)-acd607(19)
      acd607(63)=acd607(62)*acd607(8)
      acd607(64)=acd607(42)*acd607(41)
      acd607(65)=acd607(40)*acd607(39)
      acd607(66)=acd607(25)*acd607(38)
      acd607(67)=acd607(23)*acd607(37)
      acd607(63)=-acd607(63)+acd607(66)+acd607(64)+acd607(65)+acd607(67)-acd607&
      &(43)
      acd607(64)=acd607(50)*acd607(63)
      acd607(65)=acd607(42)*acd607(61)
      acd607(66)=acd607(40)*acd607(59)
      acd607(67)=acd607(57)*acd607(38)
      acd607(68)=acd607(55)*acd607(37)
      acd607(69)=-acd607(16)+acd607(1)-acd607(15)
      acd607(70)=-acd607(8)*acd607(69)
      acd607(65)=acd607(70)+acd607(68)+acd607(67)+acd607(65)+acd607(66)
      acd607(65)=acd607(7)*acd607(65)
      acd607(66)=acd607(11)+acd607(14)
      acd607(67)=-acd607(17)-acd607(66)
      acd607(67)=acd607(12)*acd607(67)
      acd607(68)=-acd607(48)*acd607(60)
      acd607(70)=-acd607(57)*acd607(46)
      acd607(71)=-acd607(55)*acd607(45)
      acd607(72)=-acd607(53)*acd607(44)
      acd607(73)=acd607(9)*acd607(69)
      acd607(74)=2.0_ki*acd607(28)
      acd607(75)=acd607(29)*acd607(74)
      acd607(64)=acd607(65)+acd607(64)+acd607(75)+acd607(73)+acd607(72)+acd607(&
      &71)+acd607(68)+acd607(70)+acd607(67)
      acd607(64)=acd607(6)*acd607(64)
      acd607(63)=acd607(7)*acd607(63)
      acd607(65)=-acd607(2)-acd607(36)-acd607(35)
      acd607(65)=acd607(12)*acd607(65)
      acd607(67)=-acd607(48)*acd607(47)
      acd607(68)=-acd607(21)*acd607(44)
      acd607(70)=-acd607(25)*acd607(46)
      acd607(71)=-acd607(23)*acd607(45)
      acd607(72)=acd607(9)*acd607(62)
      acd607(73)=acd607(4)*acd607(29)
      acd607(63)=acd607(63)+acd607(73)+acd607(72)+acd607(71)+acd607(70)+acd607(&
      &68)+acd607(49)+acd607(67)+acd607(65)
      acd607(63)=acd607(34)*acd607(63)
      acd607(65)=acd607(57)*acd607(32)
      acd607(67)=acd607(55)*acd607(31)
      acd607(68)=acd607(53)*acd607(30)
      acd607(70)=acd607(5)*acd607(69)
      acd607(65)=acd607(70)+acd607(68)+acd607(65)+acd607(67)
      acd607(65)=acd607(4)*acd607(65)
      acd607(67)=-acd607(57)*acd607(26)
      acd607(68)=-acd607(55)*acd607(24)
      acd607(70)=-acd607(53)*acd607(22)
      acd607(71)=-acd607(3)*acd607(69)
      acd607(67)=acd607(71)+acd607(70)+acd607(67)+acd607(68)
      acd607(67)=acd607(2)*acd607(67)
      acd607(68)=acd607(21)*acd607(30)
      acd607(70)=acd607(25)*acd607(32)
      acd607(71)=acd607(23)*acd607(31)
      acd607(72)=acd607(5)*acd607(62)
      acd607(68)=acd607(72)+acd607(71)+acd607(70)-acd607(33)+acd607(68)
      acd607(68)=acd607(68)*acd607(74)
      acd607(70)=-acd607(21)*acd607(22)
      acd607(71)=-acd607(25)*acd607(26)
      acd607(72)=-acd607(23)*acd607(24)
      acd607(62)=-acd607(3)*acd607(62)
      acd607(62)=acd607(62)+acd607(72)+acd607(71)+acd607(27)+acd607(70)
      acd607(62)=acd607(17)*acd607(62)
      acd607(66)=acd607(13)*acd607(66)
      acd607(70)=-acd607(7)*acd607(51)
      acd607(70)=acd607(70)+acd607(54)
      acd607(70)=acd607(53)*acd607(70)
      acd607(69)=acd607(10)*acd607(69)
      acd607(71)=acd607(57)*acd607(58)
      acd607(72)=acd607(55)*acd607(56)
      acd607(73)=-acd607(21)*acd607(51)
      acd607(73)=acd607(52)+acd607(73)
      acd607(73)=acd607(50)*acd607(73)
      brack=acd607(62)+acd607(63)+acd607(64)+acd607(65)+acd607(66)+acd607(67)+a&
      &cd607(68)+acd607(69)+acd607(70)+acd607(71)+acd607(72)+acd607(73)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd607
      complex(ki) :: brack
      acd607(1)=d(iv1,iv2)
      acd607(2)=dotproduct(k2,qshift)
      acd607(3)=abb607(17)
      acd607(4)=dotproduct(k5,qshift)
      acd607(5)=dotproduct(k6,qshift)
      acd607(6)=dotproduct(qshift,spvak1k7)
      acd607(7)=abb607(16)
      acd607(8)=dotproduct(qshift,spvak2k7)
      acd607(9)=abb607(22)
      acd607(10)=dotproduct(qshift,spvak5k2)
      acd607(11)=abb607(26)
      acd607(12)=dotproduct(qshift,spvak5k6)
      acd607(13)=abb607(18)
      acd607(14)=abb607(13)
      acd607(15)=k2(iv1)
      acd607(16)=k7(iv2)
      acd607(17)=abb607(31)
      acd607(18)=qshift(iv2)
      acd607(19)=spvak2k7(iv2)
      acd607(20)=dotproduct(qshift,spvak4k3)
      acd607(21)=abb607(14)
      acd607(22)=abb607(36)
      acd607(23)=spvak4k3(iv2)
      acd607(24)=k2(iv2)
      acd607(25)=k7(iv1)
      acd607(26)=qshift(iv1)
      acd607(27)=spvak2k7(iv1)
      acd607(28)=spvak4k3(iv1)
      acd607(29)=k3(iv1)
      acd607(30)=abb607(29)
      acd607(31)=k3(iv2)
      acd607(32)=k4(iv1)
      acd607(33)=k4(iv2)
      acd607(34)=k5(iv1)
      acd607(35)=k5(iv2)
      acd607(36)=k6(iv1)
      acd607(37)=k6(iv2)
      acd607(38)=spvak1k7(iv2)
      acd607(39)=abb607(35)
      acd607(40)=spvak5k2(iv2)
      acd607(41)=abb607(28)
      acd607(42)=spvak5k6(iv2)
      acd607(43)=abb607(34)
      acd607(44)=spvak1k7(iv1)
      acd607(45)=spvak5k2(iv1)
      acd607(46)=spvak5k6(iv1)
      acd607(47)=abb607(19)
      acd607(48)=abb607(8)
      acd607(49)=abb607(7)
      acd607(50)=abb607(32)
      acd607(51)=abb607(37)
      acd607(52)=abb607(30)
      acd607(53)=dotproduct(qshift,spvak1k2)
      acd607(54)=abb607(10)
      acd607(55)=dotproduct(qshift,spvak1k6)
      acd607(56)=abb607(21)
      acd607(57)=abb607(11)
      acd607(58)=spvak1k2(iv2)
      acd607(59)=spvak1k3(iv2)
      acd607(60)=abb607(33)
      acd607(61)=spvak1k6(iv2)
      acd607(62)=spvak1k2(iv1)
      acd607(63)=spvak1k3(iv1)
      acd607(64)=spvak1k6(iv1)
      acd607(65)=-acd607(1)*acd607(8)
      acd607(66)=-acd607(18)*acd607(27)
      acd607(67)=-acd607(26)*acd607(19)
      acd607(65)=acd607(67)+acd607(65)+acd607(66)
      acd607(65)=acd607(9)*acd607(65)
      acd607(66)=-acd607(40)*acd607(26)
      acd607(67)=-acd607(45)*acd607(18)
      acd607(68)=-acd607(10)*acd607(1)
      acd607(66)=acd607(68)+acd607(66)+acd607(67)
      acd607(66)=acd607(11)*acd607(66)
      acd607(67)=-acd607(42)*acd607(26)
      acd607(68)=-acd607(46)*acd607(18)
      acd607(69)=-acd607(12)*acd607(1)
      acd607(67)=acd607(69)+acd607(67)+acd607(68)
      acd607(67)=acd607(13)*acd607(67)
      acd607(68)=acd607(14)*acd607(1)
      acd607(65)=acd607(65)+acd607(66)+acd607(67)+acd607(68)
      acd607(66)=acd607(8)*acd607(23)
      acd607(67)=acd607(20)*acd607(19)
      acd607(66)=acd607(66)+acd607(67)
      acd607(67)=acd607(21)*acd607(66)
      acd607(68)=acd607(17)*acd607(16)
      acd607(69)=acd607(22)*acd607(19)
      acd607(70)=2.0_ki*acd607(3)
      acd607(71)=acd607(70)*acd607(18)
      acd607(67)=acd607(67)-acd607(71)+acd607(68)-acd607(69)
      acd607(68)=-acd607(36)-acd607(34)+acd607(15)
      acd607(67)=acd607(67)*acd607(68)
      acd607(68)=acd607(8)*acd607(28)
      acd607(69)=acd607(20)*acd607(27)
      acd607(68)=acd607(68)+acd607(69)
      acd607(69)=-acd607(21)*acd607(68)
      acd607(71)=acd607(17)*acd607(25)
      acd607(72)=acd607(22)*acd607(27)
      acd607(73)=acd607(70)*acd607(26)
      acd607(69)=acd607(72)-acd607(71)+acd607(73)+acd607(69)
      acd607(71)=acd607(37)+acd607(35)-acd607(24)
      acd607(69)=acd607(69)*acd607(71)
      acd607(71)=-acd607(45)*acd607(49)
      acd607(72)=-acd607(46)*acd607(51)
      acd607(73)=-acd607(62)*acd607(54)
      acd607(74)=-acd607(64)*acd607(56)
      acd607(71)=acd607(74)+acd607(73)+acd607(72)+acd607(71)
      acd607(66)=acd607(66)*acd607(71)
      acd607(71)=-acd607(40)*acd607(49)
      acd607(72)=-acd607(42)*acd607(51)
      acd607(73)=-acd607(58)*acd607(54)
      acd607(74)=-acd607(61)*acd607(56)
      acd607(71)=acd607(74)+acd607(73)+acd607(72)+acd607(71)
      acd607(68)=acd607(68)*acd607(71)
      acd607(71)=-acd607(10)*acd607(49)
      acd607(72)=-acd607(12)*acd607(51)
      acd607(73)=-acd607(53)*acd607(54)
      acd607(74)=-acd607(55)*acd607(56)
      acd607(71)=acd607(57)+acd607(74)+acd607(73)+acd607(72)+acd607(71)
      acd607(72)=acd607(23)*acd607(27)
      acd607(73)=acd607(28)*acd607(19)
      acd607(72)=acd607(72)+acd607(73)
      acd607(71)=acd607(72)*acd607(71)
      acd607(73)=-acd607(38)*acd607(26)
      acd607(74)=-acd607(44)*acd607(18)
      acd607(75)=-acd607(6)*acd607(1)
      acd607(73)=acd607(75)+acd607(73)+acd607(74)
      acd607(74)=2.0_ki*acd607(7)
      acd607(73)=acd607(74)*acd607(73)
      acd607(74)=acd607(59)*acd607(27)
      acd607(75)=acd607(63)*acd607(19)
      acd607(74)=acd607(75)+acd607(74)
      acd607(74)=acd607(60)*acd607(74)
      acd607(72)=acd607(21)*acd607(72)
      acd607(70)=acd607(70)*acd607(1)
      acd607(70)=acd607(72)-acd607(70)
      acd607(72)=-acd607(5)-acd607(4)+acd607(2)
      acd607(70)=acd607(70)*acd607(72)
      acd607(72)=acd607(25)+acd607(32)+acd607(29)
      acd607(72)=acd607(19)*acd607(72)
      acd607(75)=acd607(16)+acd607(33)+acd607(31)
      acd607(75)=acd607(27)*acd607(75)
      acd607(72)=acd607(75)+acd607(72)
      acd607(72)=acd607(30)*acd607(72)
      acd607(75)=acd607(38)*acd607(25)
      acd607(76)=acd607(44)*acd607(16)
      acd607(75)=acd607(75)+acd607(76)
      acd607(75)=acd607(39)*acd607(75)
      acd607(76)=acd607(40)*acd607(25)
      acd607(77)=acd607(45)*acd607(16)
      acd607(76)=acd607(76)+acd607(77)
      acd607(76)=acd607(41)*acd607(76)
      acd607(77)=acd607(42)*acd607(25)
      acd607(78)=acd607(46)*acd607(16)
      acd607(77)=acd607(77)+acd607(78)
      acd607(77)=acd607(43)*acd607(77)
      acd607(78)=acd607(38)*acd607(27)
      acd607(79)=acd607(44)*acd607(19)
      acd607(78)=acd607(78)+acd607(79)
      acd607(78)=acd607(47)*acd607(78)
      acd607(79)=acd607(38)*acd607(28)
      acd607(80)=acd607(44)*acd607(23)
      acd607(79)=acd607(79)+acd607(80)
      acd607(79)=acd607(48)*acd607(79)
      acd607(80)=acd607(40)*acd607(27)
      acd607(81)=acd607(45)*acd607(19)
      acd607(80)=acd607(80)+acd607(81)
      acd607(80)=acd607(50)*acd607(80)
      acd607(81)=acd607(42)*acd607(27)
      acd607(82)=acd607(46)*acd607(19)
      acd607(81)=acd607(81)+acd607(82)
      acd607(81)=acd607(52)*acd607(81)
      brack=2.0_ki*acd607(65)+acd607(66)+acd607(67)+acd607(68)+acd607(69)+acd60&
      &7(70)+acd607(71)+acd607(72)+acd607(73)+acd607(74)+acd607(75)+acd607(76)+&
      &acd607(77)+acd607(78)+acd607(79)+acd607(80)+acd607(81)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd607h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd607
      complex(ki) :: brack
      acd607(1)=d(iv1,iv2)
      acd607(2)=k2(iv3)
      acd607(3)=abb607(17)
      acd607(4)=k5(iv3)
      acd607(5)=k6(iv3)
      acd607(6)=spvak1k7(iv3)
      acd607(7)=abb607(16)
      acd607(8)=spvak2k7(iv3)
      acd607(9)=abb607(22)
      acd607(10)=spvak5k2(iv3)
      acd607(11)=abb607(26)
      acd607(12)=spvak5k6(iv3)
      acd607(13)=abb607(18)
      acd607(14)=d(iv1,iv3)
      acd607(15)=k2(iv2)
      acd607(16)=k5(iv2)
      acd607(17)=k6(iv2)
      acd607(18)=spvak1k7(iv2)
      acd607(19)=spvak2k7(iv2)
      acd607(20)=spvak5k2(iv2)
      acd607(21)=spvak5k6(iv2)
      acd607(22)=d(iv2,iv3)
      acd607(23)=k2(iv1)
      acd607(24)=k5(iv1)
      acd607(25)=k6(iv1)
      acd607(26)=spvak1k7(iv1)
      acd607(27)=spvak2k7(iv1)
      acd607(28)=spvak5k2(iv1)
      acd607(29)=spvak5k6(iv1)
      acd607(30)=spvak4k3(iv3)
      acd607(31)=abb607(14)
      acd607(32)=spvak4k3(iv2)
      acd607(33)=spvak4k3(iv1)
      acd607(34)=abb607(7)
      acd607(35)=abb607(37)
      acd607(36)=spvak1k2(iv3)
      acd607(37)=abb607(10)
      acd607(38)=spvak1k6(iv3)
      acd607(39)=abb607(21)
      acd607(40)=spvak1k2(iv2)
      acd607(41)=spvak1k6(iv2)
      acd607(42)=spvak1k2(iv1)
      acd607(43)=spvak1k6(iv1)
      acd607(44)=acd607(13)*acd607(29)
      acd607(45)=acd607(11)*acd607(28)
      acd607(46)=acd607(7)*acd607(26)
      acd607(44)=acd607(46)+acd607(44)+acd607(45)
      acd607(44)=acd607(22)*acd607(44)
      acd607(45)=acd607(13)*acd607(21)
      acd607(46)=acd607(11)*acd607(20)
      acd607(47)=acd607(7)*acd607(18)
      acd607(45)=acd607(47)+acd607(45)+acd607(46)
      acd607(45)=acd607(14)*acd607(45)
      acd607(46)=acd607(12)*acd607(13)
      acd607(47)=acd607(10)*acd607(11)
      acd607(48)=acd607(7)*acd607(6)
      acd607(46)=acd607(48)+acd607(46)+acd607(47)
      acd607(46)=acd607(1)*acd607(46)
      acd607(47)=-acd607(25)+acd607(23)-acd607(24)
      acd607(48)=acd607(22)*acd607(47)
      acd607(49)=-acd607(17)+acd607(15)-acd607(16)
      acd607(50)=acd607(14)*acd607(49)
      acd607(51)=-acd607(5)+acd607(2)-acd607(4)
      acd607(52)=acd607(1)*acd607(51)
      acd607(48)=acd607(52)+acd607(48)+acd607(50)
      acd607(48)=acd607(3)*acd607(48)
      acd607(44)=acd607(48)+acd607(46)+acd607(44)+acd607(45)
      acd607(45)=acd607(39)*acd607(38)
      acd607(46)=acd607(37)*acd607(36)
      acd607(48)=acd607(35)*acd607(12)
      acd607(50)=acd607(34)*acd607(10)
      acd607(45)=acd607(50)+acd607(45)+acd607(46)+acd607(48)
      acd607(46)=acd607(32)*acd607(45)
      acd607(48)=acd607(39)*acd607(41)
      acd607(50)=acd607(37)*acd607(40)
      acd607(52)=acd607(35)*acd607(21)
      acd607(53)=acd607(34)*acd607(20)
      acd607(48)=acd607(50)+acd607(48)+acd607(52)+acd607(53)
      acd607(50)=acd607(30)*acd607(48)
      acd607(52)=2.0_ki*acd607(9)
      acd607(53)=acd607(22)*acd607(52)
      acd607(46)=acd607(50)+acd607(53)+acd607(46)
      acd607(46)=acd607(27)*acd607(46)
      acd607(45)=acd607(33)*acd607(45)
      acd607(50)=acd607(39)*acd607(43)
      acd607(53)=acd607(37)*acd607(42)
      acd607(54)=acd607(35)*acd607(29)
      acd607(55)=acd607(34)*acd607(28)
      acd607(50)=acd607(53)+acd607(50)+acd607(54)+acd607(55)
      acd607(53)=acd607(30)*acd607(50)
      acd607(54)=acd607(14)*acd607(52)
      acd607(45)=acd607(53)+acd607(54)+acd607(45)
      acd607(45)=acd607(19)*acd607(45)
      acd607(48)=acd607(33)*acd607(48)
      acd607(50)=acd607(32)*acd607(50)
      acd607(52)=acd607(1)*acd607(52)
      acd607(48)=acd607(50)+acd607(52)+acd607(48)
      acd607(48)=acd607(8)*acd607(48)
      acd607(50)=-acd607(32)*acd607(51)
      acd607(52)=-acd607(30)*acd607(49)
      acd607(50)=acd607(50)+acd607(52)
      acd607(50)=acd607(27)*acd607(50)
      acd607(51)=-acd607(33)*acd607(51)
      acd607(52)=-acd607(30)*acd607(47)
      acd607(51)=acd607(51)+acd607(52)
      acd607(51)=acd607(19)*acd607(51)
      acd607(49)=-acd607(33)*acd607(49)
      acd607(47)=-acd607(32)*acd607(47)
      acd607(47)=acd607(49)+acd607(47)
      acd607(47)=acd607(8)*acd607(47)
      acd607(47)=acd607(47)+acd607(50)+acd607(51)
      acd607(47)=acd607(31)*acd607(47)
      brack=2.0_ki*acd607(44)+acd607(45)+acd607(46)+acd607(47)+acd607(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd607h1
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
      qshift = k3+k7+k6+k5+k4
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
!---#[ subroutine reconstruct_d607:
   subroutine     reconstruct_d607(coeffs)
      use p12_sbars_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_607:
      coeffs%coeffs_607%c0 = derivative(czip)
      coeffs%coeffs_607%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_607%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_607%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_607%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_607%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_607%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_607%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_607%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_607%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_607%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_607%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_607%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_607%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_607%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_607%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_607%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_607%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_607%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_607%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_607%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_607%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_607%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_607%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_607%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_607%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_607%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_607%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_607%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_607%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_607%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_607%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_607%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_607%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_607%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_607:
   end subroutine reconstruct_d607
!---#] subroutine reconstruct_d607:
end module     p12_sbars_epnemumnmubarg_d607h1l1d
