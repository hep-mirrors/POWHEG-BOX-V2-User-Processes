module     p0_dbaru_epnebbbarg_d75h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d75h2l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d75
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd75
      complex(ki) :: brack
      acd75(1)=abb75(35)
      brack=acd75(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd75
      complex(ki) :: brack
      acd75(1)=k2(iv1)
      acd75(2)=abb75(16)
      acd75(3)=l5(iv1)
      acd75(4)=abb75(24)
      acd75(5)=l6(iv1)
      acd75(6)=abb75(51)
      acd75(7)=k7(iv1)
      acd75(8)=e7(iv1)
      acd75(9)=abb75(49)
      acd75(10)=spvak1k2(iv1)
      acd75(11)=abb75(41)
      acd75(12)=spvak1k3(iv1)
      acd75(13)=abb75(19)
      acd75(14)=spvak4k2(iv1)
      acd75(15)=abb75(8)
      acd75(16)=spvak4k3(iv1)
      acd75(17)=abb75(27)
      acd75(18)=spval5k2(iv1)
      acd75(19)=abb75(28)
      acd75(20)=spval5k3(iv1)
      acd75(21)=abb75(77)
      acd75(22)=spvak2e7(iv1)
      acd75(23)=abb75(40)
      acd75(24)=spvae7l6(iv1)
      acd75(25)=abb75(15)
      acd75(26)=acd75(7)+acd75(5)
      acd75(26)=acd75(6)*acd75(26)
      acd75(27)=acd75(2)*acd75(1)
      acd75(28)=acd75(4)*acd75(3)
      acd75(29)=acd75(9)*acd75(8)
      acd75(30)=acd75(11)*acd75(10)
      acd75(31)=acd75(13)*acd75(12)
      acd75(32)=acd75(15)*acd75(14)
      acd75(33)=acd75(17)*acd75(16)
      acd75(34)=acd75(19)*acd75(18)
      acd75(35)=acd75(21)*acd75(20)
      acd75(36)=acd75(23)*acd75(22)
      acd75(37)=acd75(25)*acd75(24)
      brack=acd75(26)+acd75(27)+acd75(28)+acd75(29)+acd75(30)+acd75(31)+acd75(3&
      &2)+acd75(33)+acd75(34)+acd75(35)+acd75(36)+acd75(37)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd75
      complex(ki) :: brack
      acd75(1)=d(iv1,iv2)
      acd75(2)=abb75(58)
      acd75(3)=k2(iv1)
      acd75(4)=k2(iv2)
      acd75(5)=abb75(61)
      acd75(6)=l6(iv2)
      acd75(7)=abb75(62)
      acd75(8)=k7(iv2)
      acd75(9)=e7(iv2)
      acd75(10)=abb75(60)
      acd75(11)=spvak1k3(iv2)
      acd75(12)=abb75(34)
      acd75(13)=spval5k2(iv2)
      acd75(14)=abb75(9)
      acd75(15)=spval5k3(iv2)
      acd75(16)=abb75(63)
      acd75(17)=spvak2e7(iv2)
      acd75(18)=abb75(42)
      acd75(19)=spvae7l6(iv2)
      acd75(20)=abb75(74)
      acd75(21)=l6(iv1)
      acd75(22)=k7(iv1)
      acd75(23)=e7(iv1)
      acd75(24)=spvak1k3(iv1)
      acd75(25)=spval5k2(iv1)
      acd75(26)=spval5k3(iv1)
      acd75(27)=spvak2e7(iv1)
      acd75(28)=spvae7l6(iv1)
      acd75(29)=l5(iv1)
      acd75(30)=spvak4k3(iv2)
      acd75(31)=abb75(33)
      acd75(32)=l5(iv2)
      acd75(33)=spvak4k3(iv1)
      acd75(34)=abb75(17)
      acd75(35)=abb75(79)
      acd75(36)=abb75(21)
      acd75(37)=abb75(65)
      acd75(38)=spvak4k2(iv2)
      acd75(39)=abb75(25)
      acd75(40)=spvak4k2(iv1)
      acd75(41)=abb75(39)
      acd75(42)=spval5l6(iv2)
      acd75(43)=abb75(37)
      acd75(44)=spval5k7(iv2)
      acd75(45)=abb75(38)
      acd75(46)=spval5e7(iv2)
      acd75(47)=abb75(36)
      acd75(48)=spval5l6(iv1)
      acd75(49)=spval5k7(iv1)
      acd75(50)=spval5e7(iv1)
      acd75(51)=abb75(13)
      acd75(52)=abb75(7)
      acd75(53)=abb75(12)
      acd75(54)=spvak1k2(iv2)
      acd75(55)=abb75(45)
      acd75(56)=spvak1k2(iv1)
      acd75(57)=abb75(80)
      acd75(58)=abb75(72)
      acd75(59)=abb75(22)
      acd75(60)=abb75(26)
      acd75(61)=abb75(44)
      acd75(62)=abb75(43)
      acd75(63)=abb75(31)
      acd75(64)=acd75(19)*acd75(20)
      acd75(65)=acd75(17)*acd75(18)
      acd75(66)=acd75(9)*acd75(10)
      acd75(67)=acd75(6)+acd75(8)
      acd75(68)=acd75(7)*acd75(67)
      acd75(69)=acd75(11)*acd75(12)
      acd75(70)=acd75(15)*acd75(16)
      acd75(71)=acd75(13)*acd75(14)
      acd75(72)=acd75(4)*acd75(5)
      acd75(64)=2.0_ki*acd75(72)+acd75(71)+acd75(70)+acd75(69)+acd75(68)+acd75(&
      &66)+acd75(64)+acd75(65)
      acd75(64)=acd75(3)*acd75(64)
      acd75(65)=acd75(30)*acd75(53)
      acd75(66)=acd75(19)*acd75(52)
      acd75(68)=-acd75(34)*acd75(67)
      acd75(69)=acd75(17)*acd75(51)
      acd75(70)=acd75(9)*acd75(36)
      acd75(71)=acd75(54)*acd75(55)
      acd75(72)=acd75(11)*acd75(41)
      acd75(65)=acd75(72)+acd75(71)+acd75(70)+acd75(69)+acd75(68)+acd75(65)+acd&
      &75(66)
      acd75(65)=acd75(25)*acd75(65)
      acd75(66)=acd75(33)*acd75(53)
      acd75(68)=acd75(28)*acd75(52)
      acd75(69)=acd75(21)+acd75(22)
      acd75(70)=-acd75(34)*acd75(69)
      acd75(71)=acd75(27)*acd75(51)
      acd75(72)=acd75(23)*acd75(36)
      acd75(73)=acd75(56)*acd75(55)
      acd75(74)=acd75(24)*acd75(41)
      acd75(66)=acd75(74)+acd75(73)+acd75(72)+acd75(71)+acd75(70)+acd75(66)+acd&
      &75(68)
      acd75(66)=acd75(13)*acd75(66)
      acd75(68)=acd75(28)*acd75(20)
      acd75(70)=acd75(27)*acd75(18)
      acd75(71)=acd75(23)*acd75(10)
      acd75(72)=acd75(7)*acd75(69)
      acd75(73)=acd75(24)*acd75(12)
      acd75(74)=acd75(26)*acd75(16)
      acd75(75)=acd75(25)*acd75(14)
      acd75(68)=acd75(75)+acd75(74)+acd75(73)+acd75(72)+acd75(71)+acd75(68)+acd&
      &75(70)
      acd75(68)=acd75(4)*acd75(68)
      acd75(70)=acd75(46)*acd75(63)
      acd75(71)=acd75(44)*acd75(62)
      acd75(72)=acd75(42)*acd75(61)
      acd75(73)=acd75(30)*acd75(60)
      acd75(70)=acd75(73)+acd75(72)+acd75(70)+acd75(71)
      acd75(70)=acd75(56)*acd75(70)
      acd75(71)=acd75(50)*acd75(63)
      acd75(72)=acd75(49)*acd75(62)
      acd75(73)=acd75(48)*acd75(61)
      acd75(74)=acd75(33)*acd75(60)
      acd75(71)=acd75(74)+acd75(73)+acd75(71)+acd75(72)
      acd75(71)=acd75(54)*acd75(71)
      acd75(72)=acd75(19)*acd75(58)
      acd75(67)=acd75(35)*acd75(67)
      acd75(73)=acd75(17)*acd75(57)
      acd75(74)=acd75(9)*acd75(37)
      acd75(67)=acd75(74)+acd75(73)+acd75(72)+acd75(67)
      acd75(67)=acd75(26)*acd75(67)
      acd75(72)=acd75(28)*acd75(58)
      acd75(69)=acd75(35)*acd75(69)
      acd75(73)=acd75(27)*acd75(57)
      acd75(74)=acd75(23)*acd75(37)
      acd75(69)=acd75(74)+acd75(73)+acd75(72)+acd75(69)
      acd75(69)=acd75(15)*acd75(69)
      acd75(72)=acd75(46)*acd75(47)
      acd75(73)=acd75(44)*acd75(45)
      acd75(74)=acd75(42)*acd75(43)
      acd75(72)=acd75(74)+acd75(72)+acd75(73)
      acd75(72)=acd75(24)*acd75(72)
      acd75(73)=acd75(47)*acd75(50)
      acd75(74)=acd75(45)*acd75(49)
      acd75(75)=acd75(43)*acd75(48)
      acd75(73)=acd75(75)+acd75(73)+acd75(74)
      acd75(73)=acd75(11)*acd75(73)
      acd75(74)=acd75(17)*acd75(59)
      acd75(75)=acd75(9)*acd75(39)
      acd75(74)=acd75(75)+acd75(74)
      acd75(74)=acd75(40)*acd75(74)
      acd75(75)=acd75(27)*acd75(59)
      acd75(76)=acd75(23)*acd75(39)
      acd75(75)=acd75(76)+acd75(75)
      acd75(75)=acd75(38)*acd75(75)
      acd75(76)=acd75(33)*acd75(32)
      acd75(77)=acd75(30)*acd75(29)
      acd75(76)=acd75(77)+acd75(76)
      acd75(76)=acd75(31)*acd75(76)
      acd75(77)=acd75(1)*acd75(2)
      brack=acd75(64)+acd75(65)+acd75(66)+acd75(67)+acd75(68)+acd75(69)+acd75(7&
      &0)+acd75(71)+acd75(72)+acd75(73)+acd75(74)+acd75(75)+acd75(76)+2.0_ki*ac&
      &d75(77)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd75h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd75
      complex(ki) :: brack
      acd75(1)=d(iv1,iv2)
      acd75(2)=k2(iv3)
      acd75(3)=abb75(69)
      acd75(4)=l6(iv3)
      acd75(5)=abb75(68)
      acd75(6)=k7(iv3)
      acd75(7)=e7(iv3)
      acd75(8)=abb75(66)
      acd75(9)=spvak1k3(iv3)
      acd75(10)=abb75(32)
      acd75(11)=spvak2e7(iv3)
      acd75(12)=abb75(76)
      acd75(13)=spvae7l6(iv3)
      acd75(14)=abb75(73)
      acd75(15)=d(iv1,iv3)
      acd75(16)=k2(iv2)
      acd75(17)=l6(iv2)
      acd75(18)=k7(iv2)
      acd75(19)=e7(iv2)
      acd75(20)=spvak1k3(iv2)
      acd75(21)=spvak2e7(iv2)
      acd75(22)=spvae7l6(iv2)
      acd75(23)=d(iv2,iv3)
      acd75(24)=k2(iv1)
      acd75(25)=l6(iv1)
      acd75(26)=k7(iv1)
      acd75(27)=e7(iv1)
      acd75(28)=spvak1k3(iv1)
      acd75(29)=spvak2e7(iv1)
      acd75(30)=spvae7l6(iv1)
      acd75(31)=spvak4k3(iv2)
      acd75(32)=spval5k2(iv3)
      acd75(33)=abb75(14)
      acd75(34)=spvak4k3(iv3)
      acd75(35)=spval5k2(iv2)
      acd75(36)=spvak4k3(iv1)
      acd75(37)=spval5k2(iv1)
      acd75(38)=abb75(23)
      acd75(39)=abb75(20)
      acd75(40)=abb75(11)
      acd75(41)=abb75(10)
      acd75(42)=spvak1l6(iv3)
      acd75(43)=abb75(30)
      acd75(44)=spvak1k7(iv3)
      acd75(45)=abb75(29)
      acd75(46)=spvak1e7(iv3)
      acd75(47)=abb75(18)
      acd75(48)=spvak1l6(iv2)
      acd75(49)=spvak1k7(iv2)
      acd75(50)=spvak1e7(iv2)
      acd75(51)=spvak1k2(iv2)
      acd75(52)=spval5l6(iv3)
      acd75(53)=spval5k7(iv3)
      acd75(54)=spval5e7(iv3)
      acd75(55)=spvak1k2(iv3)
      acd75(56)=spval5l6(iv2)
      acd75(57)=spval5k7(iv2)
      acd75(58)=spval5e7(iv2)
      acd75(59)=spvak1l6(iv1)
      acd75(60)=spvak1k7(iv1)
      acd75(61)=spvak1e7(iv1)
      acd75(62)=spvak1k2(iv1)
      acd75(63)=spval5l6(iv1)
      acd75(64)=spval5k7(iv1)
      acd75(65)=spval5e7(iv1)
      acd75(66)=acd75(2)*acd75(33)
      acd75(67)=acd75(7)*acd75(39)
      acd75(68)=acd75(11)*acd75(40)
      acd75(69)=acd75(13)*acd75(41)
      acd75(70)=acd75(42)*acd75(43)
      acd75(71)=-acd75(44)*acd75(45)
      acd75(72)=acd75(46)*acd75(47)
      acd75(66)=acd75(72)+acd75(71)+acd75(70)+acd75(69)+acd75(68)+acd75(67)+acd&
      &75(66)
      acd75(67)=acd75(35)*acd75(36)
      acd75(68)=acd75(37)*acd75(31)
      acd75(67)=acd75(67)+acd75(68)
      acd75(66)=acd75(67)*acd75(66)
      acd75(68)=acd75(3)*acd75(2)
      acd75(69)=acd75(8)*acd75(7)
      acd75(70)=acd75(12)*acd75(11)
      acd75(71)=acd75(14)*acd75(13)
      acd75(72)=acd75(9)*acd75(10)
      acd75(68)=acd75(72)+acd75(71)+acd75(70)+acd75(69)+acd75(68)
      acd75(69)=2.0_ki*acd75(1)
      acd75(68)=acd75(69)*acd75(68)
      acd75(70)=-acd75(63)*acd75(43)
      acd75(71)=acd75(64)*acd75(45)
      acd75(72)=-acd75(65)*acd75(47)
      acd75(70)=acd75(72)+acd75(71)+acd75(70)
      acd75(71)=acd75(51)*acd75(34)
      acd75(72)=acd75(55)*acd75(31)
      acd75(71)=acd75(71)+acd75(72)
      acd75(70)=acd75(71)*acd75(70)
      acd75(71)=-acd75(52)*acd75(43)
      acd75(72)=acd75(53)*acd75(45)
      acd75(73)=-acd75(54)*acd75(47)
      acd75(71)=acd75(73)+acd75(72)+acd75(71)
      acd75(72)=acd75(51)*acd75(36)
      acd75(73)=acd75(62)*acd75(31)
      acd75(72)=acd75(72)+acd75(73)
      acd75(71)=acd75(72)*acd75(71)
      acd75(72)=-acd75(56)*acd75(43)
      acd75(73)=acd75(57)*acd75(45)
      acd75(74)=-acd75(58)*acd75(47)
      acd75(72)=acd75(74)+acd75(73)+acd75(72)
      acd75(73)=acd75(55)*acd75(36)
      acd75(74)=acd75(62)*acd75(34)
      acd75(73)=acd75(73)+acd75(74)
      acd75(72)=acd75(73)*acd75(72)
      acd75(73)=acd75(59)*acd75(43)
      acd75(74)=-acd75(60)*acd75(45)
      acd75(75)=acd75(61)*acd75(47)
      acd75(73)=acd75(75)+acd75(74)+acd75(73)
      acd75(74)=acd75(32)*acd75(31)
      acd75(75)=acd75(35)*acd75(34)
      acd75(74)=acd75(74)+acd75(75)
      acd75(73)=acd75(74)*acd75(73)
      acd75(75)=acd75(48)*acd75(43)
      acd75(76)=-acd75(49)*acd75(45)
      acd75(77)=acd75(50)*acd75(47)
      acd75(75)=acd75(77)+acd75(76)+acd75(75)
      acd75(76)=acd75(32)*acd75(36)
      acd75(77)=acd75(37)*acd75(34)
      acd75(76)=acd75(76)+acd75(77)
      acd75(75)=acd75(76)*acd75(75)
      acd75(77)=acd75(74)*acd75(38)
      acd75(78)=2.0_ki*acd75(23)
      acd75(79)=acd75(78)*acd75(5)
      acd75(77)=acd75(79)+acd75(77)
      acd75(79)=-acd75(26)-acd75(25)
      acd75(77)=acd75(77)*acd75(79)
      acd75(79)=acd75(76)*acd75(38)
      acd75(80)=2.0_ki*acd75(15)
      acd75(81)=acd75(80)*acd75(5)
      acd75(79)=acd75(81)+acd75(79)
      acd75(81)=-acd75(18)-acd75(17)
      acd75(79)=acd75(79)*acd75(81)
      acd75(67)=acd75(67)*acd75(38)
      acd75(69)=acd75(69)*acd75(5)
      acd75(67)=acd75(67)+acd75(69)
      acd75(69)=-acd75(6)-acd75(4)
      acd75(67)=acd75(67)*acd75(69)
      acd75(69)=acd75(20)*acd75(80)
      acd75(81)=acd75(28)*acd75(78)
      acd75(69)=acd75(81)+acd75(69)
      acd75(69)=acd75(10)*acd75(69)
      acd75(81)=acd75(33)*acd75(76)
      acd75(82)=acd75(3)*acd75(80)
      acd75(81)=acd75(81)+acd75(82)
      acd75(81)=acd75(16)*acd75(81)
      acd75(82)=acd75(39)*acd75(76)
      acd75(83)=acd75(8)*acd75(80)
      acd75(82)=acd75(82)+acd75(83)
      acd75(82)=acd75(19)*acd75(82)
      acd75(83)=acd75(40)*acd75(76)
      acd75(84)=acd75(12)*acd75(80)
      acd75(83)=acd75(83)+acd75(84)
      acd75(83)=acd75(21)*acd75(83)
      acd75(76)=acd75(41)*acd75(76)
      acd75(80)=acd75(14)*acd75(80)
      acd75(76)=acd75(76)+acd75(80)
      acd75(76)=acd75(22)*acd75(76)
      acd75(80)=acd75(33)*acd75(74)
      acd75(84)=acd75(3)*acd75(78)
      acd75(80)=acd75(80)+acd75(84)
      acd75(80)=acd75(24)*acd75(80)
      acd75(84)=acd75(39)*acd75(74)
      acd75(85)=acd75(8)*acd75(78)
      acd75(84)=acd75(84)+acd75(85)
      acd75(84)=acd75(27)*acd75(84)
      acd75(85)=acd75(40)*acd75(74)
      acd75(86)=acd75(12)*acd75(78)
      acd75(85)=acd75(85)+acd75(86)
      acd75(85)=acd75(29)*acd75(85)
      acd75(74)=acd75(41)*acd75(74)
      acd75(78)=acd75(14)*acd75(78)
      acd75(74)=acd75(74)+acd75(78)
      acd75(74)=acd75(30)*acd75(74)
      brack=acd75(66)+acd75(67)+acd75(68)+acd75(69)+acd75(70)+acd75(71)+acd75(7&
      &2)+acd75(73)+acd75(74)+acd75(75)+acd75(76)+acd75(77)+acd75(79)+acd75(80)&
      &+acd75(81)+acd75(82)+acd75(83)+acd75(84)+acd75(85)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd75h2
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
!---#[ subroutine reconstruct_d75:
   subroutine     reconstruct_d75(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_75:
      coeffs%coeffs_75%c0 = derivative(czip)
      coeffs%coeffs_75%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_75%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_75%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_75%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_75%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_75%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_75%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_75%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_75%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_75%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_75%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_75%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_75%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_75%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_75%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_75%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_75%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_75%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_75%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_75%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_75%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_75%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_75%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_75%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_75%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_75%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_75%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_75%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_75%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_75%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_75%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_75%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_75%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_75%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_75:
   end subroutine reconstruct_d75
!---#] subroutine reconstruct_d75:
end module     p0_dbaru_epnebbbarg_d75h2l1d
