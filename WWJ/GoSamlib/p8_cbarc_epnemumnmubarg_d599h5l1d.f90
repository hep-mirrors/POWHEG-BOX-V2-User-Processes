module     p8_cbarc_epnemumnmubarg_d599h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p8_cbarc_epnemumnmubarg/helicity5d599h5l1d.f90
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
   public :: derivative , reconstruct_d599
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd599
      complex(ki) :: brack
      acd599(1)=dotproduct(k2,qshift)
      acd599(2)=dotproduct(k7,qshift)
      acd599(3)=abb599(20)
      acd599(4)=dotproduct(qshift,qshift)
      acd599(5)=abb599(23)
      acd599(6)=dotproduct(qshift,spvak5k6)
      acd599(7)=dotproduct(qshift,spvak7k2)
      acd599(8)=abb599(19)
      acd599(9)=abb599(28)
      acd599(10)=dotproduct(k3,qshift)
      acd599(11)=dotproduct(k4,qshift)
      acd599(12)=dotproduct(k5,qshift)
      acd599(13)=abb599(27)
      acd599(14)=dotproduct(k6,qshift)
      acd599(15)=dotproduct(qshift,spvak1k2)
      acd599(16)=abb599(9)
      acd599(17)=dotproduct(qshift,spvak4k2)
      acd599(18)=abb599(31)
      acd599(19)=dotproduct(qshift,spvak4k3)
      acd599(20)=abb599(32)
      acd599(21)=abb599(14)
      acd599(22)=abb599(26)
      acd599(23)=abb599(15)
      acd599(24)=abb599(16)
      acd599(25)=abb599(29)
      acd599(26)=abb599(11)
      acd599(27)=abb599(18)
      acd599(28)=abb599(13)
      acd599(29)=abb599(33)
      acd599(30)=dotproduct(qshift,spvak1k3)
      acd599(31)=abb599(17)
      acd599(32)=abb599(10)
      acd599(33)=abb599(8)
      acd599(34)=abb599(30)
      acd599(35)=dotproduct(qshift,spvak1k6)
      acd599(36)=abb599(12)
      acd599(37)=dotproduct(qshift,spvak1k7)
      acd599(38)=abb599(7)
      acd599(39)=-acd599(11)+acd599(1)-acd599(10)
      acd599(40)=acd599(8)*acd599(39)
      acd599(41)=-acd599(30)*acd599(31)
      acd599(42)=-acd599(15)*acd599(27)
      acd599(43)=-acd599(19)*acd599(29)
      acd599(44)=-acd599(17)*acd599(28)
      acd599(40)=acd599(44)+acd599(43)+acd599(42)+acd599(32)+acd599(41)+acd599(&
      &40)
      acd599(40)=acd599(6)*acd599(40)
      acd599(41)=acd599(2)+acd599(14)+acd599(12)
      acd599(41)=acd599(13)*acd599(41)
      acd599(42)=-acd599(9)*acd599(39)
      acd599(43)=acd599(35)*acd599(36)
      acd599(44)=-acd599(23)*acd599(37)
      acd599(45)=acd599(19)*acd599(34)
      acd599(46)=acd599(17)*acd599(33)
      acd599(47)=-acd599(4)*acd599(22)
      acd599(40)=acd599(47)+acd599(40)+acd599(46)+acd599(45)+acd599(44)-acd599(&
      &38)+acd599(43)+acd599(42)+acd599(41)
      acd599(40)=acd599(7)*acd599(40)
      acd599(41)=-acd599(5)*acd599(39)
      acd599(42)=-acd599(15)*acd599(23)
      acd599(43)=-acd599(19)*acd599(25)
      acd599(44)=-acd599(17)*acd599(24)
      acd599(41)=acd599(44)+acd599(43)+acd599(26)+acd599(42)+acd599(41)
      acd599(41)=acd599(4)*acd599(41)
      acd599(39)=acd599(3)*acd599(39)
      acd599(42)=acd599(15)*acd599(16)
      acd599(43)=acd599(19)*acd599(20)
      acd599(44)=acd599(17)*acd599(18)
      acd599(39)=acd599(44)+acd599(43)-acd599(21)+acd599(42)+acd599(39)
      acd599(39)=acd599(2)*acd599(39)
      brack=acd599(39)+acd599(40)+acd599(41)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd599
      complex(ki) :: brack
      acd599(1)=k2(iv1)
      acd599(2)=dotproduct(k7,qshift)
      acd599(3)=abb599(20)
      acd599(4)=dotproduct(qshift,qshift)
      acd599(5)=abb599(23)
      acd599(6)=dotproduct(qshift,spvak5k6)
      acd599(7)=dotproduct(qshift,spvak7k2)
      acd599(8)=abb599(19)
      acd599(9)=abb599(28)
      acd599(10)=k3(iv1)
      acd599(11)=k4(iv1)
      acd599(12)=k5(iv1)
      acd599(13)=abb599(27)
      acd599(14)=k6(iv1)
      acd599(15)=k7(iv1)
      acd599(16)=dotproduct(k2,qshift)
      acd599(17)=dotproduct(k3,qshift)
      acd599(18)=dotproduct(k4,qshift)
      acd599(19)=dotproduct(qshift,spvak1k2)
      acd599(20)=abb599(9)
      acd599(21)=dotproduct(qshift,spvak4k2)
      acd599(22)=abb599(31)
      acd599(23)=dotproduct(qshift,spvak4k3)
      acd599(24)=abb599(32)
      acd599(25)=abb599(14)
      acd599(26)=qshift(iv1)
      acd599(27)=abb599(26)
      acd599(28)=abb599(15)
      acd599(29)=abb599(16)
      acd599(30)=abb599(29)
      acd599(31)=abb599(11)
      acd599(32)=spvak5k6(iv1)
      acd599(33)=abb599(18)
      acd599(34)=abb599(13)
      acd599(35)=abb599(33)
      acd599(36)=dotproduct(qshift,spvak1k3)
      acd599(37)=abb599(17)
      acd599(38)=abb599(10)
      acd599(39)=spvak7k2(iv1)
      acd599(40)=dotproduct(k5,qshift)
      acd599(41)=dotproduct(k6,qshift)
      acd599(42)=abb599(8)
      acd599(43)=abb599(30)
      acd599(44)=dotproduct(qshift,spvak1k6)
      acd599(45)=abb599(12)
      acd599(46)=dotproduct(qshift,spvak1k7)
      acd599(47)=abb599(7)
      acd599(48)=spvak1k2(iv1)
      acd599(49)=spvak4k2(iv1)
      acd599(50)=spvak4k3(iv1)
      acd599(51)=spvak1k3(iv1)
      acd599(52)=spvak1k6(iv1)
      acd599(53)=spvak1k7(iv1)
      acd599(54)=-acd599(18)+acd599(16)-acd599(17)
      acd599(55)=acd599(54)*acd599(8)
      acd599(56)=acd599(37)*acd599(36)
      acd599(57)=acd599(19)*acd599(33)
      acd599(58)=acd599(23)*acd599(35)
      acd599(59)=acd599(21)*acd599(34)
      acd599(55)=-acd599(55)+acd599(58)+acd599(56)+acd599(57)+acd599(59)-acd599&
      &(38)
      acd599(56)=acd599(32)*acd599(55)
      acd599(57)=acd599(37)*acd599(51)
      acd599(58)=acd599(33)*acd599(48)
      acd599(59)=acd599(50)*acd599(35)
      acd599(60)=acd599(49)*acd599(34)
      acd599(61)=-acd599(11)+acd599(1)-acd599(10)
      acd599(62)=-acd599(8)*acd599(61)
      acd599(57)=acd599(62)+acd599(60)+acd599(59)+acd599(57)+acd599(58)
      acd599(57)=acd599(6)*acd599(57)
      acd599(58)=-acd599(15)-acd599(14)-acd599(12)
      acd599(58)=acd599(13)*acd599(58)
      acd599(59)=-acd599(45)*acd599(52)
      acd599(60)=-acd599(50)*acd599(43)
      acd599(62)=-acd599(49)*acd599(42)
      acd599(63)=acd599(28)*acd599(53)
      acd599(64)=acd599(9)*acd599(61)
      acd599(65)=2.0_ki*acd599(26)
      acd599(66)=acd599(27)*acd599(65)
      acd599(56)=acd599(57)+acd599(66)+acd599(64)+acd599(63)+acd599(62)+acd599(&
      &59)+acd599(60)+acd599(56)+acd599(58)
      acd599(56)=acd599(7)*acd599(56)
      acd599(55)=acd599(6)*acd599(55)
      acd599(57)=-acd599(2)-acd599(41)-acd599(40)
      acd599(57)=acd599(13)*acd599(57)
      acd599(58)=-acd599(45)*acd599(44)
      acd599(59)=acd599(28)*acd599(46)
      acd599(60)=-acd599(23)*acd599(43)
      acd599(62)=-acd599(21)*acd599(42)
      acd599(63)=acd599(9)*acd599(54)
      acd599(64)=acd599(4)*acd599(27)
      acd599(55)=acd599(55)+acd599(64)+acd599(63)+acd599(62)+acd599(60)+acd599(&
      &59)+acd599(47)+acd599(58)+acd599(57)
      acd599(55)=acd599(39)*acd599(55)
      acd599(57)=acd599(50)*acd599(30)
      acd599(58)=acd599(49)*acd599(29)
      acd599(59)=acd599(28)*acd599(48)
      acd599(60)=acd599(5)*acd599(61)
      acd599(57)=acd599(60)+acd599(59)+acd599(57)+acd599(58)
      acd599(57)=acd599(4)*acd599(57)
      acd599(58)=-acd599(48)*acd599(20)
      acd599(59)=-acd599(50)*acd599(24)
      acd599(60)=-acd599(49)*acd599(22)
      acd599(61)=-acd599(3)*acd599(61)
      acd599(58)=acd599(61)+acd599(60)+acd599(58)+acd599(59)
      acd599(58)=acd599(2)*acd599(58)
      acd599(59)=acd599(19)*acd599(28)
      acd599(60)=acd599(23)*acd599(30)
      acd599(61)=acd599(21)*acd599(29)
      acd599(62)=acd599(5)*acd599(54)
      acd599(59)=acd599(62)+acd599(61)+acd599(60)-acd599(31)+acd599(59)
      acd599(59)=acd599(59)*acd599(65)
      acd599(60)=-acd599(19)*acd599(20)
      acd599(61)=-acd599(23)*acd599(24)
      acd599(62)=-acd599(21)*acd599(22)
      acd599(54)=-acd599(3)*acd599(54)
      acd599(54)=acd599(54)+acd599(62)+acd599(61)+acd599(25)+acd599(60)
      acd599(54)=acd599(15)*acd599(54)
      brack=acd599(54)+acd599(55)+acd599(56)+acd599(57)+acd599(58)+acd599(59)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd599
      complex(ki) :: brack
      acd599(1)=d(iv1,iv2)
      acd599(2)=dotproduct(k2,qshift)
      acd599(3)=abb599(23)
      acd599(4)=dotproduct(k3,qshift)
      acd599(5)=dotproduct(k4,qshift)
      acd599(6)=dotproduct(qshift,spvak1k2)
      acd599(7)=abb599(15)
      acd599(8)=dotproduct(qshift,spvak4k2)
      acd599(9)=abb599(16)
      acd599(10)=dotproduct(qshift,spvak4k3)
      acd599(11)=abb599(29)
      acd599(12)=dotproduct(qshift,spvak7k2)
      acd599(13)=abb599(26)
      acd599(14)=abb599(11)
      acd599(15)=k2(iv1)
      acd599(16)=k7(iv2)
      acd599(17)=abb599(20)
      acd599(18)=qshift(iv2)
      acd599(19)=spvak7k2(iv2)
      acd599(20)=dotproduct(qshift,spvak5k6)
      acd599(21)=abb599(19)
      acd599(22)=abb599(28)
      acd599(23)=spvak5k6(iv2)
      acd599(24)=k2(iv2)
      acd599(25)=k7(iv1)
      acd599(26)=qshift(iv1)
      acd599(27)=spvak7k2(iv1)
      acd599(28)=spvak5k6(iv1)
      acd599(29)=k3(iv1)
      acd599(30)=k3(iv2)
      acd599(31)=k4(iv1)
      acd599(32)=k4(iv2)
      acd599(33)=k5(iv1)
      acd599(34)=abb599(27)
      acd599(35)=k5(iv2)
      acd599(36)=k6(iv1)
      acd599(37)=k6(iv2)
      acd599(38)=spvak1k2(iv2)
      acd599(39)=abb599(9)
      acd599(40)=spvak4k2(iv2)
      acd599(41)=abb599(31)
      acd599(42)=spvak4k3(iv2)
      acd599(43)=abb599(32)
      acd599(44)=spvak1k2(iv1)
      acd599(45)=spvak4k2(iv1)
      acd599(46)=spvak4k3(iv1)
      acd599(47)=abb599(18)
      acd599(48)=abb599(13)
      acd599(49)=abb599(8)
      acd599(50)=abb599(33)
      acd599(51)=abb599(30)
      acd599(52)=dotproduct(qshift,spvak1k3)
      acd599(53)=abb599(17)
      acd599(54)=abb599(10)
      acd599(55)=spvak1k3(iv2)
      acd599(56)=spvak1k6(iv2)
      acd599(57)=abb599(12)
      acd599(58)=spvak1k7(iv2)
      acd599(59)=spvak1k3(iv1)
      acd599(60)=spvak1k6(iv1)
      acd599(61)=spvak1k7(iv1)
      acd599(62)=acd599(53)*acd599(55)
      acd599(63)=acd599(50)*acd599(42)
      acd599(64)=acd599(48)*acd599(40)
      acd599(65)=acd599(47)*acd599(38)
      acd599(62)=acd599(65)+acd599(62)+acd599(63)+acd599(64)
      acd599(63)=-acd599(20)*acd599(62)
      acd599(64)=acd599(53)*acd599(52)
      acd599(65)=acd599(50)*acd599(10)
      acd599(66)=acd599(48)*acd599(8)
      acd599(67)=acd599(47)*acd599(6)
      acd599(64)=acd599(64)+acd599(66)+acd599(67)+acd599(65)-acd599(54)
      acd599(65)=-acd599(23)*acd599(64)
      acd599(66)=-acd599(32)+acd599(24)-acd599(30)
      acd599(67)=acd599(20)*acd599(66)
      acd599(68)=-acd599(5)+acd599(2)-acd599(4)
      acd599(69)=acd599(23)*acd599(68)
      acd599(67)=acd599(67)+acd599(69)
      acd599(67)=acd599(21)*acd599(67)
      acd599(69)=acd599(16)+acd599(37)+acd599(35)
      acd599(69)=acd599(34)*acd599(69)
      acd599(70)=acd599(57)*acd599(56)
      acd599(71)=acd599(42)*acd599(51)
      acd599(72)=acd599(40)*acd599(49)
      acd599(73)=-acd599(7)*acd599(58)
      acd599(74)=-acd599(22)*acd599(66)
      acd599(75)=2.0_ki*acd599(13)
      acd599(76)=-acd599(18)*acd599(75)
      acd599(63)=acd599(67)+acd599(65)+acd599(63)+acd599(76)+acd599(74)+acd599(&
      &73)+acd599(72)+acd599(70)+acd599(71)+acd599(69)
      acd599(63)=acd599(27)*acd599(63)
      acd599(65)=acd599(53)*acd599(59)
      acd599(67)=acd599(50)*acd599(46)
      acd599(69)=acd599(48)*acd599(45)
      acd599(70)=acd599(47)*acd599(44)
      acd599(65)=acd599(67)+acd599(65)+acd599(69)+acd599(70)
      acd599(67)=-acd599(20)*acd599(65)
      acd599(64)=-acd599(28)*acd599(64)
      acd599(69)=-acd599(31)+acd599(15)-acd599(29)
      acd599(70)=acd599(20)*acd599(69)
      acd599(71)=acd599(28)*acd599(68)
      acd599(70)=acd599(70)+acd599(71)
      acd599(70)=acd599(21)*acd599(70)
      acd599(71)=acd599(25)+acd599(36)+acd599(33)
      acd599(71)=acd599(34)*acd599(71)
      acd599(72)=acd599(57)*acd599(60)
      acd599(73)=acd599(46)*acd599(51)
      acd599(74)=acd599(45)*acd599(49)
      acd599(76)=-acd599(7)*acd599(61)
      acd599(77)=-acd599(22)*acd599(69)
      acd599(78)=-acd599(26)*acd599(75)
      acd599(64)=acd599(70)+acd599(64)+acd599(67)+acd599(78)+acd599(77)+acd599(&
      &76)+acd599(74)+acd599(72)+acd599(73)+acd599(71)
      acd599(64)=acd599(19)*acd599(64)
      acd599(67)=-acd599(42)*acd599(11)
      acd599(70)=-acd599(40)*acd599(9)
      acd599(71)=-acd599(7)*acd599(38)
      acd599(67)=acd599(71)+acd599(67)+acd599(70)
      acd599(67)=acd599(26)*acd599(67)
      acd599(70)=-acd599(46)*acd599(11)
      acd599(71)=-acd599(45)*acd599(9)
      acd599(72)=-acd599(7)*acd599(44)
      acd599(70)=acd599(72)+acd599(70)+acd599(71)
      acd599(70)=acd599(18)*acd599(70)
      acd599(71)=-acd599(10)*acd599(11)
      acd599(72)=-acd599(8)*acd599(9)
      acd599(73)=-acd599(7)*acd599(6)
      acd599(71)=acd599(73)+acd599(72)+acd599(14)+acd599(71)
      acd599(71)=acd599(1)*acd599(71)
      acd599(72)=-acd599(26)*acd599(66)
      acd599(73)=-acd599(18)*acd599(69)
      acd599(68)=-acd599(1)*acd599(68)
      acd599(68)=acd599(68)+acd599(72)+acd599(73)
      acd599(68)=acd599(3)*acd599(68)
      acd599(67)=acd599(67)+acd599(70)+acd599(71)+acd599(68)
      acd599(62)=-acd599(28)*acd599(62)
      acd599(65)=-acd599(23)*acd599(65)
      acd599(68)=acd599(28)*acd599(66)
      acd599(70)=acd599(23)*acd599(69)
      acd599(68)=acd599(68)+acd599(70)
      acd599(68)=acd599(21)*acd599(68)
      acd599(70)=-acd599(1)*acd599(75)
      acd599(62)=acd599(68)+acd599(65)+acd599(70)+acd599(62)
      acd599(62)=acd599(12)*acd599(62)
      acd599(65)=acd599(38)*acd599(39)
      acd599(68)=acd599(42)*acd599(43)
      acd599(70)=acd599(40)*acd599(41)
      acd599(66)=acd599(17)*acd599(66)
      acd599(65)=acd599(66)+acd599(70)+acd599(65)+acd599(68)
      acd599(65)=acd599(25)*acd599(65)
      acd599(66)=acd599(44)*acd599(39)
      acd599(68)=acd599(46)*acd599(43)
      acd599(70)=acd599(45)*acd599(41)
      acd599(69)=acd599(17)*acd599(69)
      acd599(66)=acd599(69)+acd599(70)+acd599(66)+acd599(68)
      acd599(66)=acd599(16)*acd599(66)
      brack=acd599(62)+acd599(63)+acd599(64)+acd599(65)+acd599(66)+2.0_ki*acd59&
      &9(67)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd599
      complex(ki) :: brack
      acd599(1)=d(iv1,iv2)
      acd599(2)=k2(iv3)
      acd599(3)=abb599(23)
      acd599(4)=k3(iv3)
      acd599(5)=k4(iv3)
      acd599(6)=spvak1k2(iv3)
      acd599(7)=abb599(15)
      acd599(8)=spvak4k2(iv3)
      acd599(9)=abb599(16)
      acd599(10)=spvak4k3(iv3)
      acd599(11)=abb599(29)
      acd599(12)=spvak7k2(iv3)
      acd599(13)=abb599(26)
      acd599(14)=d(iv1,iv3)
      acd599(15)=k2(iv2)
      acd599(16)=k3(iv2)
      acd599(17)=k4(iv2)
      acd599(18)=spvak1k2(iv2)
      acd599(19)=spvak4k2(iv2)
      acd599(20)=spvak4k3(iv2)
      acd599(21)=spvak7k2(iv2)
      acd599(22)=d(iv2,iv3)
      acd599(23)=k2(iv1)
      acd599(24)=k3(iv1)
      acd599(25)=k4(iv1)
      acd599(26)=spvak1k2(iv1)
      acd599(27)=spvak4k2(iv1)
      acd599(28)=spvak4k3(iv1)
      acd599(29)=spvak7k2(iv1)
      acd599(30)=spvak5k6(iv3)
      acd599(31)=abb599(19)
      acd599(32)=spvak5k6(iv2)
      acd599(33)=spvak5k6(iv1)
      acd599(34)=abb599(18)
      acd599(35)=abb599(13)
      acd599(36)=abb599(33)
      acd599(37)=spvak1k3(iv3)
      acd599(38)=abb599(17)
      acd599(39)=spvak1k3(iv2)
      acd599(40)=spvak1k3(iv1)
      acd599(41)=acd599(6)*acd599(34)
      acd599(42)=acd599(8)*acd599(35)
      acd599(43)=acd599(10)*acd599(36)
      acd599(44)=acd599(37)*acd599(38)
      acd599(41)=acd599(44)+acd599(43)+acd599(42)+acd599(41)
      acd599(42)=acd599(32)*acd599(29)
      acd599(43)=acd599(33)*acd599(21)
      acd599(42)=acd599(42)+acd599(43)
      acd599(41)=acd599(42)*acd599(41)
      acd599(43)=acd599(30)*acd599(29)
      acd599(44)=acd599(33)*acd599(12)
      acd599(43)=acd599(43)+acd599(44)
      acd599(44)=acd599(39)*acd599(43)
      acd599(45)=acd599(30)*acd599(21)
      acd599(46)=acd599(32)*acd599(12)
      acd599(45)=acd599(45)+acd599(46)
      acd599(46)=acd599(40)*acd599(45)
      acd599(44)=acd599(46)+acd599(44)
      acd599(44)=acd599(38)*acd599(44)
      acd599(46)=2.0_ki*acd599(7)
      acd599(47)=acd599(6)*acd599(46)
      acd599(48)=2.0_ki*acd599(9)
      acd599(49)=acd599(8)*acd599(48)
      acd599(50)=2.0_ki*acd599(11)
      acd599(51)=acd599(10)*acd599(50)
      acd599(47)=acd599(51)+acd599(49)+acd599(47)
      acd599(47)=acd599(1)*acd599(47)
      acd599(49)=acd599(1)*acd599(12)
      acd599(51)=acd599(14)*acd599(21)
      acd599(52)=acd599(22)*acd599(29)
      acd599(49)=acd599(52)+acd599(49)+acd599(51)
      acd599(49)=acd599(13)*acd599(49)
      acd599(51)=-acd599(31)*acd599(43)
      acd599(52)=2.0_ki*acd599(3)
      acd599(53)=acd599(52)*acd599(14)
      acd599(51)=acd599(53)+acd599(51)
      acd599(53)=-acd599(17)-acd599(16)+acd599(15)
      acd599(51)=acd599(51)*acd599(53)
      acd599(42)=acd599(31)*acd599(42)
      acd599(53)=acd599(52)*acd599(1)
      acd599(42)=acd599(42)-acd599(53)
      acd599(53)=acd599(5)-acd599(2)+acd599(4)
      acd599(42)=acd599(42)*acd599(53)
      acd599(53)=-acd599(31)*acd599(45)
      acd599(52)=acd599(52)*acd599(22)
      acd599(52)=acd599(52)+acd599(53)
      acd599(53)=-acd599(25)-acd599(24)+acd599(23)
      acd599(52)=acd599(52)*acd599(53)
      acd599(53)=acd599(34)*acd599(43)
      acd599(54)=acd599(14)*acd599(46)
      acd599(53)=acd599(53)+acd599(54)
      acd599(53)=acd599(18)*acd599(53)
      acd599(54)=acd599(35)*acd599(43)
      acd599(55)=acd599(14)*acd599(48)
      acd599(54)=acd599(54)+acd599(55)
      acd599(54)=acd599(19)*acd599(54)
      acd599(43)=acd599(36)*acd599(43)
      acd599(55)=acd599(14)*acd599(50)
      acd599(43)=acd599(43)+acd599(55)
      acd599(43)=acd599(20)*acd599(43)
      acd599(55)=acd599(34)*acd599(45)
      acd599(46)=acd599(22)*acd599(46)
      acd599(46)=acd599(55)+acd599(46)
      acd599(46)=acd599(26)*acd599(46)
      acd599(55)=acd599(35)*acd599(45)
      acd599(48)=acd599(22)*acd599(48)
      acd599(48)=acd599(55)+acd599(48)
      acd599(48)=acd599(27)*acd599(48)
      acd599(45)=acd599(36)*acd599(45)
      acd599(50)=acd599(22)*acd599(50)
      acd599(45)=acd599(45)+acd599(50)
      acd599(45)=acd599(28)*acd599(45)
      brack=acd599(41)+acd599(42)+acd599(43)+acd599(44)+acd599(45)+acd599(46)+a&
      &cd599(47)+acd599(48)+2.0_ki*acd599(49)+acd599(51)+acd599(52)+acd599(53)+&
      &acd599(54)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd599h5
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
!---#[ subroutine reconstruct_d599:
   subroutine     reconstruct_d599(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_599:
      coeffs%coeffs_599%c0 = derivative(czip)
      coeffs%coeffs_599%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_599%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_599%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_599%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_599%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_599%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_599%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_599%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_599%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_599%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_599%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_599%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_599%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_599%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_599%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_599%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_599%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_599%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_599%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_599%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_599%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_599%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_599%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_599%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_599%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_599%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_599%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_599%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_599%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_599%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_599%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_599%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_599%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_599%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_599:
   end subroutine reconstruct_d599
!---#] subroutine reconstruct_d599:
end module     p8_cbarc_epnemumnmubarg_d599h5l1d
