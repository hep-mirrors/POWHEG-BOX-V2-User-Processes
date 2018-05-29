module     p0_dbard_epnemumnmubarg_d591h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d591h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d591
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd591
      complex(ki) :: brack
      acd591(1)=dotproduct(k2,qshift)
      acd591(2)=dotproduct(k3,qshift)
      acd591(3)=abb591(31)
      acd591(4)=dotproduct(k4,qshift)
      acd591(5)=dotproduct(qshift,qshift)
      acd591(6)=abb591(11)
      acd591(7)=dotproduct(qshift,spvak2k7)
      acd591(8)=dotproduct(qshift,spvak4k3)
      acd591(9)=abb591(9)
      acd591(10)=abb591(45)
      acd591(11)=abb591(21)
      acd591(12)=dotproduct(k5,qshift)
      acd591(13)=dotproduct(k6,qshift)
      acd591(14)=abb591(43)
      acd591(15)=dotproduct(qshift,spvak1k3)
      acd591(16)=abb591(10)
      acd591(17)=dotproduct(qshift,spvak5k2)
      acd591(18)=abb591(26)
      acd591(19)=dotproduct(qshift,spvak5k6)
      acd591(20)=abb591(40)
      acd591(21)=abb591(15)
      acd591(22)=dotproduct(k7,qshift)
      acd591(23)=abb591(16)
      acd591(24)=abb591(42)
      acd591(25)=abb591(41)
      acd591(26)=abb591(20)
      acd591(27)=abb591(38)
      acd591(28)=abb591(14)
      acd591(29)=abb591(8)
      acd591(30)=abb591(28)
      acd591(31)=dotproduct(qshift,spvak1k2)
      acd591(32)=abb591(18)
      acd591(33)=dotproduct(qshift,spvak1k6)
      acd591(34)=abb591(35)
      acd591(35)=abb591(23)
      acd591(36)=abb591(12)
      acd591(37)=abb591(19)
      acd591(38)=abb591(25)
      acd591(39)=abb591(22)
      acd591(40)=abb591(24)
      acd591(41)=dotproduct(qshift,spvak1k4)
      acd591(42)=dotproduct(qshift,spvak1k7)
      acd591(43)=abb591(34)
      acd591(44)=abb591(27)
      acd591(45)=abb591(7)
      acd591(46)=abb591(13)
      acd591(47)=abb591(17)
      acd591(48)=-acd591(1)+acd591(12)+acd591(13)
      acd591(49)=acd591(9)*acd591(48)
      acd591(50)=-acd591(33)*acd591(34)
      acd591(51)=-acd591(31)*acd591(32)
      acd591(52)=-acd591(19)*acd591(30)
      acd591(53)=-acd591(17)*acd591(29)
      acd591(49)=acd591(53)+acd591(52)+acd591(51)+acd591(35)+acd591(50)+acd591(&
      &49)
      acd591(49)=acd591(7)*acd591(49)
      acd591(50)=acd591(2)+acd591(4)
      acd591(51)=acd591(22)+acd591(50)
      acd591(51)=acd591(14)*acd591(51)
      acd591(52)=acd591(10)*acd591(48)
      acd591(53)=acd591(42)*acd591(43)
      acd591(54)=-acd591(25)*acd591(41)
      acd591(55)=acd591(19)*acd591(40)
      acd591(56)=acd591(17)*acd591(39)
      acd591(57)=acd591(15)*acd591(38)
      acd591(58)=-acd591(5)*acd591(24)
      acd591(49)=acd591(49)+acd591(58)+acd591(57)+acd591(56)+acd591(55)+acd591(&
      &54)-acd591(44)+acd591(53)+acd591(52)+acd591(51)
      acd591(49)=acd591(8)*acd591(49)
      acd591(51)=-acd591(3)*acd591(48)
      acd591(52)=acd591(19)*acd591(20)
      acd591(53)=acd591(17)*acd591(18)
      acd591(54)=acd591(15)*acd591(16)
      acd591(51)=acd591(54)-acd591(52)-acd591(53)-acd591(21)+acd591(51)
      acd591(50)=acd591(51)*acd591(50)
      acd591(51)=-acd591(6)*acd591(48)
      acd591(52)=-acd591(19)*acd591(27)
      acd591(53)=-acd591(17)*acd591(26)
      acd591(54)=acd591(15)*acd591(25)
      acd591(51)=acd591(54)+acd591(53)+acd591(28)+acd591(52)+acd591(51)
      acd591(51)=acd591(5)*acd591(51)
      acd591(48)=acd591(11)*acd591(48)
      acd591(52)=-acd591(22)*acd591(23)
      acd591(53)=-acd591(19)*acd591(47)
      acd591(54)=-acd591(17)*acd591(46)
      acd591(55)=-acd591(15)*acd591(45)
      acd591(56)=acd591(15)*acd591(36)
      acd591(56)=-acd591(37)+acd591(56)
      acd591(56)=acd591(7)*acd591(56)
      brack=acd591(48)+acd591(49)+acd591(50)+acd591(51)+acd591(52)+acd591(53)+a&
      &cd591(54)+acd591(55)+acd591(56)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd591
      complex(ki) :: brack
      acd591(1)=k2(iv1)
      acd591(2)=dotproduct(k3,qshift)
      acd591(3)=abb591(31)
      acd591(4)=dotproduct(k4,qshift)
      acd591(5)=dotproduct(qshift,qshift)
      acd591(6)=abb591(11)
      acd591(7)=dotproduct(qshift,spvak2k7)
      acd591(8)=dotproduct(qshift,spvak4k3)
      acd591(9)=abb591(9)
      acd591(10)=abb591(45)
      acd591(11)=abb591(21)
      acd591(12)=k3(iv1)
      acd591(13)=dotproduct(k2,qshift)
      acd591(14)=dotproduct(k5,qshift)
      acd591(15)=dotproduct(k6,qshift)
      acd591(16)=abb591(43)
      acd591(17)=dotproduct(qshift,spvak1k3)
      acd591(18)=abb591(10)
      acd591(19)=dotproduct(qshift,spvak5k2)
      acd591(20)=abb591(26)
      acd591(21)=dotproduct(qshift,spvak5k6)
      acd591(22)=abb591(40)
      acd591(23)=abb591(15)
      acd591(24)=k4(iv1)
      acd591(25)=k5(iv1)
      acd591(26)=k6(iv1)
      acd591(27)=k7(iv1)
      acd591(28)=abb591(16)
      acd591(29)=qshift(iv1)
      acd591(30)=abb591(42)
      acd591(31)=abb591(41)
      acd591(32)=abb591(20)
      acd591(33)=abb591(38)
      acd591(34)=abb591(14)
      acd591(35)=spvak2k7(iv1)
      acd591(36)=abb591(8)
      acd591(37)=abb591(28)
      acd591(38)=dotproduct(qshift,spvak1k2)
      acd591(39)=abb591(18)
      acd591(40)=dotproduct(qshift,spvak1k6)
      acd591(41)=abb591(35)
      acd591(42)=abb591(23)
      acd591(43)=abb591(12)
      acd591(44)=abb591(19)
      acd591(45)=spvak4k3(iv1)
      acd591(46)=dotproduct(k7,qshift)
      acd591(47)=abb591(25)
      acd591(48)=abb591(22)
      acd591(49)=abb591(24)
      acd591(50)=dotproduct(qshift,spvak1k4)
      acd591(51)=dotproduct(qshift,spvak1k7)
      acd591(52)=abb591(34)
      acd591(53)=abb591(27)
      acd591(54)=spvak1k3(iv1)
      acd591(55)=abb591(7)
      acd591(56)=spvak5k2(iv1)
      acd591(57)=abb591(13)
      acd591(58)=spvak5k6(iv1)
      acd591(59)=abb591(17)
      acd591(60)=spvak1k2(iv1)
      acd591(61)=spvak1k4(iv1)
      acd591(62)=spvak1k6(iv1)
      acd591(63)=spvak1k7(iv1)
      acd591(64)=-acd591(15)+acd591(13)-acd591(14)
      acd591(65)=acd591(64)*acd591(9)
      acd591(66)=acd591(41)*acd591(40)
      acd591(67)=acd591(39)*acd591(38)
      acd591(68)=acd591(21)*acd591(37)
      acd591(69)=acd591(19)*acd591(36)
      acd591(65)=acd591(65)+acd591(66)+acd591(68)+acd591(69)+acd591(67)-acd591(&
      &42)
      acd591(66)=-acd591(35)*acd591(65)
      acd591(67)=-acd591(41)*acd591(62)
      acd591(68)=-acd591(39)*acd591(60)
      acd591(69)=-acd591(58)*acd591(37)
      acd591(70)=-acd591(56)*acd591(36)
      acd591(71)=-acd591(1)+acd591(25)+acd591(26)
      acd591(72)=acd591(9)*acd591(71)
      acd591(67)=acd591(72)+acd591(70)+acd591(69)+acd591(67)+acd591(68)
      acd591(67)=acd591(7)*acd591(67)
      acd591(68)=acd591(10)*acd591(71)
      acd591(69)=acd591(12)+acd591(24)
      acd591(70)=acd591(27)+acd591(69)
      acd591(70)=acd591(16)*acd591(70)
      acd591(72)=acd591(52)*acd591(63)
      acd591(73)=-acd591(31)*acd591(61)
      acd591(74)=acd591(58)*acd591(49)
      acd591(75)=acd591(56)*acd591(48)
      acd591(76)=acd591(54)*acd591(47)
      acd591(77)=2.0_ki*acd591(29)
      acd591(78)=-acd591(30)*acd591(77)
      acd591(66)=acd591(67)+acd591(66)+acd591(78)+acd591(76)+acd591(75)+acd591(&
      &74)+acd591(72)+acd591(73)+acd591(70)+acd591(68)
      acd591(66)=acd591(8)*acd591(66)
      acd591(65)=-acd591(7)*acd591(65)
      acd591(67)=acd591(2)+acd591(4)
      acd591(68)=acd591(46)+acd591(67)
      acd591(68)=acd591(16)*acd591(68)
      acd591(70)=acd591(52)*acd591(51)
      acd591(72)=-acd591(31)*acd591(50)
      acd591(73)=acd591(17)*acd591(47)
      acd591(74)=acd591(21)*acd591(49)
      acd591(75)=acd591(19)*acd591(48)
      acd591(76)=-acd591(10)*acd591(64)
      acd591(78)=-acd591(5)*acd591(30)
      acd591(65)=acd591(65)+acd591(78)+acd591(76)+acd591(75)+acd591(74)+acd591(&
      &73)+acd591(72)-acd591(53)+acd591(70)+acd591(68)
      acd591(65)=acd591(45)*acd591(65)
      acd591(68)=-acd591(6)*acd591(71)
      acd591(70)=-acd591(58)*acd591(33)
      acd591(72)=-acd591(56)*acd591(32)
      acd591(73)=acd591(54)*acd591(31)
      acd591(68)=acd591(73)+acd591(70)+acd591(72)+acd591(68)
      acd591(68)=acd591(5)*acd591(68)
      acd591(70)=acd591(17)*acd591(31)
      acd591(72)=-acd591(21)*acd591(33)
      acd591(73)=-acd591(19)*acd591(32)
      acd591(74)=acd591(6)*acd591(64)
      acd591(70)=acd591(74)+acd591(73)+acd591(72)+acd591(34)+acd591(70)
      acd591(70)=acd591(70)*acd591(77)
      acd591(72)=acd591(17)*acd591(18)
      acd591(73)=acd591(21)*acd591(22)
      acd591(74)=acd591(19)*acd591(20)
      acd591(72)=-acd591(72)+acd591(73)+acd591(74)+acd591(23)
      acd591(72)=-acd591(72)*acd591(69)
      acd591(73)=acd591(58)*acd591(22)
      acd591(74)=acd591(56)*acd591(20)
      acd591(75)=acd591(54)*acd591(18)
      acd591(73)=-acd591(75)+acd591(73)+acd591(74)
      acd591(73)=-acd591(73)*acd591(67)
      acd591(64)=acd591(64)*acd591(69)
      acd591(67)=-acd591(71)*acd591(67)
      acd591(64)=acd591(67)+acd591(64)
      acd591(64)=acd591(3)*acd591(64)
      acd591(67)=acd591(7)*acd591(43)
      acd591(67)=acd591(67)-acd591(55)
      acd591(67)=acd591(54)*acd591(67)
      acd591(69)=acd591(11)*acd591(71)
      acd591(71)=-acd591(27)*acd591(28)
      acd591(74)=-acd591(58)*acd591(59)
      acd591(75)=-acd591(56)*acd591(57)
      acd591(76)=acd591(17)*acd591(43)
      acd591(76)=-acd591(44)+acd591(76)
      acd591(76)=acd591(35)*acd591(76)
      brack=acd591(64)+acd591(65)+acd591(66)+acd591(67)+acd591(68)+acd591(69)+a&
      &cd591(70)+acd591(71)+acd591(72)+acd591(73)+acd591(74)+acd591(75)+acd591(&
      &76)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd591
      complex(ki) :: brack
      acd591(1)=d(iv1,iv2)
      acd591(2)=dotproduct(k2,qshift)
      acd591(3)=abb591(11)
      acd591(4)=dotproduct(k5,qshift)
      acd591(5)=dotproduct(k6,qshift)
      acd591(6)=dotproduct(qshift,spvak1k3)
      acd591(7)=abb591(41)
      acd591(8)=dotproduct(qshift,spvak4k3)
      acd591(9)=abb591(42)
      acd591(10)=dotproduct(qshift,spvak5k2)
      acd591(11)=abb591(20)
      acd591(12)=dotproduct(qshift,spvak5k6)
      acd591(13)=abb591(38)
      acd591(14)=abb591(14)
      acd591(15)=k2(iv1)
      acd591(16)=k3(iv2)
      acd591(17)=abb591(31)
      acd591(18)=k4(iv2)
      acd591(19)=qshift(iv2)
      acd591(20)=spvak4k3(iv2)
      acd591(21)=dotproduct(qshift,spvak2k7)
      acd591(22)=abb591(9)
      acd591(23)=abb591(45)
      acd591(24)=spvak2k7(iv2)
      acd591(25)=k2(iv2)
      acd591(26)=k3(iv1)
      acd591(27)=k4(iv1)
      acd591(28)=qshift(iv1)
      acd591(29)=spvak4k3(iv1)
      acd591(30)=spvak2k7(iv1)
      acd591(31)=k5(iv2)
      acd591(32)=k6(iv2)
      acd591(33)=spvak1k3(iv2)
      acd591(34)=abb591(10)
      acd591(35)=abb591(43)
      acd591(36)=spvak5k2(iv2)
      acd591(37)=abb591(26)
      acd591(38)=spvak5k6(iv2)
      acd591(39)=abb591(40)
      acd591(40)=k5(iv1)
      acd591(41)=k6(iv1)
      acd591(42)=spvak1k3(iv1)
      acd591(43)=spvak5k2(iv1)
      acd591(44)=spvak5k6(iv1)
      acd591(45)=k7(iv1)
      acd591(46)=k7(iv2)
      acd591(47)=abb591(25)
      acd591(48)=abb591(12)
      acd591(49)=abb591(8)
      acd591(50)=abb591(22)
      acd591(51)=abb591(28)
      acd591(52)=abb591(24)
      acd591(53)=dotproduct(qshift,spvak1k2)
      acd591(54)=abb591(18)
      acd591(55)=dotproduct(qshift,spvak1k6)
      acd591(56)=abb591(35)
      acd591(57)=abb591(23)
      acd591(58)=spvak1k2(iv2)
      acd591(59)=spvak1k4(iv2)
      acd591(60)=spvak1k6(iv2)
      acd591(61)=spvak1k7(iv2)
      acd591(62)=abb591(34)
      acd591(63)=spvak1k2(iv1)
      acd591(64)=spvak1k4(iv1)
      acd591(65)=spvak1k6(iv1)
      acd591(66)=spvak1k7(iv1)
      acd591(67)=acd591(56)*acd591(60)
      acd591(68)=acd591(54)*acd591(58)
      acd591(69)=acd591(38)*acd591(51)
      acd591(70)=acd591(36)*acd591(49)
      acd591(67)=acd591(68)+acd591(67)+acd591(69)+acd591(70)
      acd591(68)=-acd591(21)*acd591(67)
      acd591(69)=acd591(56)*acd591(55)
      acd591(70)=acd591(54)*acd591(53)
      acd591(71)=acd591(51)*acd591(12)
      acd591(72)=acd591(49)*acd591(10)
      acd591(69)=-acd591(57)+acd591(69)+acd591(70)+acd591(71)+acd591(72)
      acd591(70)=-acd591(24)*acd591(69)
      acd591(71)=-acd591(32)+acd591(25)-acd591(31)
      acd591(72)=-acd591(21)*acd591(71)
      acd591(73)=-acd591(5)+acd591(2)-acd591(4)
      acd591(74)=-acd591(24)*acd591(73)
      acd591(72)=acd591(72)+acd591(74)
      acd591(72)=acd591(22)*acd591(72)
      acd591(74)=acd591(16)+acd591(18)
      acd591(75)=acd591(46)+acd591(74)
      acd591(75)=acd591(35)*acd591(75)
      acd591(76)=acd591(62)*acd591(61)
      acd591(77)=acd591(33)*acd591(47)
      acd591(78)=-acd591(7)*acd591(59)
      acd591(79)=acd591(38)*acd591(52)
      acd591(80)=acd591(36)*acd591(50)
      acd591(81)=-acd591(23)*acd591(71)
      acd591(82)=2.0_ki*acd591(9)
      acd591(83)=-acd591(19)*acd591(82)
      acd591(68)=acd591(72)+acd591(70)+acd591(68)+acd591(83)+acd591(81)+acd591(&
      &80)+acd591(79)+acd591(78)+acd591(76)+acd591(77)+acd591(75)
      acd591(68)=acd591(29)*acd591(68)
      acd591(70)=acd591(56)*acd591(65)
      acd591(72)=acd591(54)*acd591(63)
      acd591(75)=acd591(44)*acd591(51)
      acd591(76)=acd591(43)*acd591(49)
      acd591(70)=acd591(72)+acd591(70)+acd591(75)+acd591(76)
      acd591(72)=-acd591(21)*acd591(70)
      acd591(69)=-acd591(30)*acd591(69)
      acd591(75)=-acd591(15)+acd591(40)+acd591(41)
      acd591(76)=acd591(21)*acd591(75)
      acd591(77)=-acd591(30)*acd591(73)
      acd591(76)=acd591(76)+acd591(77)
      acd591(76)=acd591(22)*acd591(76)
      acd591(77)=acd591(23)*acd591(75)
      acd591(78)=acd591(26)+acd591(27)
      acd591(79)=acd591(45)+acd591(78)
      acd591(79)=acd591(35)*acd591(79)
      acd591(80)=acd591(62)*acd591(66)
      acd591(81)=acd591(42)*acd591(47)
      acd591(83)=-acd591(7)*acd591(64)
      acd591(84)=acd591(44)*acd591(52)
      acd591(85)=acd591(43)*acd591(50)
      acd591(86)=-acd591(28)*acd591(82)
      acd591(69)=acd591(76)+acd591(69)+acd591(72)+acd591(86)+acd591(85)+acd591(&
      &84)+acd591(83)+acd591(80)+acd591(81)+acd591(79)+acd591(77)
      acd591(69)=acd591(20)*acd591(69)
      acd591(72)=acd591(7)*acd591(33)
      acd591(76)=-acd591(38)*acd591(13)
      acd591(77)=-acd591(36)*acd591(11)
      acd591(72)=acd591(77)+acd591(72)+acd591(76)
      acd591(72)=acd591(28)*acd591(72)
      acd591(76)=acd591(7)*acd591(42)
      acd591(77)=-acd591(44)*acd591(13)
      acd591(79)=-acd591(43)*acd591(11)
      acd591(76)=acd591(79)+acd591(76)+acd591(77)
      acd591(76)=acd591(19)*acd591(76)
      acd591(77)=acd591(28)*acd591(71)
      acd591(79)=-acd591(19)*acd591(75)
      acd591(73)=acd591(1)*acd591(73)
      acd591(73)=acd591(73)+acd591(77)+acd591(79)
      acd591(73)=acd591(3)*acd591(73)
      acd591(72)=acd591(73)+acd591(72)+acd591(76)
      acd591(67)=-acd591(8)*acd591(67)
      acd591(73)=acd591(33)*acd591(48)
      acd591(67)=acd591(73)+acd591(67)
      acd591(67)=acd591(30)*acd591(67)
      acd591(70)=-acd591(8)*acd591(70)
      acd591(73)=acd591(42)*acd591(48)
      acd591(70)=acd591(73)+acd591(70)
      acd591(70)=acd591(24)*acd591(70)
      acd591(73)=acd591(42)*acd591(34)
      acd591(76)=acd591(44)*acd591(39)
      acd591(77)=acd591(43)*acd591(37)
      acd591(73)=-acd591(77)+acd591(73)-acd591(76)
      acd591(73)=acd591(73)*acd591(74)
      acd591(76)=acd591(33)*acd591(34)
      acd591(77)=acd591(38)*acd591(39)
      acd591(79)=acd591(36)*acd591(37)
      acd591(76)=-acd591(76)+acd591(77)+acd591(79)
      acd591(76)=-acd591(76)*acd591(78)
      acd591(77)=-acd591(12)*acd591(13)
      acd591(79)=-acd591(10)*acd591(11)
      acd591(80)=acd591(7)*acd591(6)
      acd591(77)=acd591(80)+acd591(79)+acd591(14)+acd591(77)
      acd591(79)=-acd591(8)*acd591(82)
      acd591(77)=acd591(79)+2.0_ki*acd591(77)
      acd591(77)=acd591(1)*acd591(77)
      acd591(78)=acd591(71)*acd591(78)
      acd591(74)=-acd591(75)*acd591(74)
      acd591(74)=acd591(74)+acd591(78)
      acd591(74)=acd591(17)*acd591(74)
      acd591(71)=-acd591(30)*acd591(71)
      acd591(75)=acd591(24)*acd591(75)
      acd591(71)=acd591(71)+acd591(75)
      acd591(71)=acd591(22)*acd591(8)*acd591(71)
      brack=acd591(67)+acd591(68)+acd591(69)+acd591(70)+acd591(71)+2.0_ki*acd59&
      &1(72)+acd591(73)+acd591(74)+acd591(76)+acd591(77)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd591
      complex(ki) :: brack
      acd591(1)=d(iv1,iv2)
      acd591(2)=k2(iv3)
      acd591(3)=abb591(11)
      acd591(4)=k5(iv3)
      acd591(5)=k6(iv3)
      acd591(6)=spvak1k3(iv3)
      acd591(7)=abb591(41)
      acd591(8)=spvak4k3(iv3)
      acd591(9)=abb591(42)
      acd591(10)=spvak5k2(iv3)
      acd591(11)=abb591(20)
      acd591(12)=spvak5k6(iv3)
      acd591(13)=abb591(38)
      acd591(14)=d(iv1,iv3)
      acd591(15)=k2(iv2)
      acd591(16)=k5(iv2)
      acd591(17)=k6(iv2)
      acd591(18)=spvak1k3(iv2)
      acd591(19)=spvak4k3(iv2)
      acd591(20)=spvak5k2(iv2)
      acd591(21)=spvak5k6(iv2)
      acd591(22)=d(iv2,iv3)
      acd591(23)=k2(iv1)
      acd591(24)=k5(iv1)
      acd591(25)=k6(iv1)
      acd591(26)=spvak1k3(iv1)
      acd591(27)=spvak4k3(iv1)
      acd591(28)=spvak5k2(iv1)
      acd591(29)=spvak5k6(iv1)
      acd591(30)=spvak2k7(iv3)
      acd591(31)=abb591(9)
      acd591(32)=spvak2k7(iv2)
      acd591(33)=spvak2k7(iv1)
      acd591(34)=abb591(8)
      acd591(35)=abb591(28)
      acd591(36)=spvak1k2(iv3)
      acd591(37)=abb591(18)
      acd591(38)=spvak1k6(iv3)
      acd591(39)=abb591(35)
      acd591(40)=spvak1k2(iv2)
      acd591(41)=spvak1k6(iv2)
      acd591(42)=spvak1k2(iv1)
      acd591(43)=spvak1k6(iv1)
      acd591(44)=-acd591(13)*acd591(29)
      acd591(45)=-acd591(11)*acd591(28)
      acd591(46)=acd591(7)*acd591(26)
      acd591(44)=acd591(46)+acd591(44)+acd591(45)
      acd591(44)=acd591(22)*acd591(44)
      acd591(45)=-acd591(13)*acd591(21)
      acd591(46)=-acd591(11)*acd591(20)
      acd591(47)=acd591(7)*acd591(18)
      acd591(45)=acd591(47)+acd591(45)+acd591(46)
      acd591(45)=acd591(14)*acd591(45)
      acd591(46)=-acd591(12)*acd591(13)
      acd591(47)=-acd591(10)*acd591(11)
      acd591(48)=acd591(7)*acd591(6)
      acd591(46)=acd591(48)+acd591(46)+acd591(47)
      acd591(46)=acd591(1)*acd591(46)
      acd591(47)=-acd591(25)+acd591(23)-acd591(24)
      acd591(48)=acd591(22)*acd591(47)
      acd591(49)=-acd591(17)+acd591(15)-acd591(16)
      acd591(50)=acd591(14)*acd591(49)
      acd591(51)=-acd591(5)+acd591(2)-acd591(4)
      acd591(52)=acd591(1)*acd591(51)
      acd591(48)=acd591(52)+acd591(48)+acd591(50)
      acd591(48)=acd591(3)*acd591(48)
      acd591(44)=acd591(48)+acd591(46)+acd591(44)+acd591(45)
      acd591(45)=acd591(39)*acd591(38)
      acd591(46)=acd591(37)*acd591(36)
      acd591(48)=acd591(35)*acd591(12)
      acd591(50)=acd591(34)*acd591(10)
      acd591(45)=acd591(50)+acd591(45)+acd591(46)+acd591(48)
      acd591(46)=-acd591(32)*acd591(45)
      acd591(48)=acd591(39)*acd591(41)
      acd591(50)=acd591(37)*acd591(40)
      acd591(52)=acd591(35)*acd591(21)
      acd591(53)=acd591(34)*acd591(20)
      acd591(48)=acd591(50)+acd591(48)+acd591(52)+acd591(53)
      acd591(50)=-acd591(30)*acd591(48)
      acd591(52)=2.0_ki*acd591(9)
      acd591(53)=-acd591(22)*acd591(52)
      acd591(46)=acd591(50)+acd591(53)+acd591(46)
      acd591(46)=acd591(27)*acd591(46)
      acd591(45)=-acd591(33)*acd591(45)
      acd591(50)=acd591(39)*acd591(43)
      acd591(53)=acd591(37)*acd591(42)
      acd591(54)=acd591(35)*acd591(29)
      acd591(55)=acd591(34)*acd591(28)
      acd591(50)=acd591(53)+acd591(50)+acd591(54)+acd591(55)
      acd591(53)=-acd591(30)*acd591(50)
      acd591(54)=-acd591(14)*acd591(52)
      acd591(45)=acd591(53)+acd591(54)+acd591(45)
      acd591(45)=acd591(19)*acd591(45)
      acd591(48)=-acd591(33)*acd591(48)
      acd591(50)=-acd591(32)*acd591(50)
      acd591(52)=-acd591(1)*acd591(52)
      acd591(48)=acd591(50)+acd591(52)+acd591(48)
      acd591(48)=acd591(8)*acd591(48)
      acd591(50)=-acd591(32)*acd591(51)
      acd591(52)=-acd591(30)*acd591(49)
      acd591(50)=acd591(50)+acd591(52)
      acd591(50)=acd591(27)*acd591(50)
      acd591(51)=-acd591(33)*acd591(51)
      acd591(52)=-acd591(30)*acd591(47)
      acd591(51)=acd591(51)+acd591(52)
      acd591(51)=acd591(19)*acd591(51)
      acd591(49)=-acd591(33)*acd591(49)
      acd591(47)=-acd591(32)*acd591(47)
      acd591(47)=acd591(49)+acd591(47)
      acd591(47)=acd591(8)*acd591(47)
      acd591(47)=acd591(47)+acd591(50)+acd591(51)
      acd591(47)=acd591(31)*acd591(47)
      brack=2.0_ki*acd591(44)+acd591(45)+acd591(46)+acd591(47)+acd591(48)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd591h1
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
!---#[ subroutine reconstruct_d591:
   subroutine     reconstruct_d591(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_591:
      coeffs%coeffs_591%c0 = derivative(czip)
      coeffs%coeffs_591%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_591%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_591%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_591%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_591%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_591%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_591%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_591%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_591%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_591%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_591%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_591%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_591%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_591%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_591%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_591%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_591%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_591%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_591%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_591%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_591%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_591%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_591%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_591%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_591%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_591%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_591%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_591%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_591%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_591%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_591%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_591%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_591%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_591%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_591:
   end subroutine reconstruct_d591
!---#] subroutine reconstruct_d591:
end module     p0_dbard_epnemumnmubarg_d591h1l1d
