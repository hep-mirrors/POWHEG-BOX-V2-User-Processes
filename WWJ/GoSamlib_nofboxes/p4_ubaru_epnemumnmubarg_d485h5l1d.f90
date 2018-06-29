module     p4_ubaru_epnemumnmubarg_d485h5l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity5d485h5l1d.f90
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
   public :: derivative , reconstruct_d485
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd485
      complex(ki) :: brack
      acd485(1)=abb485(22)
      brack=acd485(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(19) :: acd485
      complex(ki) :: brack
      acd485(1)=k2(iv1)
      acd485(2)=abb485(27)
      acd485(3)=k3(iv1)
      acd485(4)=abb485(25)
      acd485(5)=k4(iv1)
      acd485(6)=k7(iv1)
      acd485(7)=abb485(23)
      acd485(8)=spvak4k3(iv1)
      acd485(9)=abb485(17)
      acd485(10)=spvak5k6(iv1)
      acd485(11)=abb485(21)
      acd485(12)=spvak7k2(iv1)
      acd485(13)=abb485(5)
      acd485(14)=-acd485(5)-acd485(3)
      acd485(14)=acd485(4)*acd485(14)
      acd485(15)=-acd485(2)*acd485(1)
      acd485(16)=-acd485(7)*acd485(6)
      acd485(17)=-acd485(9)*acd485(8)
      acd485(18)=-acd485(11)*acd485(10)
      acd485(19)=-acd485(13)*acd485(12)
      brack=acd485(14)+acd485(15)+acd485(16)+acd485(17)+acd485(18)+acd485(19)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd485
      complex(ki) :: brack
      acd485(1)=d(iv1,iv2)
      acd485(2)=abb485(12)
      acd485(3)=k1(iv1)
      acd485(4)=spvak7k2(iv2)
      acd485(5)=abb485(38)
      acd485(6)=k1(iv2)
      acd485(7)=spvak7k2(iv1)
      acd485(8)=k2(iv1)
      acd485(9)=k2(iv2)
      acd485(10)=abb485(33)
      acd485(11)=k3(iv2)
      acd485(12)=k4(iv2)
      acd485(13)=k7(iv2)
      acd485(14)=abb485(26)
      acd485(15)=abb485(39)
      acd485(16)=spvak4k2(iv2)
      acd485(17)=abb485(16)
      acd485(18)=spvak4k3(iv2)
      acd485(19)=abb485(60)
      acd485(20)=spvak5k6(iv2)
      acd485(21)=abb485(49)
      acd485(22)=k3(iv1)
      acd485(23)=k4(iv1)
      acd485(24)=k7(iv1)
      acd485(25)=spvak4k2(iv1)
      acd485(26)=spvak4k3(iv1)
      acd485(27)=spvak5k6(iv1)
      acd485(28)=abb485(43)
      acd485(29)=abb485(59)
      acd485(30)=abb485(50)
      acd485(31)=abb485(10)
      acd485(32)=abb485(15)
      acd485(33)=abb485(24)
      acd485(34)=spvak1k7(iv2)
      acd485(35)=abb485(36)
      acd485(36)=spvak3k2(iv2)
      acd485(37)=abb485(32)
      acd485(38)=spvak1k7(iv1)
      acd485(39)=spvak3k2(iv1)
      acd485(40)=acd485(37)*acd485(36)
      acd485(41)=acd485(35)*acd485(34)
      acd485(42)=acd485(16)*acd485(31)
      acd485(43)=acd485(5)*acd485(6)
      acd485(44)=acd485(20)*acd485(33)
      acd485(45)=acd485(18)*acd485(32)
      acd485(46)=acd485(11)+acd485(12)
      acd485(47)=-acd485(28)*acd485(46)
      acd485(48)=acd485(9)*acd485(15)
      acd485(40)=acd485(48)+acd485(47)+acd485(45)+acd485(44)+acd485(43)+acd485(&
      &42)+acd485(40)+acd485(41)
      acd485(40)=acd485(7)*acd485(40)
      acd485(41)=acd485(37)*acd485(39)
      acd485(42)=acd485(35)*acd485(38)
      acd485(43)=acd485(25)*acd485(31)
      acd485(44)=acd485(5)*acd485(3)
      acd485(45)=acd485(27)*acd485(33)
      acd485(47)=acd485(26)*acd485(32)
      acd485(48)=acd485(22)+acd485(23)
      acd485(49)=-acd485(28)*acd485(48)
      acd485(50)=acd485(8)*acd485(15)
      acd485(41)=acd485(50)+acd485(49)+acd485(47)+acd485(45)+acd485(44)+acd485(&
      &43)+acd485(41)+acd485(42)
      acd485(41)=acd485(4)*acd485(41)
      acd485(42)=acd485(17)*acd485(25)
      acd485(43)=acd485(27)*acd485(21)
      acd485(44)=acd485(26)*acd485(19)
      acd485(45)=-acd485(10)*acd485(48)
      acd485(47)=acd485(14)*acd485(24)
      acd485(42)=acd485(47)+acd485(45)+acd485(44)+acd485(42)+acd485(43)
      acd485(42)=acd485(9)*acd485(42)
      acd485(43)=2.0_ki*acd485(9)-acd485(46)
      acd485(43)=acd485(10)*acd485(43)
      acd485(44)=acd485(16)*acd485(17)
      acd485(45)=acd485(20)*acd485(21)
      acd485(47)=acd485(18)*acd485(19)
      acd485(49)=acd485(14)*acd485(13)
      acd485(43)=acd485(49)+acd485(47)+acd485(44)+acd485(45)+acd485(43)
      acd485(43)=acd485(8)*acd485(43)
      acd485(44)=acd485(20)*acd485(30)
      acd485(45)=acd485(18)*acd485(29)
      acd485(44)=acd485(44)+acd485(45)
      acd485(44)=acd485(24)*acd485(44)
      acd485(45)=acd485(27)*acd485(30)
      acd485(47)=acd485(26)*acd485(29)
      acd485(45)=acd485(45)+acd485(47)
      acd485(45)=acd485(13)*acd485(45)
      acd485(46)=-acd485(24)*acd485(46)
      acd485(47)=-acd485(13)*acd485(48)
      acd485(46)=acd485(46)+acd485(47)
      acd485(46)=acd485(14)*acd485(46)
      acd485(47)=acd485(1)*acd485(2)
      brack=acd485(40)+acd485(41)+acd485(42)+acd485(43)+acd485(44)+acd485(45)+a&
      &cd485(46)+2.0_ki*acd485(47)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd485
      complex(ki) :: brack
      acd485(1)=d(iv1,iv2)
      acd485(2)=k2(iv3)
      acd485(3)=abb485(33)
      acd485(4)=k3(iv3)
      acd485(5)=abb485(34)
      acd485(6)=k4(iv3)
      acd485(7)=k7(iv3)
      acd485(8)=spvak4k2(iv3)
      acd485(9)=abb485(8)
      acd485(10)=spvak4k3(iv3)
      acd485(11)=abb485(9)
      acd485(12)=spvak5k6(iv3)
      acd485(13)=abb485(29)
      acd485(14)=spvak7k2(iv3)
      acd485(15)=abb485(20)
      acd485(16)=d(iv1,iv3)
      acd485(17)=k2(iv2)
      acd485(18)=k3(iv2)
      acd485(19)=k4(iv2)
      acd485(20)=k7(iv2)
      acd485(21)=spvak4k2(iv2)
      acd485(22)=spvak4k3(iv2)
      acd485(23)=spvak5k6(iv2)
      acd485(24)=spvak7k2(iv2)
      acd485(25)=d(iv2,iv3)
      acd485(26)=k2(iv1)
      acd485(27)=k3(iv1)
      acd485(28)=k4(iv1)
      acd485(29)=k7(iv1)
      acd485(30)=spvak4k2(iv1)
      acd485(31)=spvak4k3(iv1)
      acd485(32)=spvak5k6(iv1)
      acd485(33)=spvak7k2(iv1)
      acd485(34)=k1(iv1)
      acd485(35)=abb485(19)
      acd485(36)=k1(iv2)
      acd485(37)=k1(iv3)
      acd485(38)=abb485(11)
      acd485(39)=abb485(13)
      acd485(40)=abb485(51)
      acd485(41)=spvak1k6(iv3)
      acd485(42)=abb485(37)
      acd485(43)=spvak5k2(iv3)
      acd485(44)=abb485(57)
      acd485(45)=spvak1k6(iv2)
      acd485(46)=spvak5k2(iv2)
      acd485(47)=spvak1k6(iv1)
      acd485(48)=spvak5k2(iv1)
      acd485(49)=abb485(41)
      acd485(50)=abb485(31)
      acd485(51)=abb485(18)
      acd485(52)=abb485(40)
      acd485(53)=abb485(35)
      acd485(54)=abb485(6)
      acd485(55)=spvak1k2(iv3)
      acd485(56)=abb485(30)
      acd485(57)=spvak1k7(iv3)
      acd485(58)=abb485(42)
      acd485(59)=spvak3k2(iv3)
      acd485(60)=abb485(28)
      acd485(61)=spvak1k2(iv2)
      acd485(62)=spvak1k7(iv2)
      acd485(63)=spvak3k2(iv2)
      acd485(64)=spvak1k2(iv1)
      acd485(65)=spvak1k7(iv1)
      acd485(66)=spvak3k2(iv1)
      acd485(67)=abb485(46)
      acd485(68)=spvak1k3(iv3)
      acd485(69)=abb485(45)
      acd485(70)=spvak1k3(iv2)
      acd485(71)=spvak1k3(iv1)
      acd485(72)=acd485(37)+acd485(2)
      acd485(72)=acd485(35)*acd485(72)
      acd485(73)=acd485(60)*acd485(59)
      acd485(74)=acd485(58)*acd485(57)
      acd485(75)=acd485(56)*acd485(55)
      acd485(76)=acd485(43)*acd485(54)
      acd485(77)=acd485(41)*acd485(53)
      acd485(78)=acd485(12)*acd485(51)
      acd485(79)=acd485(8)*acd485(49)
      acd485(72)=-acd485(72)+acd485(76)+acd485(77)+acd485(73)+acd485(78)+acd485&
      &(79)+acd485(74)+acd485(75)
      acd485(73)=-acd485(22)*acd485(72)
      acd485(74)=acd485(17)+acd485(36)
      acd485(74)=acd485(74)*acd485(35)
      acd485(75)=acd485(60)*acd485(63)
      acd485(76)=acd485(58)*acd485(62)
      acd485(77)=acd485(56)*acd485(61)
      acd485(78)=acd485(46)*acd485(54)
      acd485(79)=acd485(45)*acd485(53)
      acd485(80)=acd485(23)*acd485(51)
      acd485(81)=acd485(21)*acd485(49)
      acd485(74)=acd485(76)+acd485(77)+acd485(78)+acd485(79)-acd485(74)+acd485(&
      &75)+acd485(80)+acd485(81)
      acd485(75)=-acd485(10)*acd485(74)
      acd485(76)=acd485(69)*acd485(68)
      acd485(77)=acd485(67)*acd485(55)
      acd485(78)=acd485(8)*acd485(50)
      acd485(79)=acd485(2)*acd485(40)
      acd485(76)=acd485(78)+acd485(79)+acd485(76)+acd485(77)
      acd485(77)=-acd485(23)*acd485(76)
      acd485(78)=acd485(69)*acd485(70)
      acd485(79)=acd485(67)*acd485(61)
      acd485(80)=acd485(21)*acd485(50)
      acd485(81)=acd485(17)*acd485(40)
      acd485(78)=acd485(80)+acd485(81)+acd485(78)+acd485(79)
      acd485(79)=-acd485(12)*acd485(78)
      acd485(80)=acd485(4)+acd485(6)
      acd485(81)=acd485(80)-acd485(2)
      acd485(82)=-acd485(46)*acd485(81)
      acd485(83)=acd485(18)+acd485(19)
      acd485(84)=acd485(83)-acd485(17)
      acd485(85)=-acd485(43)*acd485(84)
      acd485(82)=acd485(85)+acd485(82)
      acd485(82)=acd485(44)*acd485(82)
      acd485(85)=acd485(45)*acd485(81)
      acd485(86)=acd485(41)*acd485(84)
      acd485(85)=acd485(86)+acd485(85)
      acd485(85)=acd485(42)*acd485(85)
      acd485(86)=acd485(21)*acd485(81)
      acd485(87)=acd485(8)*acd485(84)
      acd485(86)=acd485(87)+acd485(86)
      acd485(86)=acd485(39)*acd485(86)
      acd485(87)=2.0_ki*acd485(15)
      acd485(88)=-acd485(25)*acd485(87)
      acd485(73)=acd485(75)+acd485(73)+acd485(86)+acd485(85)+acd485(82)+acd485(&
      &79)+acd485(88)+acd485(77)
      acd485(73)=acd485(33)*acd485(73)
      acd485(75)=acd485(26)+acd485(34)
      acd485(75)=acd485(75)*acd485(35)
      acd485(77)=acd485(60)*acd485(66)
      acd485(79)=acd485(58)*acd485(65)
      acd485(82)=acd485(56)*acd485(64)
      acd485(85)=acd485(48)*acd485(54)
      acd485(86)=acd485(47)*acd485(53)
      acd485(88)=acd485(32)*acd485(51)
      acd485(89)=acd485(30)*acd485(49)
      acd485(75)=acd485(89)+acd485(82)+acd485(85)+acd485(86)+acd485(88)-acd485(&
      &75)+acd485(77)+acd485(79)
      acd485(77)=2.0_ki*acd485(52)
      acd485(79)=-acd485(33)*acd485(77)
      acd485(79)=acd485(79)-acd485(75)
      acd485(79)=acd485(10)*acd485(79)
      acd485(72)=-acd485(31)*acd485(72)
      acd485(76)=-acd485(32)*acd485(76)
      acd485(82)=acd485(69)*acd485(71)
      acd485(85)=acd485(67)*acd485(64)
      acd485(86)=acd485(30)*acd485(50)
      acd485(88)=acd485(26)*acd485(40)
      acd485(82)=acd485(82)+acd485(85)+acd485(86)+acd485(88)
      acd485(85)=-acd485(12)*acd485(82)
      acd485(86)=-acd485(48)*acd485(81)
      acd485(88)=acd485(27)+acd485(28)
      acd485(89)=acd485(88)-acd485(26)
      acd485(90)=-acd485(43)*acd485(89)
      acd485(86)=acd485(90)+acd485(86)
      acd485(86)=acd485(44)*acd485(86)
      acd485(90)=acd485(47)*acd485(81)
      acd485(91)=acd485(41)*acd485(89)
      acd485(90)=acd485(91)+acd485(90)
      acd485(90)=acd485(42)*acd485(90)
      acd485(81)=acd485(30)*acd485(81)
      acd485(91)=acd485(8)*acd485(89)
      acd485(81)=acd485(91)+acd485(81)
      acd485(81)=acd485(39)*acd485(81)
      acd485(87)=-acd485(16)*acd485(87)
      acd485(72)=acd485(72)+acd485(81)+acd485(90)+acd485(86)+acd485(85)+acd485(&
      &87)+acd485(76)+acd485(79)
      acd485(72)=acd485(24)*acd485(72)
      acd485(74)=-acd485(31)*acd485(74)
      acd485(75)=-acd485(22)*acd485(75)
      acd485(76)=-acd485(32)*acd485(78)
      acd485(78)=-acd485(23)*acd485(82)
      acd485(79)=-acd485(33)*acd485(22)
      acd485(81)=-acd485(24)*acd485(31)
      acd485(79)=acd485(81)+acd485(79)
      acd485(77)=acd485(77)*acd485(79)
      acd485(79)=-acd485(48)*acd485(84)
      acd485(81)=-acd485(46)*acd485(89)
      acd485(79)=acd485(81)+acd485(79)
      acd485(79)=acd485(44)*acd485(79)
      acd485(81)=acd485(47)*acd485(84)
      acd485(82)=acd485(45)*acd485(89)
      acd485(81)=acd485(82)+acd485(81)
      acd485(81)=acd485(42)*acd485(81)
      acd485(82)=acd485(30)*acd485(84)
      acd485(84)=acd485(21)*acd485(89)
      acd485(82)=acd485(84)+acd485(82)
      acd485(82)=acd485(39)*acd485(82)
      acd485(84)=2.0_ki*acd485(1)
      acd485(85)=-acd485(15)*acd485(84)
      acd485(74)=acd485(75)+acd485(74)+acd485(82)+acd485(81)+acd485(79)+acd485(&
      &78)+acd485(85)+acd485(76)+acd485(77)
      acd485(74)=acd485(14)*acd485(74)
      acd485(75)=-acd485(26)-acd485(29)
      acd485(75)=acd485(3)*acd485(75)
      acd485(76)=acd485(5)*acd485(88)
      acd485(77)=-acd485(32)*acd485(13)
      acd485(78)=-acd485(30)*acd485(9)
      acd485(75)=acd485(78)+acd485(77)+acd485(76)+acd485(75)
      acd485(75)=acd485(25)*acd485(75)
      acd485(76)=-acd485(17)-acd485(20)
      acd485(76)=acd485(3)*acd485(76)
      acd485(77)=acd485(5)*acd485(83)
      acd485(78)=-acd485(23)*acd485(13)
      acd485(79)=-acd485(21)*acd485(9)
      acd485(76)=acd485(79)+acd485(78)+acd485(77)+acd485(76)
      acd485(76)=acd485(16)*acd485(76)
      acd485(77)=acd485(5)*acd485(80)
      acd485(78)=-acd485(3)*acd485(7)
      acd485(77)=acd485(78)+acd485(77)
      acd485(77)=acd485(1)*acd485(77)
      acd485(75)=acd485(77)+acd485(76)+acd485(75)
      acd485(76)=-acd485(31)*acd485(25)
      acd485(77)=-acd485(22)*acd485(16)
      acd485(76)=acd485(77)+acd485(76)
      acd485(77)=2.0_ki*acd485(11)
      acd485(76)=acd485(77)*acd485(76)
      acd485(77)=-acd485(21)*acd485(26)
      acd485(78)=-acd485(17)*acd485(30)
      acd485(77)=acd485(78)+acd485(77)
      acd485(77)=acd485(38)*acd485(77)
      acd485(78)=-acd485(13)*acd485(84)
      acd485(77)=acd485(78)+acd485(77)
      acd485(77)=acd485(12)*acd485(77)
      acd485(78)=-acd485(23)*acd485(26)
      acd485(79)=-acd485(17)*acd485(32)
      acd485(78)=acd485(79)+acd485(78)
      acd485(78)=acd485(38)*acd485(78)
      acd485(79)=-acd485(9)*acd485(84)
      acd485(78)=acd485(79)+acd485(78)
      acd485(78)=acd485(8)*acd485(78)
      acd485(79)=-acd485(23)*acd485(30)
      acd485(80)=-acd485(21)*acd485(32)
      acd485(79)=acd485(80)+acd485(79)
      acd485(79)=acd485(38)*acd485(79)
      acd485(80)=-acd485(3)*acd485(84)
      acd485(79)=acd485(80)+acd485(79)
      acd485(79)=acd485(2)*acd485(79)
      acd485(80)=-acd485(10)*acd485(11)*acd485(84)
      brack=acd485(72)+acd485(73)+acd485(74)+2.0_ki*acd485(75)+acd485(76)+acd48&
      &5(77)+acd485(78)+acd485(79)+acd485(80)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd485
      complex(ki) :: brack
      acd485(1)=d(iv1,iv2)
      acd485(2)=d(iv3,iv4)
      acd485(3)=abb485(14)
      acd485(4)=spvak1k6(iv3)
      acd485(5)=spvak7k2(iv4)
      acd485(6)=abb485(44)
      acd485(7)=spvak1k6(iv4)
      acd485(8)=spvak7k2(iv3)
      acd485(9)=spvak4k2(iv4)
      acd485(10)=abb485(28)
      acd485(11)=spvak5k6(iv4)
      acd485(12)=abb485(54)
      acd485(13)=spvak5k2(iv4)
      acd485(14)=abb485(58)
      acd485(15)=spvak4k2(iv3)
      acd485(16)=spvak5k6(iv3)
      acd485(17)=spvak5k2(iv3)
      acd485(18)=abb485(7)
      acd485(19)=d(iv1,iv3)
      acd485(20)=d(iv2,iv4)
      acd485(21)=spvak1k6(iv2)
      acd485(22)=spvak7k2(iv2)
      acd485(23)=spvak4k2(iv2)
      acd485(24)=spvak5k6(iv2)
      acd485(25)=spvak5k2(iv2)
      acd485(26)=d(iv1,iv4)
      acd485(27)=d(iv2,iv3)
      acd485(28)=spvak1k6(iv1)
      acd485(29)=spvak7k2(iv1)
      acd485(30)=spvak4k2(iv1)
      acd485(31)=spvak5k6(iv1)
      acd485(32)=spvak5k2(iv1)
      acd485(33)=spvak1k2(iv3)
      acd485(34)=spvak4k3(iv4)
      acd485(35)=abb485(47)
      acd485(36)=spvak1k2(iv4)
      acd485(37)=spvak4k3(iv3)
      acd485(38)=spvak1k2(iv2)
      acd485(39)=spvak4k3(iv2)
      acd485(40)=spvak1k2(iv1)
      acd485(41)=spvak4k3(iv1)
      acd485(42)=acd485(10)*acd485(8)
      acd485(43)=acd485(18)*acd485(16)
      acd485(42)=acd485(42)+acd485(43)
      acd485(43)=acd485(1)*acd485(42)
      acd485(44)=acd485(10)*acd485(22)
      acd485(45)=acd485(24)*acd485(18)
      acd485(44)=acd485(44)+acd485(45)
      acd485(45)=acd485(19)*acd485(44)
      acd485(46)=acd485(10)*acd485(29)
      acd485(47)=acd485(31)*acd485(18)
      acd485(46)=acd485(46)+acd485(47)
      acd485(47)=acd485(27)*acd485(46)
      acd485(43)=acd485(47)+acd485(43)+acd485(45)
      acd485(43)=acd485(9)*acd485(43)
      acd485(45)=acd485(10)*acd485(5)
      acd485(47)=acd485(18)*acd485(11)
      acd485(45)=acd485(45)+acd485(47)
      acd485(47)=acd485(1)*acd485(45)
      acd485(48)=acd485(20)*acd485(46)
      acd485(49)=acd485(26)*acd485(44)
      acd485(47)=acd485(49)+acd485(47)+acd485(48)
      acd485(47)=acd485(15)*acd485(47)
      acd485(46)=acd485(2)*acd485(46)
      acd485(48)=acd485(19)*acd485(45)
      acd485(49)=acd485(26)*acd485(42)
      acd485(46)=acd485(49)+acd485(46)+acd485(48)
      acd485(46)=acd485(23)*acd485(46)
      acd485(44)=acd485(2)*acd485(44)
      acd485(42)=acd485(20)*acd485(42)
      acd485(45)=acd485(27)*acd485(45)
      acd485(42)=acd485(45)+acd485(44)+acd485(42)
      acd485(42)=acd485(30)*acd485(42)
      acd485(44)=acd485(1)*acd485(8)
      acd485(45)=acd485(19)*acd485(22)
      acd485(48)=acd485(27)*acd485(29)
      acd485(44)=acd485(48)+acd485(44)+acd485(45)
      acd485(45)=acd485(7)*acd485(6)
      acd485(48)=acd485(13)*acd485(14)
      acd485(45)=acd485(45)+acd485(48)
      acd485(44)=acd485(44)*acd485(45)
      acd485(45)=acd485(1)*acd485(5)
      acd485(48)=acd485(20)*acd485(29)
      acd485(49)=acd485(26)*acd485(22)
      acd485(45)=acd485(49)+acd485(45)+acd485(48)
      acd485(48)=acd485(4)*acd485(6)*acd485(45)
      acd485(45)=acd485(17)*acd485(14)*acd485(45)
      acd485(49)=acd485(2)*acd485(29)
      acd485(50)=acd485(19)*acd485(5)
      acd485(51)=acd485(26)*acd485(8)
      acd485(49)=acd485(51)+acd485(49)+acd485(50)
      acd485(50)=acd485(21)*acd485(6)*acd485(49)
      acd485(49)=acd485(25)*acd485(14)*acd485(49)
      acd485(51)=acd485(2)*acd485(22)
      acd485(52)=acd485(20)*acd485(8)
      acd485(53)=acd485(27)*acd485(5)
      acd485(51)=acd485(53)+acd485(51)+acd485(52)
      acd485(52)=acd485(28)*acd485(6)*acd485(51)
      acd485(51)=acd485(32)*acd485(14)*acd485(51)
      acd485(53)=acd485(12)*acd485(11)
      acd485(54)=acd485(8)*acd485(53)
      acd485(55)=acd485(16)*acd485(12)
      acd485(56)=acd485(5)*acd485(55)
      acd485(54)=acd485(54)+acd485(56)
      acd485(54)=acd485(1)*acd485(54)
      acd485(56)=acd485(24)*acd485(12)
      acd485(57)=acd485(29)*acd485(56)
      acd485(58)=acd485(31)*acd485(12)
      acd485(59)=acd485(22)*acd485(58)
      acd485(57)=acd485(57)+acd485(59)
      acd485(57)=acd485(2)*acd485(57)
      acd485(59)=acd485(22)*acd485(53)
      acd485(60)=acd485(5)*acd485(56)
      acd485(59)=acd485(59)+acd485(60)
      acd485(59)=acd485(19)*acd485(59)
      acd485(60)=acd485(29)*acd485(55)
      acd485(61)=acd485(8)*acd485(58)
      acd485(60)=acd485(60)+acd485(61)
      acd485(60)=acd485(20)*acd485(60)
      acd485(55)=acd485(22)*acd485(55)
      acd485(56)=acd485(8)*acd485(56)
      acd485(55)=acd485(55)+acd485(56)
      acd485(55)=acd485(26)*acd485(55)
      acd485(53)=acd485(29)*acd485(53)
      acd485(56)=acd485(5)*acd485(58)
      acd485(53)=acd485(53)+acd485(56)
      acd485(53)=acd485(27)*acd485(53)
      acd485(42)=acd485(51)+acd485(45)+acd485(50)+acd485(49)+acd485(52)+acd485(&
      &44)+acd485(48)+acd485(42)+acd485(46)+acd485(47)+acd485(43)+acd485(53)+ac&
      &d485(55)+acd485(60)+acd485(59)+acd485(54)+acd485(57)
      acd485(43)=acd485(24)*acd485(35)
      acd485(44)=acd485(43)*acd485(8)
      acd485(45)=acd485(16)*acd485(35)
      acd485(46)=acd485(45)*acd485(22)
      acd485(44)=acd485(44)+acd485(46)
      acd485(46)=acd485(34)*acd485(44)
      acd485(47)=acd485(43)*acd485(5)
      acd485(48)=acd485(11)*acd485(35)
      acd485(49)=acd485(48)*acd485(22)
      acd485(47)=acd485(47)+acd485(49)
      acd485(49)=acd485(37)*acd485(47)
      acd485(50)=acd485(45)*acd485(5)
      acd485(51)=acd485(48)*acd485(8)
      acd485(50)=acd485(50)+acd485(51)
      acd485(51)=acd485(39)*acd485(50)
      acd485(46)=acd485(51)+acd485(46)+acd485(49)
      acd485(46)=acd485(40)*acd485(46)
      acd485(47)=acd485(33)*acd485(47)
      acd485(44)=acd485(36)*acd485(44)
      acd485(49)=acd485(38)*acd485(50)
      acd485(44)=acd485(49)+acd485(47)+acd485(44)
      acd485(44)=acd485(41)*acd485(44)
      acd485(47)=acd485(34)*acd485(33)
      acd485(49)=acd485(37)*acd485(36)
      acd485(47)=acd485(49)+acd485(47)
      acd485(49)=acd485(31)*acd485(35)
      acd485(50)=acd485(49)*acd485(22)
      acd485(43)=acd485(43)*acd485(29)
      acd485(43)=acd485(50)+acd485(43)
      acd485(43)=acd485(43)*acd485(47)
      acd485(47)=acd485(49)*acd485(8)
      acd485(45)=acd485(45)*acd485(29)
      acd485(45)=acd485(47)+acd485(45)
      acd485(47)=acd485(34)*acd485(45)
      acd485(49)=acd485(49)*acd485(5)
      acd485(48)=acd485(48)*acd485(29)
      acd485(48)=acd485(49)+acd485(48)
      acd485(49)=acd485(37)*acd485(48)
      acd485(47)=acd485(47)+acd485(49)
      acd485(47)=acd485(38)*acd485(47)
      acd485(48)=acd485(33)*acd485(48)
      acd485(45)=acd485(36)*acd485(45)
      acd485(45)=acd485(48)+acd485(45)
      acd485(45)=acd485(39)*acd485(45)
      acd485(48)=acd485(2)*acd485(1)
      acd485(49)=acd485(20)*acd485(19)
      acd485(50)=acd485(27)*acd485(26)
      acd485(48)=acd485(50)+acd485(48)+acd485(49)
      acd485(48)=acd485(3)*acd485(48)
      brack=2.0_ki*acd485(42)+acd485(43)+acd485(44)+acd485(45)+acd485(46)+acd48&
      &5(47)+8.0_ki*acd485(48)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd485h5
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
!---#[ subroutine reconstruct_d485:
   subroutine     reconstruct_d485(coeffs)
      use p4_ubaru_epnemumnmubarg_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_485:
      coeffs%coeffs_485%c0 = derivative(czip)
      coeffs%coeffs_485%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_485%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_485%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_485%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_485%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_485%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_485%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_485%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_485%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_485%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_485%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_485%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_485%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_485%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_485%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_485%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_485%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_485%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_485%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_485%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_485%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_485%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_485%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_485%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_485%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_485%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_485%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_485%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_485%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_485%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_485%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_485%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_485%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_485%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_485%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_485%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_485%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_485%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_485%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_485%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_485%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_485%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_485%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_485%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_485%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_485%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_485%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_485%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_485%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_485%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_485%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_485%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_485%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_485%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_485%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_485%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_485%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_485%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_485%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_485%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_485%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_485%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_485%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_485%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_485%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_485%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_485%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_485%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_485%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_485:
   end subroutine reconstruct_d485
!---#] subroutine reconstruct_d485:
end module     p4_ubaru_epnemumnmubarg_d485h5l1d
