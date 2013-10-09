module     p9_csbar_epnebbbarg_d113h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d113h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d113
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd113
      complex(ki) :: brack
      acd113(1)=abb113(33)
      brack=acd113(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd113
      complex(ki) :: brack
      acd113(1)=k1(iv1)
      acd113(2)=abb113(42)
      acd113(3)=k2(iv1)
      acd113(4)=abb113(35)
      acd113(5)=k3(iv1)
      acd113(6)=k4(iv1)
      acd113(7)=l5(iv1)
      acd113(8)=abb113(63)
      acd113(9)=l6(iv1)
      acd113(10)=k7(iv1)
      acd113(11)=abb113(71)
      acd113(12)=e7(iv1)
      acd113(13)=abb113(48)
      acd113(14)=spvak4k1(iv1)
      acd113(15)=abb113(17)
      acd113(16)=spvak4k3(iv1)
      acd113(17)=abb113(32)
      acd113(18)=spval5k2(iv1)
      acd113(19)=abb113(20)
      acd113(20)=spval6k2(iv1)
      acd113(21)=abb113(69)
      acd113(22)=spvak2e7(iv1)
      acd113(23)=abb113(21)
      acd113(24)=acd113(9)+acd113(7)
      acd113(24)=acd113(8)*acd113(24)
      acd113(25)=-acd113(6)-acd113(5)+acd113(1)
      acd113(25)=acd113(2)*acd113(25)
      acd113(26)=-acd113(4)*acd113(3)
      acd113(27)=-acd113(11)*acd113(10)
      acd113(28)=-acd113(13)*acd113(12)
      acd113(29)=-acd113(15)*acd113(14)
      acd113(30)=-acd113(17)*acd113(16)
      acd113(31)=-acd113(19)*acd113(18)
      acd113(32)=-acd113(21)*acd113(20)
      acd113(33)=-acd113(23)*acd113(22)
      brack=acd113(24)+acd113(25)+acd113(26)+acd113(27)+acd113(28)+acd113(29)+a&
      &cd113(30)+acd113(31)+acd113(32)+acd113(33)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd113
      complex(ki) :: brack
      acd113(1)=d(iv1,iv2)
      acd113(2)=abb113(22)
      acd113(3)=k1(iv1)
      acd113(4)=k2(iv2)
      acd113(5)=abb113(91)
      acd113(6)=k7(iv2)
      acd113(7)=abb113(13)
      acd113(8)=e7(iv2)
      acd113(9)=abb113(108)
      acd113(10)=spval5k2(iv2)
      acd113(11)=abb113(18)
      acd113(12)=spval6k2(iv2)
      acd113(13)=abb113(128)
      acd113(14)=k1(iv2)
      acd113(15)=k2(iv1)
      acd113(16)=k7(iv1)
      acd113(17)=e7(iv1)
      acd113(18)=spval5k2(iv1)
      acd113(19)=spval6k2(iv1)
      acd113(20)=k3(iv2)
      acd113(21)=k4(iv2)
      acd113(22)=abb113(90)
      acd113(23)=abb113(80)
      acd113(24)=abb113(98)
      acd113(25)=spvak4k1(iv2)
      acd113(26)=abb113(19)
      acd113(27)=spvak4k3(iv2)
      acd113(28)=abb113(81)
      acd113(29)=k3(iv1)
      acd113(30)=k4(iv1)
      acd113(31)=spvak4k1(iv1)
      acd113(32)=spvak4k3(iv1)
      acd113(33)=l5(iv1)
      acd113(34)=abb113(64)
      acd113(35)=abb113(67)
      acd113(36)=abb113(94)
      acd113(37)=l5(iv2)
      acd113(38)=l6(iv1)
      acd113(39)=l6(iv2)
      acd113(40)=abb113(77)
      acd113(41)=abb113(66)
      acd113(42)=abb113(84)
      acd113(43)=abb113(11)
      acd113(44)=abb113(78)
      acd113(45)=spvak2e7(iv2)
      acd113(46)=abb113(34)
      acd113(47)=spvak2e7(iv1)
      acd113(48)=abb113(37)
      acd113(49)=abb113(73)
      acd113(50)=abb113(10)
      acd113(51)=abb113(31)
      acd113(52)=spvak2k1(iv2)
      acd113(53)=abb113(27)
      acd113(54)=spvak2k3(iv2)
      acd113(55)=abb113(24)
      acd113(56)=spvak2k7(iv2)
      acd113(57)=abb113(23)
      acd113(58)=spvak2k1(iv1)
      acd113(59)=spvak2k3(iv1)
      acd113(60)=spvak2k7(iv1)
      acd113(61)=abb113(14)
      acd113(62)=abb113(40)
      acd113(63)=abb113(60)
      acd113(64)=abb113(16)
      acd113(65)=abb113(79)
      acd113(66)=abb113(58)
      acd113(67)=acd113(57)*acd113(56)
      acd113(68)=acd113(55)*acd113(54)
      acd113(69)=acd113(53)*acd113(52)
      acd113(70)=acd113(37)+acd113(39)
      acd113(71)=acd113(34)*acd113(70)
      acd113(72)=acd113(27)*acd113(51)
      acd113(73)=acd113(25)*acd113(50)
      acd113(74)=-acd113(21)+acd113(14)-acd113(20)
      acd113(75)=acd113(9)*acd113(74)
      acd113(76)=acd113(4)*acd113(22)
      acd113(77)=acd113(6)*acd113(40)
      acd113(78)=acd113(12)*acd113(49)
      acd113(79)=acd113(10)*acd113(48)
      acd113(67)=acd113(79)+acd113(78)+acd113(77)+acd113(76)+acd113(75)+acd113(&
      &73)+acd113(72)+acd113(71)+acd113(69)+acd113(67)+acd113(68)
      acd113(67)=acd113(17)*acd113(67)
      acd113(68)=acd113(57)*acd113(60)
      acd113(69)=acd113(55)*acd113(59)
      acd113(71)=acd113(53)*acd113(58)
      acd113(72)=acd113(33)+acd113(38)
      acd113(73)=acd113(34)*acd113(72)
      acd113(75)=acd113(32)*acd113(51)
      acd113(76)=acd113(31)*acd113(50)
      acd113(77)=-acd113(30)+acd113(3)-acd113(29)
      acd113(78)=acd113(9)*acd113(77)
      acd113(79)=acd113(15)*acd113(22)
      acd113(80)=acd113(16)*acd113(40)
      acd113(81)=acd113(19)*acd113(49)
      acd113(82)=acd113(18)*acd113(48)
      acd113(68)=acd113(82)+acd113(81)+acd113(80)+acd113(79)+acd113(78)+acd113(&
      &76)+acd113(75)+acd113(73)+acd113(71)+acd113(68)+acd113(69)
      acd113(68)=acd113(8)*acd113(68)
      acd113(69)=acd113(45)*acd113(66)
      acd113(71)=-acd113(36)*acd113(70)
      acd113(73)=acd113(27)*acd113(65)
      acd113(75)=acd113(25)*acd113(64)
      acd113(76)=acd113(13)*acd113(74)
      acd113(78)=acd113(4)*acd113(24)
      acd113(79)=acd113(6)*acd113(42)
      acd113(69)=acd113(79)+acd113(78)+acd113(76)+acd113(75)+acd113(73)+acd113(&
      &69)+acd113(71)
      acd113(69)=acd113(19)*acd113(69)
      acd113(71)=acd113(45)*acd113(63)
      acd113(70)=-acd113(35)*acd113(70)
      acd113(73)=acd113(27)*acd113(62)
      acd113(75)=acd113(25)*acd113(61)
      acd113(76)=acd113(11)*acd113(74)
      acd113(78)=acd113(4)*acd113(23)
      acd113(79)=acd113(6)*acd113(41)
      acd113(70)=acd113(79)+acd113(78)+acd113(76)+acd113(75)+acd113(73)+acd113(&
      &71)+acd113(70)
      acd113(70)=acd113(18)*acd113(70)
      acd113(71)=acd113(47)*acd113(66)
      acd113(73)=-acd113(36)*acd113(72)
      acd113(75)=acd113(32)*acd113(65)
      acd113(76)=acd113(31)*acd113(64)
      acd113(78)=acd113(13)*acd113(77)
      acd113(79)=acd113(15)*acd113(24)
      acd113(80)=acd113(16)*acd113(42)
      acd113(71)=acd113(80)+acd113(79)+acd113(78)+acd113(76)+acd113(75)+acd113(&
      &71)+acd113(73)
      acd113(71)=acd113(12)*acd113(71)
      acd113(73)=acd113(47)*acd113(63)
      acd113(72)=-acd113(35)*acd113(72)
      acd113(75)=acd113(32)*acd113(62)
      acd113(76)=acd113(31)*acd113(61)
      acd113(78)=acd113(11)*acd113(77)
      acd113(79)=acd113(15)*acd113(23)
      acd113(80)=acd113(16)*acd113(41)
      acd113(72)=acd113(80)+acd113(79)+acd113(78)+acd113(76)+acd113(75)+acd113(&
      &73)+acd113(72)
      acd113(72)=acd113(10)*acd113(72)
      acd113(73)=acd113(45)*acd113(46)
      acd113(75)=acd113(27)*acd113(44)
      acd113(76)=acd113(25)*acd113(43)
      acd113(78)=-acd113(7)*acd113(74)
      acd113(73)=acd113(78)+acd113(76)+acd113(73)+acd113(75)
      acd113(73)=acd113(16)*acd113(73)
      acd113(75)=acd113(47)*acd113(46)
      acd113(76)=acd113(32)*acd113(44)
      acd113(78)=acd113(31)*acd113(43)
      acd113(79)=-acd113(7)*acd113(77)
      acd113(75)=acd113(79)+acd113(78)+acd113(75)+acd113(76)
      acd113(75)=acd113(6)*acd113(75)
      acd113(76)=acd113(27)*acd113(28)
      acd113(78)=acd113(25)*acd113(26)
      acd113(74)=acd113(5)*acd113(74)
      acd113(74)=acd113(74)+acd113(76)+acd113(78)
      acd113(74)=acd113(15)*acd113(74)
      acd113(76)=acd113(32)*acd113(28)
      acd113(78)=acd113(31)*acd113(26)
      acd113(77)=acd113(5)*acd113(77)
      acd113(76)=acd113(77)+acd113(76)+acd113(78)
      acd113(76)=acd113(4)*acd113(76)
      acd113(77)=acd113(1)*acd113(2)
      brack=acd113(67)+acd113(68)+acd113(69)+acd113(70)+acd113(71)+acd113(72)+a&
      &cd113(73)+acd113(74)+acd113(75)+acd113(76)+2.0_ki*acd113(77)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd113h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd113
      complex(ki) :: brack
      acd113(1)=d(iv1,iv2)
      acd113(2)=k1(iv3)
      acd113(3)=abb113(50)
      acd113(4)=k3(iv3)
      acd113(5)=k4(iv3)
      acd113(6)=e7(iv3)
      acd113(7)=abb113(45)
      acd113(8)=spvak4k1(iv3)
      acd113(9)=abb113(12)
      acd113(10)=spvak4k3(iv3)
      acd113(11)=abb113(72)
      acd113(12)=spval5k2(iv3)
      acd113(13)=abb113(83)
      acd113(14)=spval6k2(iv3)
      acd113(15)=abb113(97)
      acd113(16)=spvak2e7(iv3)
      acd113(17)=abb113(29)
      acd113(18)=d(iv1,iv3)
      acd113(19)=k1(iv2)
      acd113(20)=k3(iv2)
      acd113(21)=k4(iv2)
      acd113(22)=e7(iv2)
      acd113(23)=spvak4k1(iv2)
      acd113(24)=spvak4k3(iv2)
      acd113(25)=spval5k2(iv2)
      acd113(26)=spval6k2(iv2)
      acd113(27)=spvak2e7(iv2)
      acd113(28)=d(iv2,iv3)
      acd113(29)=k1(iv1)
      acd113(30)=k3(iv1)
      acd113(31)=k4(iv1)
      acd113(32)=e7(iv1)
      acd113(33)=spvak4k1(iv1)
      acd113(34)=spvak4k3(iv1)
      acd113(35)=spval5k2(iv1)
      acd113(36)=spval6k2(iv1)
      acd113(37)=spvak2e7(iv1)
      acd113(38)=abb113(65)
      acd113(39)=abb113(135)
      acd113(40)=abb113(15)
      acd113(41)=abb113(9)
      acd113(42)=abb113(43)
      acd113(43)=abb113(89)
      acd113(44)=spvak2k1(iv3)
      acd113(45)=abb113(30)
      acd113(46)=spvak2k3(iv3)
      acd113(47)=abb113(26)
      acd113(48)=spvak2k1(iv2)
      acd113(49)=spvak2k3(iv2)
      acd113(50)=abb113(28)
      acd113(51)=abb113(25)
      acd113(52)=spvak2k1(iv1)
      acd113(53)=spvak2k3(iv1)
      acd113(54)=-acd113(1)*acd113(6)
      acd113(55)=-acd113(18)*acd113(22)
      acd113(56)=-acd113(28)*acd113(32)
      acd113(54)=acd113(56)+acd113(54)+acd113(55)
      acd113(54)=acd113(7)*acd113(54)
      acd113(55)=-acd113(8)*acd113(1)
      acd113(56)=-acd113(23)*acd113(18)
      acd113(57)=-acd113(33)*acd113(28)
      acd113(55)=acd113(57)+acd113(55)+acd113(56)
      acd113(55)=acd113(9)*acd113(55)
      acd113(56)=-acd113(10)*acd113(1)
      acd113(57)=-acd113(24)*acd113(18)
      acd113(58)=-acd113(34)*acd113(28)
      acd113(56)=acd113(58)+acd113(56)+acd113(57)
      acd113(56)=acd113(11)*acd113(56)
      acd113(57)=-acd113(1)*acd113(12)
      acd113(58)=-acd113(18)*acd113(25)
      acd113(59)=-acd113(28)*acd113(35)
      acd113(57)=acd113(59)+acd113(57)+acd113(58)
      acd113(57)=acd113(13)*acd113(57)
      acd113(58)=-acd113(1)*acd113(14)
      acd113(59)=-acd113(18)*acd113(26)
      acd113(60)=-acd113(28)*acd113(36)
      acd113(58)=acd113(60)+acd113(58)+acd113(59)
      acd113(58)=acd113(15)*acd113(58)
      acd113(54)=acd113(58)+acd113(54)+acd113(55)+acd113(56)+acd113(57)
      acd113(55)=acd113(14)*acd113(22)
      acd113(56)=acd113(26)*acd113(6)
      acd113(55)=acd113(55)+acd113(56)
      acd113(56)=acd113(39)*acd113(55)
      acd113(57)=acd113(12)*acd113(22)
      acd113(58)=acd113(25)*acd113(6)
      acd113(57)=acd113(57)+acd113(58)
      acd113(58)=acd113(38)*acd113(57)
      acd113(59)=2.0_ki*acd113(3)
      acd113(60)=acd113(59)*acd113(28)
      acd113(56)=acd113(58)-acd113(60)+acd113(56)
      acd113(58)=-acd113(31)-acd113(30)+acd113(29)
      acd113(56)=acd113(56)*acd113(58)
      acd113(58)=acd113(14)*acd113(32)
      acd113(60)=acd113(36)*acd113(6)
      acd113(58)=acd113(58)+acd113(60)
      acd113(60)=acd113(39)*acd113(58)
      acd113(61)=acd113(12)*acd113(32)
      acd113(62)=acd113(35)*acd113(6)
      acd113(61)=acd113(61)+acd113(62)
      acd113(62)=acd113(38)*acd113(61)
      acd113(63)=acd113(59)*acd113(18)
      acd113(60)=acd113(62)-acd113(63)+acd113(60)
      acd113(62)=-acd113(21)-acd113(20)+acd113(19)
      acd113(60)=acd113(60)*acd113(62)
      acd113(62)=acd113(25)*acd113(32)
      acd113(63)=acd113(35)*acd113(22)
      acd113(62)=acd113(62)+acd113(63)
      acd113(63)=acd113(38)*acd113(62)
      acd113(64)=acd113(26)*acd113(32)
      acd113(65)=acd113(36)*acd113(22)
      acd113(64)=acd113(64)+acd113(65)
      acd113(65)=acd113(39)*acd113(64)
      acd113(59)=acd113(59)*acd113(1)
      acd113(59)=-acd113(59)+acd113(65)+acd113(63)
      acd113(63)=-acd113(5)+acd113(2)-acd113(4)
      acd113(59)=acd113(59)*acd113(63)
      acd113(63)=acd113(16)*acd113(1)
      acd113(65)=acd113(27)*acd113(18)
      acd113(66)=acd113(37)*acd113(28)
      acd113(63)=acd113(66)+acd113(63)+acd113(65)
      acd113(63)=-2.0_ki*acd113(63)
      acd113(63)=acd113(17)*acd113(63)
      acd113(65)=-acd113(40)*acd113(62)
      acd113(66)=-acd113(41)*acd113(64)
      acd113(65)=acd113(65)+acd113(66)
      acd113(65)=acd113(8)*acd113(65)
      acd113(66)=-acd113(42)*acd113(62)
      acd113(67)=-acd113(43)*acd113(64)
      acd113(66)=acd113(66)+acd113(67)
      acd113(66)=acd113(10)*acd113(66)
      acd113(67)=-acd113(40)*acd113(61)
      acd113(68)=-acd113(41)*acd113(58)
      acd113(67)=acd113(67)+acd113(68)
      acd113(67)=acd113(23)*acd113(67)
      acd113(68)=-acd113(42)*acd113(61)
      acd113(69)=-acd113(43)*acd113(58)
      acd113(68)=acd113(68)+acd113(69)
      acd113(68)=acd113(24)*acd113(68)
      acd113(69)=-acd113(40)*acd113(57)
      acd113(70)=-acd113(41)*acd113(55)
      acd113(69)=acd113(69)+acd113(70)
      acd113(69)=acd113(33)*acd113(69)
      acd113(70)=-acd113(42)*acd113(57)
      acd113(71)=-acd113(43)*acd113(55)
      acd113(70)=acd113(70)+acd113(71)
      acd113(70)=acd113(34)*acd113(70)
      acd113(71)=-acd113(45)*acd113(62)
      acd113(72)=-acd113(50)*acd113(64)
      acd113(71)=acd113(71)+acd113(72)
      acd113(71)=acd113(44)*acd113(71)
      acd113(62)=-acd113(47)*acd113(62)
      acd113(64)=-acd113(51)*acd113(64)
      acd113(62)=acd113(62)+acd113(64)
      acd113(62)=acd113(46)*acd113(62)
      acd113(64)=-acd113(45)*acd113(61)
      acd113(72)=-acd113(50)*acd113(58)
      acd113(64)=acd113(64)+acd113(72)
      acd113(64)=acd113(48)*acd113(64)
      acd113(61)=-acd113(47)*acd113(61)
      acd113(58)=-acd113(51)*acd113(58)
      acd113(58)=acd113(61)+acd113(58)
      acd113(58)=acd113(49)*acd113(58)
      acd113(61)=-acd113(45)*acd113(57)
      acd113(72)=-acd113(50)*acd113(55)
      acd113(61)=acd113(61)+acd113(72)
      acd113(61)=acd113(52)*acd113(61)
      acd113(57)=-acd113(47)*acd113(57)
      acd113(55)=-acd113(51)*acd113(55)
      acd113(55)=acd113(57)+acd113(55)
      acd113(55)=acd113(53)*acd113(55)
      brack=2.0_ki*acd113(54)+acd113(55)+acd113(56)+acd113(58)+acd113(59)+acd11&
      &3(60)+acd113(61)+acd113(62)+acd113(63)+acd113(64)+acd113(65)+acd113(66)+&
      &acd113(67)+acd113(68)+acd113(69)+acd113(70)+acd113(71)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd113h0
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
!---#[ subroutine reconstruct_d113:
   subroutine     reconstruct_d113(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_113:
      coeffs%coeffs_113%c0 = derivative(czip)
      coeffs%coeffs_113%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_113%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_113%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_113%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_113%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_113%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_113%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_113%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_113%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_113%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_113%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_113%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_113%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_113%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_113%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_113%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_113%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_113%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_113%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_113%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_113%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_113%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_113%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_113%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_113%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_113%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_113%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_113%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_113%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_113%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_113%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_113%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_113%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_113%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_113:
   end subroutine reconstruct_d113
!---#] subroutine reconstruct_d113:
end module     p9_csbar_epnebbbarg_d113h0l1d
