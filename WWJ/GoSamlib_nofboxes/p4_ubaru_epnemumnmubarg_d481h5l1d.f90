module     p4_ubaru_epnemumnmubarg_d481h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5d481h5l1d.f90
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
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d481
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd481
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd481
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd481
      complex(ki) :: brack
      acd481(1)=d(iv1,iv2)
      acd481(2)=abb481(9)
      acd481(3)=k1(iv1)
      acd481(4)=spvak7k2(iv2)
      acd481(5)=abb481(11)
      acd481(6)=k1(iv2)
      acd481(7)=spvak7k2(iv1)
      acd481(8)=k7(iv1)
      acd481(9)=abb481(24)
      acd481(10)=spvak4k2(iv2)
      acd481(11)=abb481(8)
      acd481(12)=k7(iv2)
      acd481(13)=spvak4k2(iv1)
      acd481(14)=abb481(26)
      acd481(15)=abb481(14)
      acd481(16)=spvak1k2(iv2)
      acd481(17)=abb481(16)
      acd481(18)=spvak1k6(iv2)
      acd481(19)=abb481(7)
      acd481(20)=spvak3k2(iv2)
      acd481(21)=abb481(42)
      acd481(22)=spvak1k2(iv1)
      acd481(23)=spvak1k6(iv1)
      acd481(24)=spvak3k2(iv1)
      acd481(25)=acd481(21)*acd481(24)
      acd481(26)=acd481(19)*acd481(23)
      acd481(27)=acd481(17)*acd481(22)
      acd481(28)=acd481(13)*acd481(15)
      acd481(29)=acd481(8)*acd481(9)
      acd481(30)=acd481(5)*acd481(3)
      acd481(31)=acd481(7)*acd481(14)
      acd481(25)=2.0_ki*acd481(31)+acd481(30)+acd481(29)+acd481(28)+acd481(27)+&
      &acd481(25)+acd481(26)
      acd481(25)=acd481(4)*acd481(25)
      acd481(26)=acd481(21)*acd481(20)
      acd481(27)=acd481(19)*acd481(18)
      acd481(28)=acd481(17)*acd481(16)
      acd481(29)=acd481(10)*acd481(15)
      acd481(30)=acd481(9)*acd481(12)
      acd481(31)=acd481(5)*acd481(6)
      acd481(26)=acd481(31)+acd481(30)+acd481(29)+acd481(28)+acd481(26)+acd481(&
      &27)
      acd481(26)=acd481(7)*acd481(26)
      acd481(27)=acd481(12)*acd481(13)
      acd481(28)=acd481(8)*acd481(10)
      acd481(27)=acd481(28)+acd481(27)
      acd481(27)=acd481(11)*acd481(27)
      acd481(28)=acd481(1)*acd481(2)
      brack=acd481(25)+acd481(26)+acd481(27)+2.0_ki*acd481(28)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(88) :: acd481
      complex(ki) :: brack
      acd481(1)=d(iv1,iv2)
      acd481(2)=k3(iv3)
      acd481(3)=abb481(21)
      acd481(4)=k4(iv3)
      acd481(5)=k7(iv3)
      acd481(6)=spvak4k2(iv3)
      acd481(7)=abb481(6)
      acd481(8)=spvak4k3(iv3)
      acd481(9)=abb481(38)
      acd481(10)=spvak5k6(iv3)
      acd481(11)=abb481(30)
      acd481(12)=spvak7k2(iv3)
      acd481(13)=abb481(12)
      acd481(14)=d(iv1,iv3)
      acd481(15)=k3(iv2)
      acd481(16)=k4(iv2)
      acd481(17)=k7(iv2)
      acd481(18)=spvak4k2(iv2)
      acd481(19)=spvak4k3(iv2)
      acd481(20)=spvak5k6(iv2)
      acd481(21)=spvak7k2(iv2)
      acd481(22)=d(iv2,iv3)
      acd481(23)=k3(iv1)
      acd481(24)=k4(iv1)
      acd481(25)=k7(iv1)
      acd481(26)=spvak4k2(iv1)
      acd481(27)=spvak4k3(iv1)
      acd481(28)=spvak5k6(iv1)
      acd481(29)=spvak7k2(iv1)
      acd481(30)=k1(iv1)
      acd481(31)=abb481(39)
      acd481(32)=k1(iv2)
      acd481(33)=k1(iv3)
      acd481(34)=k2(iv1)
      acd481(35)=k2(iv2)
      acd481(36)=k2(iv3)
      acd481(37)=abb481(18)
      acd481(38)=spvak1k6(iv3)
      acd481(39)=abb481(20)
      acd481(40)=spvak5k2(iv3)
      acd481(41)=abb481(36)
      acd481(42)=spvak1k6(iv2)
      acd481(43)=spvak5k2(iv2)
      acd481(44)=spvak1k6(iv1)
      acd481(45)=spvak5k2(iv1)
      acd481(46)=abb481(19)
      acd481(47)=abb481(31)
      acd481(48)=abb481(41)
      acd481(49)=abb481(34)
      acd481(50)=abb481(10)
      acd481(51)=abb481(37)
      acd481(52)=abb481(40)
      acd481(53)=spvak1k2(iv3)
      acd481(54)=abb481(17)
      acd481(55)=spvak3k2(iv3)
      acd481(56)=abb481(13)
      acd481(57)=spvak1k2(iv2)
      acd481(58)=spvak3k2(iv2)
      acd481(59)=spvak1k2(iv1)
      acd481(60)=spvak3k2(iv1)
      acd481(61)=abb481(35)
      acd481(62)=spvak1k3(iv3)
      acd481(63)=abb481(25)
      acd481(64)=spvak1k7(iv3)
      acd481(65)=abb481(43)
      acd481(66)=spvak1k3(iv2)
      acd481(67)=spvak1k7(iv2)
      acd481(68)=spvak1k3(iv1)
      acd481(69)=spvak1k7(iv1)
      acd481(70)=acd481(32)-acd481(35)
      acd481(70)=acd481(70)*acd481(31)
      acd481(71)=acd481(56)*acd481(58)
      acd481(72)=acd481(54)*acd481(57)
      acd481(73)=acd481(43)*acd481(52)
      acd481(74)=acd481(42)*acd481(51)
      acd481(75)=acd481(18)*acd481(48)
      acd481(70)=-acd481(71)-acd481(72)-acd481(73)-acd481(74)+acd481(70)-acd481&
      &(75)
      acd481(71)=-acd481(27)*acd481(70)
      acd481(72)=acd481(30)-acd481(34)
      acd481(72)=acd481(72)*acd481(31)
      acd481(73)=acd481(56)*acd481(60)
      acd481(74)=acd481(54)*acd481(59)
      acd481(75)=acd481(45)*acd481(52)
      acd481(76)=acd481(44)*acd481(51)
      acd481(77)=acd481(26)*acd481(48)
      acd481(72)=-acd481(73)-acd481(74)-acd481(75)-acd481(76)+acd481(72)-acd481&
      &(77)
      acd481(73)=-acd481(19)*acd481(72)
      acd481(74)=acd481(65)*acd481(67)
      acd481(75)=acd481(63)*acd481(66)
      acd481(76)=acd481(17)*acd481(47)
      acd481(77)=acd481(18)*acd481(49)
      acd481(74)=acd481(77)+acd481(76)+acd481(74)+acd481(75)
      acd481(75)=acd481(28)*acd481(74)
      acd481(76)=acd481(65)*acd481(69)
      acd481(77)=acd481(63)*acd481(68)
      acd481(78)=acd481(25)*acd481(47)
      acd481(79)=acd481(26)*acd481(49)
      acd481(76)=acd481(79)+acd481(78)+acd481(76)+acd481(77)
      acd481(77)=acd481(20)*acd481(76)
      acd481(78)=acd481(17)+acd481(15)+acd481(16)
      acd481(79)=acd481(45)*acd481(78)
      acd481(80)=acd481(25)+acd481(23)+acd481(24)
      acd481(81)=acd481(43)*acd481(80)
      acd481(79)=acd481(81)+acd481(79)
      acd481(79)=acd481(41)*acd481(79)
      acd481(81)=-acd481(44)*acd481(78)
      acd481(82)=-acd481(42)*acd481(80)
      acd481(81)=acd481(82)+acd481(81)
      acd481(81)=acd481(39)*acd481(81)
      acd481(82)=-acd481(26)*acd481(78)
      acd481(83)=-acd481(18)*acd481(80)
      acd481(82)=acd481(82)+acd481(83)
      acd481(82)=acd481(37)*acd481(82)
      acd481(83)=acd481(20)*acd481(61)
      acd481(84)=acd481(19)*acd481(50)
      acd481(83)=acd481(83)+acd481(84)
      acd481(84)=2.0_ki*acd481(29)
      acd481(83)=acd481(83)*acd481(84)
      acd481(85)=acd481(28)*acd481(61)
      acd481(86)=acd481(27)*acd481(50)
      acd481(85)=acd481(85)+acd481(86)
      acd481(85)=acd481(21)*acd481(85)
      acd481(86)=2.0_ki*acd481(1)
      acd481(87)=acd481(13)*acd481(86)
      acd481(71)=2.0_ki*acd481(85)+acd481(83)+acd481(82)+acd481(81)+acd481(79)+&
      &acd481(73)+acd481(71)+acd481(87)+acd481(77)+acd481(75)
      acd481(71)=acd481(12)*acd481(71)
      acd481(73)=acd481(33)-acd481(36)
      acd481(73)=acd481(73)*acd481(31)
      acd481(75)=acd481(56)*acd481(55)
      acd481(77)=acd481(54)*acd481(53)
      acd481(79)=acd481(40)*acd481(52)
      acd481(81)=acd481(38)*acd481(51)
      acd481(82)=acd481(6)*acd481(48)
      acd481(73)=-acd481(75)-acd481(77)-acd481(79)-acd481(81)+acd481(73)-acd481&
      &(82)
      acd481(75)=-acd481(27)*acd481(73)
      acd481(72)=-acd481(8)*acd481(72)
      acd481(77)=acd481(65)*acd481(64)
      acd481(79)=acd481(63)*acd481(62)
      acd481(81)=acd481(5)*acd481(47)
      acd481(82)=acd481(6)*acd481(49)
      acd481(77)=acd481(82)+acd481(81)+acd481(77)+acd481(79)
      acd481(79)=acd481(28)*acd481(77)
      acd481(76)=acd481(10)*acd481(76)
      acd481(81)=acd481(5)+acd481(2)+acd481(4)
      acd481(82)=acd481(45)*acd481(81)
      acd481(83)=acd481(40)*acd481(80)
      acd481(82)=acd481(83)+acd481(82)
      acd481(82)=acd481(41)*acd481(82)
      acd481(83)=-acd481(44)*acd481(81)
      acd481(85)=-acd481(38)*acd481(80)
      acd481(83)=acd481(85)+acd481(83)
      acd481(83)=acd481(39)*acd481(83)
      acd481(85)=-acd481(26)*acd481(81)
      acd481(87)=-acd481(6)*acd481(80)
      acd481(85)=acd481(85)+acd481(87)
      acd481(85)=acd481(37)*acd481(85)
      acd481(87)=acd481(10)*acd481(61)
      acd481(88)=acd481(8)*acd481(50)
      acd481(87)=acd481(87)+acd481(88)
      acd481(84)=acd481(87)*acd481(84)
      acd481(87)=2.0_ki*acd481(14)
      acd481(88)=acd481(13)*acd481(87)
      acd481(72)=acd481(84)+acd481(85)+acd481(83)+acd481(82)+acd481(72)+acd481(&
      &75)+acd481(88)+acd481(76)+acd481(79)
      acd481(72)=acd481(21)*acd481(72)
      acd481(73)=-acd481(19)*acd481(73)
      acd481(70)=-acd481(8)*acd481(70)
      acd481(75)=acd481(20)*acd481(77)
      acd481(74)=acd481(10)*acd481(74)
      acd481(76)=acd481(43)*acd481(81)
      acd481(77)=acd481(40)*acd481(78)
      acd481(76)=acd481(77)+acd481(76)
      acd481(76)=acd481(41)*acd481(76)
      acd481(77)=-acd481(42)*acd481(81)
      acd481(79)=-acd481(38)*acd481(78)
      acd481(77)=acd481(79)+acd481(77)
      acd481(77)=acd481(39)*acd481(77)
      acd481(79)=-acd481(18)*acd481(81)
      acd481(82)=-acd481(6)*acd481(78)
      acd481(79)=acd481(79)+acd481(82)
      acd481(79)=acd481(37)*acd481(79)
      acd481(82)=2.0_ki*acd481(22)
      acd481(83)=acd481(13)*acd481(82)
      acd481(70)=acd481(79)+acd481(77)+acd481(76)+acd481(70)+acd481(73)+acd481(&
      &83)+acd481(74)+acd481(75)
      acd481(70)=acd481(29)*acd481(70)
      acd481(73)=acd481(28)*acd481(22)
      acd481(74)=acd481(20)*acd481(14)
      acd481(75)=acd481(10)*acd481(1)
      acd481(73)=acd481(75)+acd481(74)+acd481(73)
      acd481(73)=acd481(11)*acd481(73)
      acd481(74)=-acd481(22)*acd481(80)
      acd481(75)=-acd481(14)*acd481(78)
      acd481(76)=-acd481(1)*acd481(81)
      acd481(74)=acd481(76)+acd481(75)+acd481(74)
      acd481(74)=acd481(3)*acd481(74)
      acd481(73)=acd481(74)+acd481(73)
      acd481(74)=acd481(27)*acd481(82)
      acd481(75)=acd481(19)*acd481(87)
      acd481(76)=acd481(8)*acd481(86)
      acd481(74)=acd481(76)+acd481(75)+acd481(74)
      acd481(74)=acd481(9)*acd481(74)
      acd481(75)=acd481(20)*acd481(5)
      acd481(76)=acd481(10)*acd481(17)
      acd481(75)=acd481(76)+acd481(75)
      acd481(75)=acd481(46)*acd481(75)
      acd481(76)=acd481(7)*acd481(82)
      acd481(75)=acd481(76)+acd481(75)
      acd481(75)=acd481(26)*acd481(75)
      acd481(76)=acd481(28)*acd481(5)
      acd481(77)=acd481(10)*acd481(25)
      acd481(76)=acd481(77)+acd481(76)
      acd481(76)=acd481(46)*acd481(76)
      acd481(77)=acd481(7)*acd481(87)
      acd481(76)=acd481(77)+acd481(76)
      acd481(76)=acd481(18)*acd481(76)
      acd481(77)=acd481(28)*acd481(17)
      acd481(78)=acd481(20)*acd481(25)
      acd481(77)=acd481(78)+acd481(77)
      acd481(77)=acd481(46)*acd481(77)
      acd481(78)=acd481(7)*acd481(86)
      acd481(77)=acd481(78)+acd481(77)
      acd481(77)=acd481(6)*acd481(77)
      brack=acd481(70)+acd481(71)+acd481(72)+2.0_ki*acd481(73)+acd481(74)+acd48&
      &1(75)+acd481(76)+acd481(77)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd481
      complex(ki) :: brack
      acd481(1)=d(iv1,iv2)
      acd481(2)=d(iv3,iv4)
      acd481(3)=abb481(23)
      acd481(4)=spvak1k6(iv3)
      acd481(5)=spvak7k2(iv4)
      acd481(6)=abb481(32)
      acd481(7)=spvak1k6(iv4)
      acd481(8)=spvak7k2(iv3)
      acd481(9)=spvak4k2(iv4)
      acd481(10)=abb481(13)
      acd481(11)=spvak5k6(iv4)
      acd481(12)=abb481(33)
      acd481(13)=spvak5k2(iv4)
      acd481(14)=abb481(29)
      acd481(15)=spvak4k2(iv3)
      acd481(16)=spvak5k6(iv3)
      acd481(17)=spvak5k2(iv3)
      acd481(18)=abb481(15)
      acd481(19)=d(iv1,iv3)
      acd481(20)=d(iv2,iv4)
      acd481(21)=spvak1k6(iv2)
      acd481(22)=spvak7k2(iv2)
      acd481(23)=spvak4k2(iv2)
      acd481(24)=spvak5k6(iv2)
      acd481(25)=spvak5k2(iv2)
      acd481(26)=d(iv1,iv4)
      acd481(27)=d(iv2,iv3)
      acd481(28)=spvak1k6(iv1)
      acd481(29)=spvak7k2(iv1)
      acd481(30)=spvak4k2(iv1)
      acd481(31)=spvak5k6(iv1)
      acd481(32)=spvak5k2(iv1)
      acd481(33)=spvak1k2(iv3)
      acd481(34)=spvak4k3(iv4)
      acd481(35)=abb481(22)
      acd481(36)=spvak1k2(iv4)
      acd481(37)=spvak4k3(iv3)
      acd481(38)=spvak1k2(iv2)
      acd481(39)=spvak4k3(iv2)
      acd481(40)=spvak1k2(iv1)
      acd481(41)=spvak4k3(iv1)
      acd481(42)=acd481(10)*acd481(8)
      acd481(43)=acd481(18)*acd481(16)
      acd481(42)=acd481(42)-acd481(43)
      acd481(43)=acd481(1)*acd481(42)
      acd481(44)=acd481(10)*acd481(22)
      acd481(45)=acd481(24)*acd481(18)
      acd481(44)=acd481(44)-acd481(45)
      acd481(45)=acd481(19)*acd481(44)
      acd481(46)=acd481(10)*acd481(29)
      acd481(47)=acd481(31)*acd481(18)
      acd481(46)=acd481(46)-acd481(47)
      acd481(47)=acd481(27)*acd481(46)
      acd481(43)=acd481(47)+acd481(43)+acd481(45)
      acd481(43)=acd481(9)*acd481(43)
      acd481(45)=acd481(10)*acd481(5)
      acd481(47)=acd481(18)*acd481(11)
      acd481(45)=acd481(45)-acd481(47)
      acd481(47)=acd481(1)*acd481(45)
      acd481(48)=acd481(20)*acd481(46)
      acd481(49)=acd481(26)*acd481(44)
      acd481(47)=acd481(49)+acd481(47)+acd481(48)
      acd481(47)=acd481(15)*acd481(47)
      acd481(46)=acd481(2)*acd481(46)
      acd481(48)=acd481(19)*acd481(45)
      acd481(49)=acd481(26)*acd481(42)
      acd481(46)=acd481(49)+acd481(46)+acd481(48)
      acd481(46)=acd481(23)*acd481(46)
      acd481(44)=acd481(2)*acd481(44)
      acd481(42)=acd481(20)*acd481(42)
      acd481(45)=acd481(27)*acd481(45)
      acd481(42)=acd481(45)+acd481(44)+acd481(42)
      acd481(42)=acd481(30)*acd481(42)
      acd481(44)=acd481(1)*acd481(8)
      acd481(45)=acd481(19)*acd481(22)
      acd481(48)=acd481(27)*acd481(29)
      acd481(44)=acd481(48)+acd481(44)+acd481(45)
      acd481(45)=acd481(7)*acd481(6)
      acd481(48)=-acd481(13)*acd481(14)
      acd481(45)=acd481(45)+acd481(48)
      acd481(44)=acd481(44)*acd481(45)
      acd481(45)=acd481(1)*acd481(5)
      acd481(48)=acd481(20)*acd481(29)
      acd481(49)=acd481(26)*acd481(22)
      acd481(45)=acd481(49)+acd481(45)+acd481(48)
      acd481(48)=acd481(4)*acd481(6)*acd481(45)
      acd481(45)=-acd481(17)*acd481(14)*acd481(45)
      acd481(49)=acd481(2)*acd481(29)
      acd481(50)=acd481(19)*acd481(5)
      acd481(51)=acd481(26)*acd481(8)
      acd481(49)=acd481(51)+acd481(49)+acd481(50)
      acd481(50)=acd481(21)*acd481(6)*acd481(49)
      acd481(49)=-acd481(25)*acd481(14)*acd481(49)
      acd481(51)=acd481(2)*acd481(22)
      acd481(52)=acd481(20)*acd481(8)
      acd481(53)=acd481(27)*acd481(5)
      acd481(51)=acd481(53)+acd481(51)+acd481(52)
      acd481(52)=acd481(28)*acd481(6)*acd481(51)
      acd481(51)=-acd481(32)*acd481(14)*acd481(51)
      acd481(53)=acd481(12)*acd481(11)
      acd481(54)=acd481(8)*acd481(53)
      acd481(55)=acd481(16)*acd481(12)
      acd481(56)=acd481(5)*acd481(55)
      acd481(54)=acd481(54)+acd481(56)
      acd481(54)=acd481(1)*acd481(54)
      acd481(56)=acd481(24)*acd481(12)
      acd481(57)=acd481(29)*acd481(56)
      acd481(58)=acd481(31)*acd481(12)
      acd481(59)=acd481(22)*acd481(58)
      acd481(57)=acd481(57)+acd481(59)
      acd481(57)=acd481(2)*acd481(57)
      acd481(59)=acd481(22)*acd481(53)
      acd481(60)=acd481(5)*acd481(56)
      acd481(59)=acd481(59)+acd481(60)
      acd481(59)=acd481(19)*acd481(59)
      acd481(60)=acd481(29)*acd481(55)
      acd481(61)=acd481(8)*acd481(58)
      acd481(60)=acd481(60)+acd481(61)
      acd481(60)=acd481(20)*acd481(60)
      acd481(55)=acd481(22)*acd481(55)
      acd481(56)=acd481(8)*acd481(56)
      acd481(55)=acd481(55)+acd481(56)
      acd481(55)=acd481(26)*acd481(55)
      acd481(53)=acd481(29)*acd481(53)
      acd481(56)=acd481(5)*acd481(58)
      acd481(53)=acd481(53)+acd481(56)
      acd481(53)=acd481(27)*acd481(53)
      acd481(42)=acd481(51)+acd481(45)+acd481(50)+acd481(49)+acd481(52)+acd481(&
      &44)+acd481(48)+acd481(42)+acd481(46)+acd481(47)+acd481(43)+acd481(53)+ac&
      &d481(55)+acd481(60)+acd481(59)+acd481(54)+acd481(57)
      acd481(43)=acd481(24)*acd481(35)
      acd481(44)=acd481(43)*acd481(8)
      acd481(45)=acd481(16)*acd481(35)
      acd481(46)=acd481(45)*acd481(22)
      acd481(44)=acd481(44)+acd481(46)
      acd481(46)=-acd481(34)*acd481(44)
      acd481(47)=acd481(43)*acd481(5)
      acd481(48)=acd481(11)*acd481(35)
      acd481(49)=acd481(48)*acd481(22)
      acd481(47)=acd481(47)+acd481(49)
      acd481(49)=-acd481(37)*acd481(47)
      acd481(50)=acd481(45)*acd481(5)
      acd481(51)=acd481(48)*acd481(8)
      acd481(50)=acd481(50)+acd481(51)
      acd481(51)=-acd481(39)*acd481(50)
      acd481(46)=acd481(51)+acd481(46)+acd481(49)
      acd481(46)=acd481(40)*acd481(46)
      acd481(47)=-acd481(33)*acd481(47)
      acd481(44)=-acd481(36)*acd481(44)
      acd481(49)=-acd481(38)*acd481(50)
      acd481(44)=acd481(49)+acd481(47)+acd481(44)
      acd481(44)=acd481(41)*acd481(44)
      acd481(47)=-acd481(34)*acd481(33)
      acd481(49)=-acd481(37)*acd481(36)
      acd481(47)=acd481(49)+acd481(47)
      acd481(49)=acd481(31)*acd481(35)
      acd481(50)=acd481(49)*acd481(22)
      acd481(43)=acd481(43)*acd481(29)
      acd481(43)=acd481(50)+acd481(43)
      acd481(43)=acd481(43)*acd481(47)
      acd481(47)=acd481(49)*acd481(8)
      acd481(45)=acd481(45)*acd481(29)
      acd481(45)=acd481(47)+acd481(45)
      acd481(47)=-acd481(34)*acd481(45)
      acd481(49)=acd481(49)*acd481(5)
      acd481(48)=acd481(48)*acd481(29)
      acd481(48)=acd481(49)+acd481(48)
      acd481(49)=-acd481(37)*acd481(48)
      acd481(47)=acd481(47)+acd481(49)
      acd481(47)=acd481(38)*acd481(47)
      acd481(48)=-acd481(33)*acd481(48)
      acd481(45)=-acd481(36)*acd481(45)
      acd481(45)=acd481(48)+acd481(45)
      acd481(45)=acd481(39)*acd481(45)
      acd481(48)=acd481(2)*acd481(1)
      acd481(49)=acd481(20)*acd481(19)
      acd481(50)=acd481(27)*acd481(26)
      acd481(48)=acd481(50)+acd481(48)+acd481(49)
      acd481(48)=acd481(3)*acd481(48)
      brack=2.0_ki*acd481(42)+acd481(43)+acd481(44)+acd481(45)+acd481(46)+acd48&
      &1(47)+8.0_ki*acd481(48)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd481h5
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = 0
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d481:
   subroutine     reconstruct_d481(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_481:
      coeffs%coeffs_481%c0 = derivative(czip)
      coeffs%coeffs_481%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_481%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_481%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_481%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_481%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_481%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_481%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_481%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_481%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_481%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_481%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_481%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_481%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_481%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_481%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_481%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_481%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_481%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_481%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_481%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_481%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_481%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_481%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_481%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_481%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_481%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_481%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_481%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_481%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_481%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_481%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_481%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_481%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_481%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_481%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_481%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_481%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_481%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_481%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_481%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_481%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_481%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_481%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_481%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_481%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_481%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_481%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_481%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_481%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_481%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_481%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_481%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_481%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_481%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_481%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_481%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_481%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_481%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_481%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_481%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_481%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_481%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_481%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_481%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_481%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_481%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_481%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_481%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_481%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_481:
   end subroutine reconstruct_d481
!---#] subroutine reconstruct_d481:
end module     p4_ubaru_epnemumnmubarg_d481h5l1d
