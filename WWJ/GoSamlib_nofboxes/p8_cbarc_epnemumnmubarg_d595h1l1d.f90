module     p8_cbarc_epnemumnmubarg_d595h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d595h1l1d.f90
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
   public :: derivative , reconstruct_d595
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd595
      complex(ki) :: brack
      acd595(1)=dotproduct(k1,qshift)
      acd595(2)=dotproduct(k2,qshift)
      acd595(3)=abb595(41)
      acd595(4)=dotproduct(k3,qshift)
      acd595(5)=dotproduct(k4,qshift)
      acd595(6)=dotproduct(qshift,spvak2k7)
      acd595(7)=abb595(13)
      acd595(8)=dotproduct(qshift,spvak4k2)
      acd595(9)=abb595(22)
      acd595(10)=dotproduct(qshift,spvak4k3)
      acd595(11)=abb595(43)
      acd595(12)=abb595(24)
      acd595(13)=dotproduct(k5,qshift)
      acd595(14)=abb595(39)
      acd595(15)=dotproduct(k6,qshift)
      acd595(16)=dotproduct(qshift,qshift)
      acd595(17)=abb595(20)
      acd595(18)=dotproduct(qshift,spvak5k6)
      acd595(19)=abb595(29)
      acd595(20)=abb595(32)
      acd595(21)=abb595(30)
      acd595(22)=abb595(34)
      acd595(23)=abb595(19)
      acd595(24)=abb595(11)
      acd595(25)=abb595(47)
      acd595(26)=abb595(26)
      acd595(27)=dotproduct(k7,qshift)
      acd595(28)=abb595(6)
      acd595(29)=abb595(17)
      acd595(30)=abb595(14)
      acd595(31)=abb595(10)
      acd595(32)=abb595(21)
      acd595(33)=abb595(28)
      acd595(34)=abb595(9)
      acd595(35)=abb595(12)
      acd595(36)=abb595(31)
      acd595(37)=abb595(33)
      acd595(38)=abb595(36)
      acd595(39)=dotproduct(qshift,spvak1k2)
      acd595(40)=abb595(23)
      acd595(41)=dotproduct(qshift,spvak1k3)
      acd595(42)=abb595(37)
      acd595(43)=abb595(16)
      acd595(44)=dotproduct(qshift,spvak1k6)
      acd595(45)=abb595(18)
      acd595(46)=abb595(15)
      acd595(47)=abb595(25)
      acd595(48)=abb595(8)
      acd595(49)=abb595(42)
      acd595(50)=abb595(35)
      acd595(51)=abb595(27)
      acd595(52)=abb595(7)
      acd595(53)=-acd595(5)+acd595(2)-acd595(4)
      acd595(54)=acd595(19)*acd595(53)
      acd595(55)=-acd595(41)*acd595(42)
      acd595(56)=-acd595(39)*acd595(40)
      acd595(57)=-acd595(10)*acd595(37)
      acd595(58)=-acd595(8)*acd595(35)
      acd595(54)=acd595(58)+acd595(57)+acd595(56)+acd595(43)+acd595(55)+acd595(&
      &54)
      acd595(54)=acd595(18)*acd595(54)
      acd595(55)=acd595(13)+acd595(15)
      acd595(56)=-acd595(23)*acd595(55)
      acd595(57)=acd595(20)*acd595(53)
      acd595(58)=acd595(44)*acd595(45)
      acd595(59)=acd595(1)*acd595(7)
      acd595(60)=-acd595(16)*acd595(30)
      acd595(61)=acd595(10)*acd595(38)
      acd595(62)=acd595(8)*acd595(36)
      acd595(54)=acd595(54)+acd595(62)+acd595(61)+acd595(60)+acd595(59)-acd595(&
      &46)+acd595(58)+acd595(57)+acd595(56)
      acd595(54)=acd595(6)*acd595(54)
      acd595(56)=acd595(21)*acd595(53)
      acd595(57)=acd595(27)*acd595(28)
      acd595(58)=-acd595(16)*acd595(33)
      acd595(59)=acd595(10)*acd595(49)
      acd595(60)=acd595(8)*acd595(47)
      acd595(56)=acd595(60)+acd595(59)+acd595(58)-acd595(51)+acd595(57)+acd595(&
      &56)
      acd595(56)=acd595(18)*acd595(56)
      acd595(57)=acd595(14)*acd595(55)
      acd595(58)=acd595(1)*acd595(3)
      acd595(59)=acd595(16)*acd595(17)
      acd595(57)=acd595(22)-acd595(57)+acd595(58)+acd595(59)
      acd595(53)=acd595(57)*acd595(53)
      acd595(57)=-acd595(25)*acd595(55)
      acd595(58)=acd595(1)*acd595(11)
      acd595(59)=-acd595(16)*acd595(32)
      acd595(57)=acd595(59)+acd595(58)-acd595(50)+acd595(57)
      acd595(57)=acd595(10)*acd595(57)
      acd595(58)=acd595(24)*acd595(55)
      acd595(59)=acd595(1)*acd595(9)
      acd595(60)=-acd595(16)*acd595(31)
      acd595(58)=acd595(60)+acd595(59)-acd595(48)+acd595(58)
      acd595(58)=acd595(8)*acd595(58)
      acd595(55)=-acd595(26)*acd595(55)
      acd595(59)=-acd595(27)*acd595(29)
      acd595(60)=-acd595(1)*acd595(12)
      acd595(61)=acd595(16)*acd595(34)
      brack=acd595(52)+acd595(53)+acd595(54)+acd595(55)+acd595(56)+acd595(57)+a&
      &cd595(58)+acd595(59)+acd595(60)+acd595(61)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(81) :: acd595
      complex(ki) :: brack
      acd595(1)=k1(iv1)
      acd595(2)=dotproduct(k2,qshift)
      acd595(3)=abb595(41)
      acd595(4)=dotproduct(k3,qshift)
      acd595(5)=dotproduct(k4,qshift)
      acd595(6)=dotproduct(qshift,spvak2k7)
      acd595(7)=abb595(13)
      acd595(8)=dotproduct(qshift,spvak4k2)
      acd595(9)=abb595(22)
      acd595(10)=dotproduct(qshift,spvak4k3)
      acd595(11)=abb595(43)
      acd595(12)=abb595(24)
      acd595(13)=k2(iv1)
      acd595(14)=dotproduct(k1,qshift)
      acd595(15)=dotproduct(k5,qshift)
      acd595(16)=abb595(39)
      acd595(17)=dotproduct(k6,qshift)
      acd595(18)=dotproduct(qshift,qshift)
      acd595(19)=abb595(20)
      acd595(20)=dotproduct(qshift,spvak5k6)
      acd595(21)=abb595(29)
      acd595(22)=abb595(32)
      acd595(23)=abb595(30)
      acd595(24)=abb595(34)
      acd595(25)=k3(iv1)
      acd595(26)=k4(iv1)
      acd595(27)=k5(iv1)
      acd595(28)=abb595(19)
      acd595(29)=abb595(11)
      acd595(30)=abb595(47)
      acd595(31)=abb595(26)
      acd595(32)=k6(iv1)
      acd595(33)=k7(iv1)
      acd595(34)=abb595(6)
      acd595(35)=abb595(17)
      acd595(36)=qshift(iv1)
      acd595(37)=abb595(14)
      acd595(38)=abb595(10)
      acd595(39)=abb595(21)
      acd595(40)=abb595(28)
      acd595(41)=abb595(9)
      acd595(42)=spvak2k7(iv1)
      acd595(43)=abb595(12)
      acd595(44)=abb595(31)
      acd595(45)=abb595(33)
      acd595(46)=abb595(36)
      acd595(47)=dotproduct(qshift,spvak1k2)
      acd595(48)=abb595(23)
      acd595(49)=dotproduct(qshift,spvak1k3)
      acd595(50)=abb595(37)
      acd595(51)=abb595(16)
      acd595(52)=dotproduct(qshift,spvak1k6)
      acd595(53)=abb595(18)
      acd595(54)=abb595(15)
      acd595(55)=spvak4k2(iv1)
      acd595(56)=abb595(25)
      acd595(57)=abb595(8)
      acd595(58)=spvak4k3(iv1)
      acd595(59)=abb595(42)
      acd595(60)=abb595(35)
      acd595(61)=spvak5k6(iv1)
      acd595(62)=dotproduct(k7,qshift)
      acd595(63)=abb595(27)
      acd595(64)=spvak1k2(iv1)
      acd595(65)=spvak1k3(iv1)
      acd595(66)=spvak1k6(iv1)
      acd595(67)=-acd595(5)+acd595(2)-acd595(4)
      acd595(68)=acd595(67)*acd595(21)
      acd595(69)=acd595(50)*acd595(49)
      acd595(70)=acd595(48)*acd595(47)
      acd595(71)=acd595(10)*acd595(45)
      acd595(72)=acd595(8)*acd595(43)
      acd595(68)=-acd595(68)+acd595(69)+acd595(71)+acd595(72)+acd595(70)-acd595&
      &(51)
      acd595(69)=-acd595(61)*acd595(68)
      acd595(70)=-acd595(50)*acd595(65)
      acd595(71)=-acd595(48)*acd595(64)
      acd595(72)=-acd595(58)*acd595(45)
      acd595(73)=-acd595(55)*acd595(43)
      acd595(74)=-acd595(26)+acd595(13)-acd595(25)
      acd595(75)=acd595(21)*acd595(74)
      acd595(70)=acd595(75)+acd595(73)+acd595(72)+acd595(70)+acd595(71)
      acd595(70)=acd595(20)*acd595(70)
      acd595(71)=acd595(27)+acd595(32)
      acd595(72)=-acd595(28)*acd595(71)
      acd595(73)=acd595(22)*acd595(74)
      acd595(75)=acd595(53)*acd595(66)
      acd595(76)=acd595(1)*acd595(7)
      acd595(77)=acd595(58)*acd595(46)
      acd595(78)=acd595(55)*acd595(44)
      acd595(79)=2.0_ki*acd595(36)
      acd595(80)=-acd595(37)*acd595(79)
      acd595(69)=acd595(70)+acd595(69)+acd595(80)+acd595(78)+acd595(77)+acd595(&
      &76)+acd595(75)+acd595(73)+acd595(72)
      acd595(69)=acd595(6)*acd595(69)
      acd595(70)=acd595(15)+acd595(17)
      acd595(72)=-acd595(28)*acd595(70)
      acd595(73)=acd595(22)*acd595(67)
      acd595(75)=acd595(53)*acd595(52)
      acd595(76)=acd595(14)*acd595(7)
      acd595(77)=-acd595(18)*acd595(37)
      acd595(78)=acd595(10)*acd595(46)
      acd595(80)=acd595(8)*acd595(44)
      acd595(72)=acd595(80)+acd595(78)+acd595(77)+acd595(76)-acd595(54)+acd595(&
      &75)+acd595(73)+acd595(72)
      acd595(72)=acd595(42)*acd595(72)
      acd595(68)=-acd595(42)*acd595(68)
      acd595(73)=acd595(23)*acd595(74)
      acd595(75)=acd595(33)*acd595(34)
      acd595(76)=acd595(58)*acd595(59)
      acd595(77)=acd595(55)*acd595(56)
      acd595(78)=-acd595(40)*acd595(79)
      acd595(68)=acd595(68)+acd595(78)+acd595(77)+acd595(75)+acd595(76)+acd595(&
      &73)
      acd595(68)=acd595(20)*acd595(68)
      acd595(73)=acd595(23)*acd595(67)
      acd595(75)=acd595(34)*acd595(62)
      acd595(76)=-acd595(18)*acd595(40)
      acd595(77)=acd595(10)*acd595(59)
      acd595(78)=acd595(8)*acd595(56)
      acd595(73)=acd595(78)+acd595(77)+acd595(76)-acd595(63)+acd595(75)+acd595(&
      &73)
      acd595(73)=acd595(61)*acd595(73)
      acd595(75)=-acd595(30)*acd595(70)
      acd595(76)=acd595(14)*acd595(11)
      acd595(77)=-acd595(18)*acd595(39)
      acd595(75)=acd595(77)+acd595(76)-acd595(60)+acd595(75)
      acd595(75)=acd595(58)*acd595(75)
      acd595(76)=acd595(29)*acd595(70)
      acd595(77)=acd595(14)*acd595(9)
      acd595(78)=-acd595(18)*acd595(38)
      acd595(76)=acd595(78)+acd595(77)-acd595(57)+acd595(76)
      acd595(76)=acd595(55)*acd595(76)
      acd595(77)=-acd595(30)*acd595(71)
      acd595(78)=acd595(1)*acd595(11)
      acd595(80)=-acd595(39)*acd595(79)
      acd595(77)=acd595(80)+acd595(78)+acd595(77)
      acd595(77)=acd595(10)*acd595(77)
      acd595(78)=acd595(29)*acd595(71)
      acd595(80)=acd595(1)*acd595(9)
      acd595(81)=-acd595(38)*acd595(79)
      acd595(78)=acd595(81)+acd595(80)+acd595(78)
      acd595(78)=acd595(8)*acd595(78)
      acd595(80)=-acd595(71)*acd595(67)
      acd595(70)=-acd595(70)*acd595(74)
      acd595(70)=acd595(70)+acd595(80)
      acd595(70)=acd595(16)*acd595(70)
      acd595(80)=acd595(3)*acd595(14)
      acd595(81)=acd595(18)*acd595(19)
      acd595(80)=acd595(24)+acd595(80)+acd595(81)
      acd595(74)=acd595(80)*acd595(74)
      acd595(80)=acd595(79)*acd595(19)
      acd595(81)=acd595(1)*acd595(3)
      acd595(80)=acd595(80)+acd595(81)
      acd595(67)=acd595(80)*acd595(67)
      acd595(71)=-acd595(31)*acd595(71)
      acd595(80)=-acd595(33)*acd595(35)
      acd595(81)=-acd595(1)*acd595(12)
      acd595(79)=acd595(41)*acd595(79)
      brack=acd595(67)+acd595(68)+acd595(69)+acd595(70)+acd595(71)+acd595(72)+a&
      &cd595(73)+acd595(74)+acd595(75)+acd595(76)+acd595(77)+acd595(78)+acd595(&
      &79)+acd595(80)+acd595(81)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd595
      complex(ki) :: brack
      acd595(1)=d(iv1,iv2)
      acd595(2)=dotproduct(k2,qshift)
      acd595(3)=abb595(20)
      acd595(4)=dotproduct(k3,qshift)
      acd595(5)=dotproduct(k4,qshift)
      acd595(6)=dotproduct(qshift,spvak2k7)
      acd595(7)=abb595(14)
      acd595(8)=dotproduct(qshift,spvak4k2)
      acd595(9)=abb595(10)
      acd595(10)=dotproduct(qshift,spvak4k3)
      acd595(11)=abb595(21)
      acd595(12)=dotproduct(qshift,spvak5k6)
      acd595(13)=abb595(28)
      acd595(14)=abb595(9)
      acd595(15)=k1(iv1)
      acd595(16)=k2(iv2)
      acd595(17)=abb595(41)
      acd595(18)=k3(iv2)
      acd595(19)=k4(iv2)
      acd595(20)=spvak2k7(iv2)
      acd595(21)=abb595(13)
      acd595(22)=spvak4k2(iv2)
      acd595(23)=abb595(22)
      acd595(24)=spvak4k3(iv2)
      acd595(25)=abb595(43)
      acd595(26)=k1(iv2)
      acd595(27)=k2(iv1)
      acd595(28)=k3(iv1)
      acd595(29)=k4(iv1)
      acd595(30)=spvak2k7(iv1)
      acd595(31)=spvak4k2(iv1)
      acd595(32)=spvak4k3(iv1)
      acd595(33)=k5(iv2)
      acd595(34)=abb595(39)
      acd595(35)=k6(iv2)
      acd595(36)=qshift(iv2)
      acd595(37)=abb595(29)
      acd595(38)=abb595(32)
      acd595(39)=spvak5k6(iv2)
      acd595(40)=abb595(30)
      acd595(41)=k5(iv1)
      acd595(42)=k6(iv1)
      acd595(43)=qshift(iv1)
      acd595(44)=spvak5k6(iv1)
      acd595(45)=abb595(19)
      acd595(46)=abb595(11)
      acd595(47)=abb595(47)
      acd595(48)=k7(iv1)
      acd595(49)=abb595(6)
      acd595(50)=k7(iv2)
      acd595(51)=abb595(12)
      acd595(52)=abb595(31)
      acd595(53)=abb595(33)
      acd595(54)=abb595(36)
      acd595(55)=dotproduct(qshift,spvak1k2)
      acd595(56)=abb595(23)
      acd595(57)=dotproduct(qshift,spvak1k3)
      acd595(58)=abb595(37)
      acd595(59)=abb595(16)
      acd595(60)=spvak1k2(iv2)
      acd595(61)=spvak1k3(iv2)
      acd595(62)=spvak1k6(iv2)
      acd595(63)=abb595(18)
      acd595(64)=spvak1k2(iv1)
      acd595(65)=spvak1k3(iv1)
      acd595(66)=spvak1k6(iv1)
      acd595(67)=abb595(25)
      acd595(68)=abb595(42)
      acd595(69)=acd595(58)*acd595(57)
      acd595(70)=acd595(56)*acd595(55)
      acd595(71)=acd595(53)*acd595(10)
      acd595(72)=acd595(51)*acd595(8)
      acd595(73)=-acd595(5)+acd595(2)-acd595(4)
      acd595(74)=acd595(73)*acd595(37)
      acd595(69)=acd595(71)+acd595(72)-acd595(74)-acd595(59)+acd595(69)+acd595(&
      &70)
      acd595(70)=-acd595(39)*acd595(69)
      acd595(71)=acd595(58)*acd595(61)
      acd595(72)=acd595(56)*acd595(60)
      acd595(74)=acd595(24)*acd595(53)
      acd595(75)=acd595(22)*acd595(51)
      acd595(71)=acd595(72)+acd595(71)+acd595(74)+acd595(75)
      acd595(72)=-acd595(12)*acd595(71)
      acd595(74)=acd595(37)*acd595(12)
      acd595(74)=acd595(74)+acd595(38)
      acd595(75)=-acd595(19)+acd595(16)-acd595(18)
      acd595(76)=acd595(75)*acd595(74)
      acd595(77)=acd595(33)+acd595(35)
      acd595(78)=-acd595(45)*acd595(77)
      acd595(79)=acd595(63)*acd595(62)
      acd595(80)=acd595(26)*acd595(21)
      acd595(81)=2.0_ki*acd595(36)
      acd595(82)=-acd595(7)*acd595(81)
      acd595(83)=acd595(24)*acd595(54)
      acd595(84)=acd595(22)*acd595(52)
      acd595(70)=acd595(70)+acd595(72)+acd595(84)+acd595(83)+acd595(82)+acd595(&
      &80)+acd595(79)+acd595(78)+acd595(76)
      acd595(70)=acd595(30)*acd595(70)
      acd595(69)=-acd595(44)*acd595(69)
      acd595(72)=acd595(58)*acd595(65)
      acd595(76)=acd595(56)*acd595(64)
      acd595(78)=acd595(32)*acd595(53)
      acd595(79)=acd595(31)*acd595(51)
      acd595(72)=acd595(76)+acd595(72)+acd595(78)+acd595(79)
      acd595(76)=-acd595(12)*acd595(72)
      acd595(78)=-acd595(29)+acd595(27)-acd595(28)
      acd595(74)=acd595(78)*acd595(74)
      acd595(79)=acd595(41)+acd595(42)
      acd595(80)=-acd595(45)*acd595(79)
      acd595(82)=acd595(63)*acd595(66)
      acd595(83)=acd595(15)*acd595(21)
      acd595(84)=2.0_ki*acd595(43)
      acd595(85)=-acd595(7)*acd595(84)
      acd595(86)=acd595(32)*acd595(54)
      acd595(87)=acd595(31)*acd595(52)
      acd595(69)=acd595(69)+acd595(76)+acd595(87)+acd595(86)+acd595(85)+acd595(&
      &83)+acd595(82)+acd595(80)+acd595(74)
      acd595(69)=acd595(20)*acd595(69)
      acd595(71)=-acd595(6)*acd595(71)
      acd595(74)=acd595(37)*acd595(6)
      acd595(74)=acd595(74)+acd595(40)
      acd595(76)=acd595(75)*acd595(74)
      acd595(80)=acd595(49)*acd595(50)
      acd595(82)=-acd595(13)*acd595(81)
      acd595(83)=acd595(24)*acd595(68)
      acd595(85)=acd595(22)*acd595(67)
      acd595(71)=acd595(71)+acd595(85)+acd595(83)+acd595(80)+acd595(82)+acd595(&
      &76)
      acd595(71)=acd595(44)*acd595(71)
      acd595(72)=-acd595(6)*acd595(72)
      acd595(74)=acd595(78)*acd595(74)
      acd595(76)=acd595(49)*acd595(48)
      acd595(80)=-acd595(13)*acd595(84)
      acd595(82)=acd595(32)*acd595(68)
      acd595(83)=acd595(31)*acd595(67)
      acd595(72)=acd595(72)+acd595(83)+acd595(82)+acd595(76)+acd595(80)+acd595(&
      &74)
      acd595(72)=acd595(39)*acd595(72)
      acd595(74)=-acd595(10)*acd595(11)
      acd595(76)=-acd595(8)*acd595(9)
      acd595(80)=-acd595(12)*acd595(13)
      acd595(82)=-acd595(6)*acd595(7)
      acd595(74)=acd595(82)+acd595(80)+acd595(76)+acd595(14)+acd595(74)
      acd595(76)=2.0_ki*acd595(1)
      acd595(74)=acd595(76)*acd595(74)
      acd595(76)=-acd595(47)*acd595(77)
      acd595(80)=acd595(26)*acd595(25)
      acd595(82)=-acd595(11)*acd595(81)
      acd595(76)=acd595(82)+acd595(80)+acd595(76)
      acd595(76)=acd595(32)*acd595(76)
      acd595(80)=acd595(46)*acd595(77)
      acd595(82)=acd595(26)*acd595(23)
      acd595(81)=-acd595(9)*acd595(81)
      acd595(80)=acd595(81)+acd595(82)+acd595(80)
      acd595(80)=acd595(31)*acd595(80)
      acd595(81)=-acd595(47)*acd595(79)
      acd595(82)=acd595(15)*acd595(25)
      acd595(83)=-acd595(11)*acd595(84)
      acd595(81)=acd595(83)+acd595(82)+acd595(81)
      acd595(81)=acd595(24)*acd595(81)
      acd595(82)=acd595(46)*acd595(79)
      acd595(83)=acd595(15)*acd595(23)
      acd595(84)=-acd595(9)*acd595(84)
      acd595(82)=acd595(84)+acd595(83)+acd595(82)
      acd595(82)=acd595(22)*acd595(82)
      acd595(83)=acd595(43)*acd595(75)
      acd595(84)=acd595(36)*acd595(78)
      acd595(73)=acd595(1)*acd595(73)
      acd595(73)=acd595(73)+acd595(84)+acd595(83)
      acd595(73)=acd595(3)*acd595(73)
      acd595(77)=-acd595(77)*acd595(78)
      acd595(79)=-acd595(79)*acd595(75)
      acd595(77)=acd595(79)+acd595(77)
      acd595(77)=acd595(34)*acd595(77)
      acd595(75)=acd595(75)*acd595(15)
      acd595(78)=acd595(78)*acd595(26)
      acd595(75)=acd595(78)+acd595(75)
      acd595(75)=acd595(17)*acd595(75)
      brack=acd595(69)+acd595(70)+acd595(71)+acd595(72)+2.0_ki*acd595(73)+acd59&
      &5(74)+acd595(75)+acd595(76)+acd595(77)+acd595(80)+acd595(81)+acd595(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd595
      complex(ki) :: brack
      acd595(1)=d(iv1,iv2)
      acd595(2)=k2(iv3)
      acd595(3)=abb595(20)
      acd595(4)=k3(iv3)
      acd595(5)=k4(iv3)
      acd595(6)=spvak2k7(iv3)
      acd595(7)=abb595(14)
      acd595(8)=spvak4k2(iv3)
      acd595(9)=abb595(10)
      acd595(10)=spvak4k3(iv3)
      acd595(11)=abb595(21)
      acd595(12)=spvak5k6(iv3)
      acd595(13)=abb595(28)
      acd595(14)=d(iv1,iv3)
      acd595(15)=k2(iv2)
      acd595(16)=k3(iv2)
      acd595(17)=k4(iv2)
      acd595(18)=spvak2k7(iv2)
      acd595(19)=spvak4k2(iv2)
      acd595(20)=spvak4k3(iv2)
      acd595(21)=spvak5k6(iv2)
      acd595(22)=d(iv2,iv3)
      acd595(23)=k2(iv1)
      acd595(24)=k3(iv1)
      acd595(25)=k4(iv1)
      acd595(26)=spvak2k7(iv1)
      acd595(27)=spvak4k2(iv1)
      acd595(28)=spvak4k3(iv1)
      acd595(29)=spvak5k6(iv1)
      acd595(30)=abb595(29)
      acd595(31)=abb595(12)
      acd595(32)=abb595(33)
      acd595(33)=spvak1k2(iv3)
      acd595(34)=abb595(23)
      acd595(35)=spvak1k3(iv3)
      acd595(36)=abb595(37)
      acd595(37)=spvak1k2(iv2)
      acd595(38)=spvak1k3(iv2)
      acd595(39)=spvak1k2(iv1)
      acd595(40)=spvak1k3(iv1)
      acd595(41)=-acd595(1)*acd595(6)
      acd595(42)=-acd595(14)*acd595(18)
      acd595(43)=-acd595(22)*acd595(26)
      acd595(41)=acd595(43)+acd595(41)+acd595(42)
      acd595(41)=acd595(7)*acd595(41)
      acd595(42)=-acd595(1)*acd595(12)
      acd595(43)=-acd595(14)*acd595(21)
      acd595(44)=-acd595(22)*acd595(29)
      acd595(42)=acd595(44)+acd595(42)+acd595(43)
      acd595(42)=acd595(13)*acd595(42)
      acd595(41)=acd595(41)+acd595(42)
      acd595(42)=-acd595(8)*acd595(31)
      acd595(43)=-acd595(10)*acd595(32)
      acd595(44)=-acd595(33)*acd595(34)
      acd595(45)=-acd595(35)*acd595(36)
      acd595(42)=acd595(45)+acd595(44)+acd595(43)+acd595(42)
      acd595(43)=acd595(26)*acd595(21)
      acd595(44)=acd595(29)*acd595(18)
      acd595(43)=acd595(43)+acd595(44)
      acd595(42)=acd595(43)*acd595(42)
      acd595(44)=acd595(18)*acd595(12)
      acd595(45)=acd595(21)*acd595(6)
      acd595(44)=acd595(44)+acd595(45)
      acd595(45)=-acd595(39)*acd595(34)
      acd595(46)=-acd595(40)*acd595(36)
      acd595(45)=acd595(46)+acd595(45)
      acd595(45)=acd595(44)*acd595(45)
      acd595(46)=acd595(26)*acd595(12)
      acd595(47)=acd595(29)*acd595(6)
      acd595(46)=acd595(46)+acd595(47)
      acd595(47)=-acd595(37)*acd595(34)
      acd595(48)=-acd595(38)*acd595(36)
      acd595(47)=acd595(48)+acd595(47)
      acd595(47)=acd595(46)*acd595(47)
      acd595(48)=acd595(30)*acd595(46)
      acd595(49)=2.0_ki*acd595(3)
      acd595(50)=acd595(49)*acd595(14)
      acd595(48)=acd595(48)+acd595(50)
      acd595(50)=-acd595(17)-acd595(16)+acd595(15)
      acd595(48)=acd595(48)*acd595(50)
      acd595(43)=acd595(30)*acd595(43)
      acd595(50)=acd595(49)*acd595(1)
      acd595(43)=acd595(43)+acd595(50)
      acd595(50)=-acd595(5)+acd595(2)-acd595(4)
      acd595(43)=acd595(43)*acd595(50)
      acd595(50)=acd595(30)*acd595(44)
      acd595(49)=acd595(49)*acd595(22)
      acd595(49)=acd595(49)+acd595(50)
      acd595(50)=-acd595(25)-acd595(24)+acd595(23)
      acd595(49)=acd595(49)*acd595(50)
      acd595(50)=2.0_ki*acd595(9)
      acd595(51)=-acd595(8)*acd595(50)
      acd595(52)=2.0_ki*acd595(11)
      acd595(53)=-acd595(10)*acd595(52)
      acd595(51)=acd595(53)+acd595(51)
      acd595(51)=acd595(1)*acd595(51)
      acd595(53)=-acd595(31)*acd595(46)
      acd595(54)=-acd595(14)*acd595(50)
      acd595(53)=acd595(53)+acd595(54)
      acd595(53)=acd595(19)*acd595(53)
      acd595(46)=-acd595(32)*acd595(46)
      acd595(54)=-acd595(14)*acd595(52)
      acd595(46)=acd595(46)+acd595(54)
      acd595(46)=acd595(20)*acd595(46)
      acd595(54)=-acd595(31)*acd595(44)
      acd595(50)=-acd595(22)*acd595(50)
      acd595(50)=acd595(54)+acd595(50)
      acd595(50)=acd595(27)*acd595(50)
      acd595(44)=-acd595(32)*acd595(44)
      acd595(52)=-acd595(22)*acd595(52)
      acd595(44)=acd595(44)+acd595(52)
      acd595(44)=acd595(28)*acd595(44)
      brack=2.0_ki*acd595(41)+acd595(42)+acd595(43)+acd595(44)+acd595(45)+acd59&
      &5(46)+acd595(47)+acd595(48)+acd595(49)+acd595(50)+acd595(51)+acd595(53)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd595h1
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
!---#[ subroutine reconstruct_d595:
   subroutine     reconstruct_d595(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_595:
      coeffs%coeffs_595%c0 = derivative(czip)
      coeffs%coeffs_595%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_595%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_595%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_595%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_595%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_595%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_595%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_595%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_595%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_595%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_595%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_595%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_595%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_595%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_595%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_595%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_595%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_595%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_595%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_595%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_595%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_595%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_595%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_595%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_595%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_595%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_595%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_595%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_595%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_595%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_595%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_595%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_595%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_595%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_595:
   end subroutine reconstruct_d595
!---#] subroutine reconstruct_d595:
end module     p8_cbarc_epnemumnmubarg_d595h1l1d
