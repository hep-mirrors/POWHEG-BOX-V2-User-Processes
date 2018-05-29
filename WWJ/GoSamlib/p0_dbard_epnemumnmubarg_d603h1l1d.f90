module     p0_dbard_epnemumnmubarg_d603h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d603h1l1d.f90
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
   public :: derivative , reconstruct_d603
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd603
      complex(ki) :: brack
      acd603(1)=dotproduct(k1,qshift)
      acd603(2)=dotproduct(k2,qshift)
      acd603(3)=abb603(28)
      acd603(4)=dotproduct(k5,qshift)
      acd603(5)=dotproduct(k6,qshift)
      acd603(6)=dotproduct(qshift,spvak2k7)
      acd603(7)=abb603(34)
      acd603(8)=dotproduct(qshift,spvak5k2)
      acd603(9)=abb603(35)
      acd603(10)=dotproduct(qshift,spvak5k6)
      acd603(11)=abb603(25)
      acd603(12)=abb603(20)
      acd603(13)=dotproduct(k3,qshift)
      acd603(14)=abb603(40)
      acd603(15)=dotproduct(k4,qshift)
      acd603(16)=dotproduct(qshift,qshift)
      acd603(17)=abb603(21)
      acd603(18)=dotproduct(qshift,spvak4k3)
      acd603(19)=abb603(39)
      acd603(20)=abb603(27)
      acd603(21)=abb603(45)
      acd603(22)=abb603(31)
      acd603(23)=abb603(30)
      acd603(24)=abb603(22)
      acd603(25)=abb603(46)
      acd603(26)=abb603(38)
      acd603(27)=dotproduct(k7,qshift)
      acd603(28)=abb603(14)
      acd603(29)=abb603(29)
      acd603(30)=abb603(24)
      acd603(31)=abb603(26)
      acd603(32)=abb603(23)
      acd603(33)=abb603(42)
      acd603(34)=abb603(11)
      acd603(35)=abb603(8)
      acd603(36)=abb603(19)
      acd603(37)=abb603(32)
      acd603(38)=abb603(36)
      acd603(39)=dotproduct(qshift,spvak1k2)
      acd603(40)=abb603(10)
      acd603(41)=dotproduct(qshift,spvak1k6)
      acd603(42)=abb603(17)
      acd603(43)=abb603(12)
      acd603(44)=dotproduct(qshift,spvak1k3)
      acd603(45)=abb603(9)
      acd603(46)=abb603(6)
      acd603(47)=abb603(16)
      acd603(48)=abb603(7)
      acd603(49)=abb603(44)
      acd603(50)=abb603(18)
      acd603(51)=abb603(13)
      acd603(52)=abb603(15)
      acd603(53)=-acd603(5)+acd603(2)-acd603(4)
      acd603(54)=acd603(19)*acd603(53)
      acd603(55)=-acd603(41)*acd603(42)
      acd603(56)=-acd603(39)*acd603(40)
      acd603(57)=-acd603(10)*acd603(37)
      acd603(58)=-acd603(8)*acd603(35)
      acd603(54)=acd603(58)+acd603(57)+acd603(56)+acd603(43)+acd603(55)+acd603(&
      &54)
      acd603(54)=acd603(18)*acd603(54)
      acd603(55)=acd603(13)+acd603(15)
      acd603(56)=acd603(23)*acd603(55)
      acd603(57)=acd603(20)*acd603(53)
      acd603(58)=acd603(44)*acd603(45)
      acd603(59)=acd603(1)*acd603(7)
      acd603(60)=-acd603(16)*acd603(30)
      acd603(61)=acd603(10)*acd603(38)
      acd603(62)=acd603(8)*acd603(36)
      acd603(54)=acd603(54)+acd603(62)+acd603(61)+acd603(60)+acd603(59)-acd603(&
      &46)+acd603(58)+acd603(57)+acd603(56)
      acd603(54)=acd603(6)*acd603(54)
      acd603(56)=-acd603(21)*acd603(53)
      acd603(57)=acd603(27)*acd603(28)
      acd603(58)=-acd603(16)*acd603(33)
      acd603(59)=acd603(10)*acd603(49)
      acd603(60)=acd603(8)*acd603(47)
      acd603(56)=acd603(60)+acd603(59)+acd603(58)-acd603(51)+acd603(57)+acd603(&
      &56)
      acd603(56)=acd603(18)*acd603(56)
      acd603(57)=acd603(14)*acd603(55)
      acd603(58)=acd603(1)*acd603(3)
      acd603(59)=acd603(16)*acd603(17)
      acd603(57)=acd603(22)+acd603(57)+acd603(58)+acd603(59)
      acd603(53)=acd603(57)*acd603(53)
      acd603(57)=acd603(25)*acd603(55)
      acd603(58)=acd603(1)*acd603(11)
      acd603(59)=-acd603(16)*acd603(32)
      acd603(57)=acd603(59)+acd603(58)-acd603(50)+acd603(57)
      acd603(57)=acd603(10)*acd603(57)
      acd603(58)=acd603(24)*acd603(55)
      acd603(59)=acd603(1)*acd603(9)
      acd603(60)=-acd603(16)*acd603(31)
      acd603(58)=acd603(60)+acd603(59)-acd603(48)+acd603(58)
      acd603(58)=acd603(8)*acd603(58)
      acd603(55)=-acd603(26)*acd603(55)
      acd603(59)=-acd603(27)*acd603(29)
      acd603(60)=-acd603(1)*acd603(12)
      acd603(61)=acd603(16)*acd603(34)
      brack=acd603(52)+acd603(53)+acd603(54)+acd603(55)+acd603(56)+acd603(57)+a&
      &cd603(58)+acd603(59)+acd603(60)+acd603(61)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd603
      complex(ki) :: brack
      acd603(1)=k1(iv1)
      acd603(2)=dotproduct(k2,qshift)
      acd603(3)=abb603(28)
      acd603(4)=dotproduct(k5,qshift)
      acd603(5)=dotproduct(k6,qshift)
      acd603(6)=dotproduct(qshift,spvak2k7)
      acd603(7)=abb603(34)
      acd603(8)=dotproduct(qshift,spvak5k2)
      acd603(9)=abb603(35)
      acd603(10)=dotproduct(qshift,spvak5k6)
      acd603(11)=abb603(25)
      acd603(12)=abb603(20)
      acd603(13)=k2(iv1)
      acd603(14)=dotproduct(k1,qshift)
      acd603(15)=dotproduct(k3,qshift)
      acd603(16)=abb603(40)
      acd603(17)=dotproduct(k4,qshift)
      acd603(18)=dotproduct(qshift,qshift)
      acd603(19)=abb603(21)
      acd603(20)=dotproduct(qshift,spvak4k3)
      acd603(21)=abb603(39)
      acd603(22)=abb603(27)
      acd603(23)=abb603(45)
      acd603(24)=abb603(31)
      acd603(25)=k3(iv1)
      acd603(26)=abb603(30)
      acd603(27)=abb603(22)
      acd603(28)=abb603(46)
      acd603(29)=abb603(38)
      acd603(30)=k4(iv1)
      acd603(31)=k5(iv1)
      acd603(32)=k6(iv1)
      acd603(33)=k7(iv1)
      acd603(34)=abb603(14)
      acd603(35)=abb603(29)
      acd603(36)=qshift(iv1)
      acd603(37)=abb603(24)
      acd603(38)=abb603(26)
      acd603(39)=abb603(23)
      acd603(40)=abb603(42)
      acd603(41)=abb603(11)
      acd603(42)=spvak2k7(iv1)
      acd603(43)=abb603(8)
      acd603(44)=abb603(19)
      acd603(45)=abb603(32)
      acd603(46)=abb603(36)
      acd603(47)=dotproduct(qshift,spvak1k2)
      acd603(48)=abb603(10)
      acd603(49)=dotproduct(qshift,spvak1k6)
      acd603(50)=abb603(17)
      acd603(51)=abb603(12)
      acd603(52)=dotproduct(qshift,spvak1k3)
      acd603(53)=abb603(9)
      acd603(54)=abb603(6)
      acd603(55)=spvak5k2(iv1)
      acd603(56)=abb603(16)
      acd603(57)=abb603(7)
      acd603(58)=spvak5k6(iv1)
      acd603(59)=abb603(44)
      acd603(60)=abb603(18)
      acd603(61)=spvak4k3(iv1)
      acd603(62)=dotproduct(k7,qshift)
      acd603(63)=abb603(13)
      acd603(64)=spvak1k2(iv1)
      acd603(65)=spvak1k3(iv1)
      acd603(66)=spvak1k6(iv1)
      acd603(67)=-acd603(5)+acd603(2)-acd603(4)
      acd603(68)=acd603(67)*acd603(21)
      acd603(69)=acd603(50)*acd603(49)
      acd603(70)=acd603(48)*acd603(47)
      acd603(71)=acd603(10)*acd603(45)
      acd603(72)=acd603(8)*acd603(43)
      acd603(68)=-acd603(68)+acd603(69)+acd603(71)+acd603(72)+acd603(70)-acd603&
      &(51)
      acd603(69)=-acd603(61)*acd603(68)
      acd603(70)=-acd603(50)*acd603(66)
      acd603(71)=-acd603(48)*acd603(64)
      acd603(72)=-acd603(58)*acd603(45)
      acd603(73)=-acd603(55)*acd603(43)
      acd603(74)=-acd603(32)+acd603(13)-acd603(31)
      acd603(75)=acd603(21)*acd603(74)
      acd603(70)=acd603(75)+acd603(73)+acd603(72)+acd603(70)+acd603(71)
      acd603(70)=acd603(20)*acd603(70)
      acd603(71)=acd603(25)+acd603(30)
      acd603(72)=acd603(26)*acd603(71)
      acd603(73)=acd603(22)*acd603(74)
      acd603(75)=acd603(53)*acd603(65)
      acd603(76)=acd603(1)*acd603(7)
      acd603(77)=acd603(58)*acd603(46)
      acd603(78)=acd603(55)*acd603(44)
      acd603(79)=2.0_ki*acd603(36)
      acd603(80)=-acd603(37)*acd603(79)
      acd603(69)=acd603(70)+acd603(69)+acd603(80)+acd603(78)+acd603(77)+acd603(&
      &76)+acd603(75)+acd603(73)+acd603(72)
      acd603(69)=acd603(6)*acd603(69)
      acd603(70)=acd603(15)+acd603(17)
      acd603(72)=acd603(26)*acd603(70)
      acd603(73)=acd603(22)*acd603(67)
      acd603(75)=acd603(53)*acd603(52)
      acd603(76)=acd603(14)*acd603(7)
      acd603(77)=-acd603(18)*acd603(37)
      acd603(78)=acd603(10)*acd603(46)
      acd603(80)=acd603(8)*acd603(44)
      acd603(72)=acd603(80)+acd603(78)+acd603(77)+acd603(76)-acd603(54)+acd603(&
      &75)+acd603(73)+acd603(72)
      acd603(72)=acd603(42)*acd603(72)
      acd603(68)=-acd603(42)*acd603(68)
      acd603(73)=-acd603(23)*acd603(74)
      acd603(75)=acd603(33)*acd603(34)
      acd603(76)=acd603(58)*acd603(59)
      acd603(77)=acd603(55)*acd603(56)
      acd603(78)=-acd603(40)*acd603(79)
      acd603(68)=acd603(68)+acd603(78)+acd603(77)+acd603(75)+acd603(76)+acd603(&
      &73)
      acd603(68)=acd603(20)*acd603(68)
      acd603(73)=-acd603(23)*acd603(67)
      acd603(75)=acd603(34)*acd603(62)
      acd603(76)=-acd603(18)*acd603(40)
      acd603(77)=acd603(10)*acd603(59)
      acd603(78)=acd603(8)*acd603(56)
      acd603(73)=acd603(78)+acd603(77)+acd603(76)-acd603(63)+acd603(75)+acd603(&
      &73)
      acd603(73)=acd603(61)*acd603(73)
      acd603(75)=acd603(28)*acd603(70)
      acd603(76)=acd603(14)*acd603(11)
      acd603(77)=-acd603(18)*acd603(39)
      acd603(75)=acd603(77)+acd603(76)-acd603(60)+acd603(75)
      acd603(75)=acd603(58)*acd603(75)
      acd603(76)=acd603(27)*acd603(70)
      acd603(77)=acd603(14)*acd603(9)
      acd603(78)=-acd603(18)*acd603(38)
      acd603(76)=acd603(78)+acd603(77)-acd603(57)+acd603(76)
      acd603(76)=acd603(55)*acd603(76)
      acd603(77)=acd603(28)*acd603(71)
      acd603(78)=acd603(1)*acd603(11)
      acd603(80)=-acd603(39)*acd603(79)
      acd603(77)=acd603(80)+acd603(78)+acd603(77)
      acd603(77)=acd603(10)*acd603(77)
      acd603(78)=acd603(27)*acd603(71)
      acd603(80)=acd603(1)*acd603(9)
      acd603(81)=-acd603(38)*acd603(79)
      acd603(78)=acd603(81)+acd603(80)+acd603(78)
      acd603(78)=acd603(8)*acd603(78)
      acd603(80)=acd603(71)*acd603(67)
      acd603(70)=acd603(70)*acd603(74)
      acd603(70)=acd603(70)+acd603(80)
      acd603(70)=acd603(16)*acd603(70)
      acd603(80)=acd603(3)*acd603(14)
      acd603(81)=acd603(18)*acd603(19)
      acd603(80)=acd603(24)+acd603(80)+acd603(81)
      acd603(74)=acd603(80)*acd603(74)
      acd603(80)=acd603(79)*acd603(19)
      acd603(81)=acd603(1)*acd603(3)
      acd603(80)=acd603(80)+acd603(81)
      acd603(67)=acd603(80)*acd603(67)
      acd603(71)=-acd603(29)*acd603(71)
      acd603(80)=-acd603(33)*acd603(35)
      acd603(81)=-acd603(1)*acd603(12)
      acd603(79)=acd603(41)*acd603(79)
      brack=acd603(67)+acd603(68)+acd603(69)+acd603(70)+acd603(71)+acd603(72)+a&
      &cd603(73)+acd603(74)+acd603(75)+acd603(76)+acd603(77)+acd603(78)+acd603(&
      &79)+acd603(80)+acd603(81)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd603
      complex(ki) :: brack
      acd603(1)=d(iv1,iv2)
      acd603(2)=dotproduct(k2,qshift)
      acd603(3)=abb603(21)
      acd603(4)=dotproduct(k5,qshift)
      acd603(5)=dotproduct(k6,qshift)
      acd603(6)=dotproduct(qshift,spvak2k7)
      acd603(7)=abb603(24)
      acd603(8)=dotproduct(qshift,spvak4k3)
      acd603(9)=abb603(42)
      acd603(10)=dotproduct(qshift,spvak5k2)
      acd603(11)=abb603(26)
      acd603(12)=dotproduct(qshift,spvak5k6)
      acd603(13)=abb603(23)
      acd603(14)=abb603(11)
      acd603(15)=k1(iv1)
      acd603(16)=k2(iv2)
      acd603(17)=abb603(28)
      acd603(18)=k5(iv2)
      acd603(19)=k6(iv2)
      acd603(20)=spvak2k7(iv2)
      acd603(21)=abb603(34)
      acd603(22)=spvak5k2(iv2)
      acd603(23)=abb603(35)
      acd603(24)=spvak5k6(iv2)
      acd603(25)=abb603(25)
      acd603(26)=k1(iv2)
      acd603(27)=k2(iv1)
      acd603(28)=k5(iv1)
      acd603(29)=k6(iv1)
      acd603(30)=spvak2k7(iv1)
      acd603(31)=spvak5k2(iv1)
      acd603(32)=spvak5k6(iv1)
      acd603(33)=k3(iv2)
      acd603(34)=abb603(40)
      acd603(35)=k4(iv2)
      acd603(36)=qshift(iv2)
      acd603(37)=abb603(39)
      acd603(38)=abb603(27)
      acd603(39)=spvak4k3(iv2)
      acd603(40)=abb603(45)
      acd603(41)=k3(iv1)
      acd603(42)=k4(iv1)
      acd603(43)=qshift(iv1)
      acd603(44)=spvak4k3(iv1)
      acd603(45)=abb603(30)
      acd603(46)=abb603(22)
      acd603(47)=abb603(46)
      acd603(48)=k7(iv1)
      acd603(49)=abb603(14)
      acd603(50)=k7(iv2)
      acd603(51)=abb603(8)
      acd603(52)=abb603(32)
      acd603(53)=dotproduct(qshift,spvak1k2)
      acd603(54)=abb603(10)
      acd603(55)=dotproduct(qshift,spvak1k6)
      acd603(56)=abb603(17)
      acd603(57)=abb603(12)
      acd603(58)=abb603(19)
      acd603(59)=abb603(36)
      acd603(60)=spvak1k2(iv2)
      acd603(61)=spvak1k3(iv2)
      acd603(62)=abb603(9)
      acd603(63)=spvak1k6(iv2)
      acd603(64)=spvak1k2(iv1)
      acd603(65)=spvak1k3(iv1)
      acd603(66)=spvak1k6(iv1)
      acd603(67)=abb603(16)
      acd603(68)=abb603(44)
      acd603(69)=acd603(56)*acd603(55)
      acd603(70)=acd603(54)*acd603(53)
      acd603(71)=acd603(52)*acd603(12)
      acd603(72)=acd603(51)*acd603(10)
      acd603(73)=-acd603(5)+acd603(2)-acd603(4)
      acd603(74)=acd603(73)*acd603(37)
      acd603(69)=acd603(71)+acd603(72)-acd603(74)-acd603(57)+acd603(69)+acd603(&
      &70)
      acd603(70)=-acd603(39)*acd603(69)
      acd603(71)=acd603(56)*acd603(63)
      acd603(72)=acd603(54)*acd603(60)
      acd603(74)=acd603(24)*acd603(52)
      acd603(75)=acd603(22)*acd603(51)
      acd603(71)=acd603(72)+acd603(71)+acd603(74)+acd603(75)
      acd603(72)=-acd603(8)*acd603(71)
      acd603(74)=acd603(37)*acd603(8)
      acd603(74)=acd603(74)+acd603(38)
      acd603(75)=-acd603(19)+acd603(16)-acd603(18)
      acd603(76)=acd603(75)*acd603(74)
      acd603(77)=acd603(33)+acd603(35)
      acd603(78)=acd603(45)*acd603(77)
      acd603(79)=acd603(62)*acd603(61)
      acd603(80)=acd603(26)*acd603(21)
      acd603(81)=2.0_ki*acd603(36)
      acd603(82)=-acd603(7)*acd603(81)
      acd603(83)=acd603(24)*acd603(59)
      acd603(84)=acd603(22)*acd603(58)
      acd603(70)=acd603(70)+acd603(72)+acd603(84)+acd603(83)+acd603(82)+acd603(&
      &80)+acd603(79)+acd603(78)+acd603(76)
      acd603(70)=acd603(30)*acd603(70)
      acd603(69)=-acd603(44)*acd603(69)
      acd603(72)=acd603(56)*acd603(66)
      acd603(76)=acd603(54)*acd603(64)
      acd603(78)=acd603(32)*acd603(52)
      acd603(79)=acd603(31)*acd603(51)
      acd603(72)=acd603(76)+acd603(72)+acd603(78)+acd603(79)
      acd603(76)=-acd603(8)*acd603(72)
      acd603(78)=-acd603(29)+acd603(27)-acd603(28)
      acd603(74)=acd603(78)*acd603(74)
      acd603(79)=acd603(41)+acd603(42)
      acd603(80)=acd603(45)*acd603(79)
      acd603(82)=acd603(62)*acd603(65)
      acd603(83)=acd603(15)*acd603(21)
      acd603(84)=2.0_ki*acd603(43)
      acd603(85)=-acd603(7)*acd603(84)
      acd603(86)=acd603(32)*acd603(59)
      acd603(87)=acd603(31)*acd603(58)
      acd603(69)=acd603(69)+acd603(76)+acd603(87)+acd603(86)+acd603(85)+acd603(&
      &83)+acd603(82)+acd603(80)+acd603(74)
      acd603(69)=acd603(20)*acd603(69)
      acd603(71)=-acd603(6)*acd603(71)
      acd603(74)=acd603(37)*acd603(6)
      acd603(74)=acd603(74)-acd603(40)
      acd603(76)=acd603(75)*acd603(74)
      acd603(80)=acd603(49)*acd603(50)
      acd603(82)=-acd603(9)*acd603(81)
      acd603(83)=acd603(24)*acd603(68)
      acd603(85)=acd603(22)*acd603(67)
      acd603(71)=acd603(71)+acd603(85)+acd603(83)+acd603(80)+acd603(82)+acd603(&
      &76)
      acd603(71)=acd603(44)*acd603(71)
      acd603(72)=-acd603(6)*acd603(72)
      acd603(74)=acd603(78)*acd603(74)
      acd603(76)=acd603(49)*acd603(48)
      acd603(80)=-acd603(9)*acd603(84)
      acd603(82)=acd603(32)*acd603(68)
      acd603(83)=acd603(31)*acd603(67)
      acd603(72)=acd603(72)+acd603(83)+acd603(82)+acd603(76)+acd603(80)+acd603(&
      &74)
      acd603(72)=acd603(39)*acd603(72)
      acd603(74)=-acd603(12)*acd603(13)
      acd603(76)=-acd603(10)*acd603(11)
      acd603(80)=-acd603(8)*acd603(9)
      acd603(82)=-acd603(6)*acd603(7)
      acd603(74)=acd603(82)+acd603(80)+acd603(76)+acd603(14)+acd603(74)
      acd603(76)=2.0_ki*acd603(1)
      acd603(74)=acd603(76)*acd603(74)
      acd603(76)=acd603(47)*acd603(77)
      acd603(80)=acd603(26)*acd603(25)
      acd603(82)=-acd603(13)*acd603(81)
      acd603(76)=acd603(82)+acd603(80)+acd603(76)
      acd603(76)=acd603(32)*acd603(76)
      acd603(80)=acd603(46)*acd603(77)
      acd603(82)=acd603(26)*acd603(23)
      acd603(81)=-acd603(11)*acd603(81)
      acd603(80)=acd603(81)+acd603(82)+acd603(80)
      acd603(80)=acd603(31)*acd603(80)
      acd603(81)=acd603(47)*acd603(79)
      acd603(82)=acd603(15)*acd603(25)
      acd603(83)=-acd603(13)*acd603(84)
      acd603(81)=acd603(83)+acd603(82)+acd603(81)
      acd603(81)=acd603(24)*acd603(81)
      acd603(82)=acd603(46)*acd603(79)
      acd603(83)=acd603(15)*acd603(23)
      acd603(84)=-acd603(11)*acd603(84)
      acd603(82)=acd603(84)+acd603(83)+acd603(82)
      acd603(82)=acd603(22)*acd603(82)
      acd603(83)=acd603(43)*acd603(75)
      acd603(84)=acd603(36)*acd603(78)
      acd603(73)=acd603(1)*acd603(73)
      acd603(73)=acd603(73)+acd603(84)+acd603(83)
      acd603(73)=acd603(3)*acd603(73)
      acd603(77)=acd603(77)*acd603(78)
      acd603(79)=acd603(79)*acd603(75)
      acd603(77)=acd603(79)+acd603(77)
      acd603(77)=acd603(34)*acd603(77)
      acd603(75)=acd603(75)*acd603(15)
      acd603(78)=acd603(78)*acd603(26)
      acd603(75)=acd603(78)+acd603(75)
      acd603(75)=acd603(17)*acd603(75)
      brack=acd603(69)+acd603(70)+acd603(71)+acd603(72)+2.0_ki*acd603(73)+acd60&
      &3(74)+acd603(75)+acd603(76)+acd603(77)+acd603(80)+acd603(81)+acd603(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd603h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd603
      complex(ki) :: brack
      acd603(1)=d(iv1,iv2)
      acd603(2)=k2(iv3)
      acd603(3)=abb603(21)
      acd603(4)=k5(iv3)
      acd603(5)=k6(iv3)
      acd603(6)=spvak2k7(iv3)
      acd603(7)=abb603(24)
      acd603(8)=spvak4k3(iv3)
      acd603(9)=abb603(42)
      acd603(10)=spvak5k2(iv3)
      acd603(11)=abb603(26)
      acd603(12)=spvak5k6(iv3)
      acd603(13)=abb603(23)
      acd603(14)=d(iv1,iv3)
      acd603(15)=k2(iv2)
      acd603(16)=k5(iv2)
      acd603(17)=k6(iv2)
      acd603(18)=spvak2k7(iv2)
      acd603(19)=spvak4k3(iv2)
      acd603(20)=spvak5k2(iv2)
      acd603(21)=spvak5k6(iv2)
      acd603(22)=d(iv2,iv3)
      acd603(23)=k2(iv1)
      acd603(24)=k5(iv1)
      acd603(25)=k6(iv1)
      acd603(26)=spvak2k7(iv1)
      acd603(27)=spvak4k3(iv1)
      acd603(28)=spvak5k2(iv1)
      acd603(29)=spvak5k6(iv1)
      acd603(30)=abb603(39)
      acd603(31)=abb603(8)
      acd603(32)=abb603(32)
      acd603(33)=spvak1k2(iv3)
      acd603(34)=abb603(10)
      acd603(35)=spvak1k6(iv3)
      acd603(36)=abb603(17)
      acd603(37)=spvak1k2(iv2)
      acd603(38)=spvak1k6(iv2)
      acd603(39)=spvak1k2(iv1)
      acd603(40)=spvak1k6(iv1)
      acd603(41)=-acd603(1)*acd603(6)
      acd603(42)=-acd603(14)*acd603(18)
      acd603(43)=-acd603(22)*acd603(26)
      acd603(41)=acd603(43)+acd603(41)+acd603(42)
      acd603(41)=acd603(7)*acd603(41)
      acd603(42)=-acd603(1)*acd603(8)
      acd603(43)=-acd603(14)*acd603(19)
      acd603(44)=-acd603(22)*acd603(27)
      acd603(42)=acd603(44)+acd603(42)+acd603(43)
      acd603(42)=acd603(9)*acd603(42)
      acd603(41)=acd603(41)+acd603(42)
      acd603(42)=-acd603(10)*acd603(31)
      acd603(43)=-acd603(12)*acd603(32)
      acd603(44)=-acd603(33)*acd603(34)
      acd603(45)=-acd603(35)*acd603(36)
      acd603(42)=acd603(45)+acd603(44)+acd603(43)+acd603(42)
      acd603(43)=acd603(26)*acd603(19)
      acd603(44)=acd603(27)*acd603(18)
      acd603(43)=acd603(43)+acd603(44)
      acd603(42)=acd603(43)*acd603(42)
      acd603(44)=acd603(18)*acd603(8)
      acd603(45)=acd603(19)*acd603(6)
      acd603(44)=acd603(44)+acd603(45)
      acd603(45)=-acd603(39)*acd603(34)
      acd603(46)=-acd603(40)*acd603(36)
      acd603(45)=acd603(46)+acd603(45)
      acd603(45)=acd603(44)*acd603(45)
      acd603(46)=acd603(26)*acd603(8)
      acd603(47)=acd603(27)*acd603(6)
      acd603(46)=acd603(46)+acd603(47)
      acd603(47)=-acd603(37)*acd603(34)
      acd603(48)=-acd603(38)*acd603(36)
      acd603(47)=acd603(48)+acd603(47)
      acd603(47)=acd603(46)*acd603(47)
      acd603(48)=acd603(30)*acd603(46)
      acd603(49)=2.0_ki*acd603(3)
      acd603(50)=acd603(49)*acd603(14)
      acd603(48)=acd603(48)+acd603(50)
      acd603(50)=-acd603(17)-acd603(16)+acd603(15)
      acd603(48)=acd603(48)*acd603(50)
      acd603(43)=acd603(30)*acd603(43)
      acd603(50)=acd603(49)*acd603(1)
      acd603(43)=acd603(43)+acd603(50)
      acd603(50)=-acd603(5)+acd603(2)-acd603(4)
      acd603(43)=acd603(43)*acd603(50)
      acd603(50)=acd603(30)*acd603(44)
      acd603(49)=acd603(49)*acd603(22)
      acd603(49)=acd603(49)+acd603(50)
      acd603(50)=-acd603(25)-acd603(24)+acd603(23)
      acd603(49)=acd603(49)*acd603(50)
      acd603(50)=2.0_ki*acd603(11)
      acd603(51)=-acd603(10)*acd603(50)
      acd603(52)=2.0_ki*acd603(13)
      acd603(53)=-acd603(12)*acd603(52)
      acd603(51)=acd603(53)+acd603(51)
      acd603(51)=acd603(1)*acd603(51)
      acd603(53)=-acd603(31)*acd603(46)
      acd603(54)=-acd603(14)*acd603(50)
      acd603(53)=acd603(53)+acd603(54)
      acd603(53)=acd603(20)*acd603(53)
      acd603(46)=-acd603(32)*acd603(46)
      acd603(54)=-acd603(14)*acd603(52)
      acd603(46)=acd603(46)+acd603(54)
      acd603(46)=acd603(21)*acd603(46)
      acd603(54)=-acd603(31)*acd603(44)
      acd603(50)=-acd603(22)*acd603(50)
      acd603(50)=acd603(54)+acd603(50)
      acd603(50)=acd603(28)*acd603(50)
      acd603(44)=-acd603(32)*acd603(44)
      acd603(52)=-acd603(22)*acd603(52)
      acd603(44)=acd603(44)+acd603(52)
      acd603(44)=acd603(29)*acd603(44)
      brack=2.0_ki*acd603(41)+acd603(42)+acd603(43)+acd603(44)+acd603(45)+acd60&
      &3(46)+acd603(47)+acd603(48)+acd603(49)+acd603(50)+acd603(51)+acd603(53)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd603h1
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
      qshift = -k7
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
!---#[ subroutine reconstruct_d603:
   subroutine     reconstruct_d603(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_603:
      coeffs%coeffs_603%c0 = derivative(czip)
      coeffs%coeffs_603%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_603%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_603%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_603%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_603%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_603%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_603%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_603%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_603%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_603%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_603%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_603%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_603%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_603%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_603%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_603%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_603%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_603%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_603%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_603%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_603%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_603%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_603%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_603%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_603%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_603%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_603%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_603%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_603%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_603%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_603%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_603%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_603%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_603%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_603:
   end subroutine reconstruct_d603
!---#] subroutine reconstruct_d603:
end module     p0_dbard_epnemumnmubarg_d603h1l1d
