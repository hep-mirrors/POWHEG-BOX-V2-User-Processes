module     p1_dbarc_epnebbbarg_d77h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d77h2l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d77
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd77h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd77
      complex(ki) :: brack
      acd77(1)=dotproduct(k2,qshift)
      acd77(2)=abb77(29)
      acd77(3)=dotproduct(l6,qshift)
      acd77(4)=abb77(25)
      acd77(5)=dotproduct(qshift,qshift)
      acd77(6)=abb77(12)
      acd77(7)=dotproduct(qshift,spvak1k2)
      acd77(8)=dotproduct(qshift,spvak4k3)
      acd77(9)=abb77(36)
      acd77(10)=abb77(18)
      acd77(11)=dotproduct(qshift,spvak7k2)
      acd77(12)=abb77(31)
      acd77(13)=abb77(27)
      acd77(14)=dotproduct(qshift,spvak4k2)
      acd77(15)=abb77(11)
      acd77(16)=abb77(32)
      acd77(17)=dotproduct(qshift,spvak4l6)
      acd77(18)=abb77(26)
      acd77(19)=abb77(14)
      acd77(20)=abb77(23)
      acd77(21)=abb77(38)
      acd77(22)=abb77(15)
      acd77(23)=abb77(78)
      acd77(24)=abb77(37)
      acd77(25)=abb77(33)
      acd77(26)=abb77(9)
      acd77(27)=abb77(30)
      acd77(28)=dotproduct(qshift,spvak2k3)
      acd77(29)=abb77(17)
      acd77(30)=dotproduct(qshift,spvak2l6)
      acd77(31)=abb77(22)
      acd77(32)=abb77(46)
      acd77(33)=abb77(28)
      acd77(34)=dotproduct(qshift,spval6k2)
      acd77(35)=abb77(34)
      acd77(36)=abb77(20)
      acd77(37)=abb77(19)
      acd77(38)=abb77(16)
      acd77(39)=abb77(24)
      acd77(40)=abb77(44)
      acd77(41)=abb77(41)
      acd77(42)=dotproduct(qshift,spvak1l6)
      acd77(43)=abb77(45)
      acd77(44)=dotproduct(qshift,spvak2k1)
      acd77(45)=abb77(39)
      acd77(46)=dotproduct(qshift,spvak2l5)
      acd77(47)=abb77(43)
      acd77(48)=dotproduct(qshift,spvak2k7)
      acd77(49)=abb77(40)
      acd77(50)=abb77(10)
      acd77(51)=dotproduct(qshift,spvak7l6)
      acd77(52)=abb77(21)
      acd77(53)=abb77(13)
      acd77(54)=-acd77(11)*acd77(12)
      acd77(55)=-acd77(7)*acd77(9)
      acd77(54)=acd77(55)+acd77(13)+acd77(54)
      acd77(54)=acd77(8)*acd77(54)
      acd77(55)=acd77(17)*acd77(18)
      acd77(56)=acd77(14)*acd77(15)
      acd77(57)=-acd77(5)*acd77(6)
      acd77(58)=acd77(3)*acd77(4)
      acd77(59)=acd77(11)*acd77(16)
      acd77(60)=acd77(7)*acd77(10)
      acd77(61)=acd77(1)*acd77(2)
      acd77(54)=acd77(61)+acd77(54)+acd77(60)+acd77(59)+acd77(58)+acd77(57)+acd&
      &77(56)-acd77(19)+acd77(55)
      acd77(54)=acd77(1)*acd77(54)
      acd77(55)=-acd77(3)+acd77(5)
      acd77(55)=acd77(20)*acd77(55)
      acd77(56)=acd77(34)*acd77(35)
      acd77(57)=acd77(11)*acd77(33)
      acd77(58)=acd77(7)*acd77(27)
      acd77(55)=acd77(58)+acd77(57)-acd77(36)+acd77(56)+acd77(55)
      acd77(55)=acd77(8)*acd77(55)
      acd77(56)=-acd77(17)*acd77(25)
      acd77(57)=-acd77(14)*acd77(24)
      acd77(56)=acd77(57)+acd77(26)+acd77(56)
      acd77(56)=acd77(5)*acd77(56)
      acd77(57)=acd77(17)*acd77(22)
      acd77(58)=acd77(14)*acd77(21)
      acd77(57)=acd77(58)-acd77(23)+acd77(57)
      acd77(57)=acd77(3)*acd77(57)
      acd77(58)=acd77(30)*acd77(38)
      acd77(59)=acd77(28)*acd77(37)
      acd77(58)=acd77(59)-acd77(39)+acd77(58)
      acd77(58)=acd77(11)*acd77(58)
      acd77(59)=acd77(30)*acd77(31)
      acd77(60)=acd77(28)*acd77(29)
      acd77(59)=acd77(60)-acd77(32)+acd77(59)
      acd77(59)=acd77(7)*acd77(59)
      acd77(60)=-acd77(51)*acd77(52)
      acd77(61)=-acd77(48)*acd77(49)
      acd77(62)=-acd77(46)*acd77(47)
      acd77(63)=-acd77(44)*acd77(45)
      acd77(64)=-acd77(42)*acd77(43)
      acd77(65)=-acd77(34)*acd77(50)
      acd77(66)=-acd77(30)*acd77(41)
      acd77(67)=-acd77(28)*acd77(40)
      brack=acd77(53)+acd77(54)+acd77(55)+acd77(56)+acd77(57)+acd77(58)+acd77(5&
      &9)+acd77(60)+acd77(61)+acd77(62)+acd77(63)+acd77(64)+acd77(65)+acd77(66)&
      &+acd77(67)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd77h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(83) :: acd77
      complex(ki) :: brack
      acd77(1)=k2(iv1)
      acd77(2)=dotproduct(k2,qshift)
      acd77(3)=abb77(29)
      acd77(4)=dotproduct(l6,qshift)
      acd77(5)=abb77(25)
      acd77(6)=dotproduct(qshift,qshift)
      acd77(7)=abb77(12)
      acd77(8)=dotproduct(qshift,spvak1k2)
      acd77(9)=dotproduct(qshift,spvak4k3)
      acd77(10)=abb77(36)
      acd77(11)=abb77(18)
      acd77(12)=dotproduct(qshift,spvak7k2)
      acd77(13)=abb77(31)
      acd77(14)=abb77(27)
      acd77(15)=dotproduct(qshift,spvak4k2)
      acd77(16)=abb77(11)
      acd77(17)=abb77(32)
      acd77(18)=dotproduct(qshift,spvak4l6)
      acd77(19)=abb77(26)
      acd77(20)=abb77(14)
      acd77(21)=l6(iv1)
      acd77(22)=abb77(23)
      acd77(23)=abb77(38)
      acd77(24)=abb77(15)
      acd77(25)=abb77(78)
      acd77(26)=qshift(iv1)
      acd77(27)=abb77(37)
      acd77(28)=abb77(33)
      acd77(29)=abb77(9)
      acd77(30)=spvak1k2(iv1)
      acd77(31)=abb77(30)
      acd77(32)=dotproduct(qshift,spvak2k3)
      acd77(33)=abb77(17)
      acd77(34)=dotproduct(qshift,spvak2l6)
      acd77(35)=abb77(22)
      acd77(36)=abb77(46)
      acd77(37)=spvak4k3(iv1)
      acd77(38)=abb77(28)
      acd77(39)=dotproduct(qshift,spval6k2)
      acd77(40)=abb77(34)
      acd77(41)=abb77(20)
      acd77(42)=spvak4k2(iv1)
      acd77(43)=spvak7k2(iv1)
      acd77(44)=abb77(19)
      acd77(45)=abb77(16)
      acd77(46)=abb77(24)
      acd77(47)=spvak4l6(iv1)
      acd77(48)=spvak2k3(iv1)
      acd77(49)=abb77(44)
      acd77(50)=spvak2l6(iv1)
      acd77(51)=abb77(41)
      acd77(52)=spvak1l6(iv1)
      acd77(53)=abb77(45)
      acd77(54)=spvak2k1(iv1)
      acd77(55)=abb77(39)
      acd77(56)=spvak2l5(iv1)
      acd77(57)=abb77(43)
      acd77(58)=spvak2k7(iv1)
      acd77(59)=abb77(40)
      acd77(60)=spval6k2(iv1)
      acd77(61)=abb77(10)
      acd77(62)=spvak7l6(iv1)
      acd77(63)=abb77(21)
      acd77(64)=acd77(12)*acd77(13)
      acd77(65)=acd77(8)*acd77(10)
      acd77(64)=-acd77(14)+acd77(64)+acd77(65)
      acd77(65)=acd77(37)*acd77(64)
      acd77(66)=acd77(43)*acd77(13)
      acd77(67)=acd77(30)*acd77(10)
      acd77(66)=acd77(66)+acd77(67)
      acd77(66)=acd77(9)*acd77(66)
      acd77(67)=-acd77(47)*acd77(19)
      acd77(68)=-acd77(42)*acd77(16)
      acd77(69)=2.0_ki*acd77(26)
      acd77(70)=acd77(7)*acd77(69)
      acd77(71)=-acd77(21)*acd77(5)
      acd77(72)=-acd77(43)*acd77(17)
      acd77(73)=-acd77(30)*acd77(11)
      acd77(74)=acd77(1)*acd77(3)
      acd77(65)=-2.0_ki*acd77(74)+acd77(66)+acd77(65)+acd77(73)+acd77(72)+acd77&
      &(71)+acd77(70)+acd77(67)+acd77(68)
      acd77(65)=acd77(2)*acd77(65)
      acd77(64)=acd77(9)*acd77(64)
      acd77(66)=-acd77(18)*acd77(19)
      acd77(67)=-acd77(15)*acd77(16)
      acd77(68)=acd77(6)*acd77(7)
      acd77(70)=-acd77(4)*acd77(5)
      acd77(71)=-acd77(12)*acd77(17)
      acd77(72)=-acd77(8)*acd77(11)
      acd77(64)=acd77(64)+acd77(72)+acd77(71)+acd77(70)+acd77(68)+acd77(67)+acd&
      &77(20)+acd77(66)
      acd77(64)=acd77(1)*acd77(64)
      acd77(66)=acd77(4)-acd77(6)
      acd77(66)=acd77(22)*acd77(66)
      acd77(67)=-acd77(40)*acd77(39)
      acd77(68)=-acd77(12)*acd77(38)
      acd77(70)=-acd77(8)*acd77(31)
      acd77(66)=acd77(70)+acd77(68)+acd77(41)+acd77(67)+acd77(66)
      acd77(66)=acd77(37)*acd77(66)
      acd77(67)=acd77(21)-acd77(69)
      acd77(67)=acd77(22)*acd77(67)
      acd77(68)=-acd77(40)*acd77(60)
      acd77(70)=-acd77(43)*acd77(38)
      acd77(71)=-acd77(30)*acd77(31)
      acd77(67)=acd77(71)+acd77(70)+acd77(68)+acd77(67)
      acd77(67)=acd77(9)*acd77(67)
      acd77(68)=acd77(47)*acd77(28)
      acd77(70)=acd77(42)*acd77(27)
      acd77(68)=acd77(68)+acd77(70)
      acd77(68)=acd77(6)*acd77(68)
      acd77(70)=-acd77(47)*acd77(24)
      acd77(71)=-acd77(42)*acd77(23)
      acd77(70)=acd77(70)+acd77(71)
      acd77(70)=acd77(4)*acd77(70)
      acd77(71)=acd77(18)*acd77(28)
      acd77(72)=acd77(15)*acd77(27)
      acd77(71)=acd77(72)-acd77(29)+acd77(71)
      acd77(69)=acd77(71)*acd77(69)
      acd77(71)=-acd77(18)*acd77(24)
      acd77(72)=-acd77(15)*acd77(23)
      acd77(71)=acd77(72)+acd77(25)+acd77(71)
      acd77(71)=acd77(21)*acd77(71)
      acd77(72)=-acd77(34)*acd77(45)
      acd77(73)=-acd77(32)*acd77(44)
      acd77(72)=acd77(73)+acd77(46)+acd77(72)
      acd77(72)=acd77(43)*acd77(72)
      acd77(73)=-acd77(34)*acd77(35)
      acd77(74)=-acd77(32)*acd77(33)
      acd77(73)=acd77(74)+acd77(36)+acd77(73)
      acd77(73)=acd77(30)*acd77(73)
      acd77(74)=-acd77(50)*acd77(45)
      acd77(75)=-acd77(48)*acd77(44)
      acd77(74)=acd77(74)+acd77(75)
      acd77(74)=acd77(12)*acd77(74)
      acd77(75)=-acd77(50)*acd77(35)
      acd77(76)=-acd77(48)*acd77(33)
      acd77(75)=acd77(75)+acd77(76)
      acd77(75)=acd77(8)*acd77(75)
      acd77(76)=acd77(62)*acd77(63)
      acd77(77)=acd77(58)*acd77(59)
      acd77(78)=acd77(56)*acd77(57)
      acd77(79)=acd77(54)*acd77(55)
      acd77(80)=acd77(52)*acd77(53)
      acd77(81)=acd77(60)*acd77(61)
      acd77(82)=acd77(50)*acd77(51)
      acd77(83)=acd77(48)*acd77(49)
      brack=acd77(64)+acd77(65)+acd77(66)+acd77(67)+acd77(68)+acd77(69)+acd77(7&
      &0)+acd77(71)+acd77(72)+acd77(73)+acd77(74)+acd77(75)+acd77(76)+acd77(77)&
      &+acd77(78)+acd77(79)+acd77(80)+acd77(81)+acd77(82)+acd77(83)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd77h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd77
      complex(ki) :: brack
      acd77(1)=d(iv1,iv2)
      acd77(2)=dotproduct(k2,qshift)
      acd77(3)=abb77(12)
      acd77(4)=dotproduct(qshift,spvak4k2)
      acd77(5)=abb77(37)
      acd77(6)=dotproduct(qshift,spvak4k3)
      acd77(7)=abb77(23)
      acd77(8)=dotproduct(qshift,spvak4l6)
      acd77(9)=abb77(33)
      acd77(10)=abb77(9)
      acd77(11)=k2(iv1)
      acd77(12)=k2(iv2)
      acd77(13)=abb77(29)
      acd77(14)=l6(iv2)
      acd77(15)=abb77(25)
      acd77(16)=qshift(iv2)
      acd77(17)=spvak4k2(iv2)
      acd77(18)=abb77(11)
      acd77(19)=spvak4k3(iv2)
      acd77(20)=dotproduct(qshift,spvak1k2)
      acd77(21)=abb77(36)
      acd77(22)=dotproduct(qshift,spvak7k2)
      acd77(23)=abb77(31)
      acd77(24)=abb77(27)
      acd77(25)=spvak4l6(iv2)
      acd77(26)=abb77(26)
      acd77(27)=spvak1k2(iv2)
      acd77(28)=abb77(18)
      acd77(29)=spvak7k2(iv2)
      acd77(30)=abb77(32)
      acd77(31)=l6(iv1)
      acd77(32)=qshift(iv1)
      acd77(33)=spvak4k2(iv1)
      acd77(34)=spvak4k3(iv1)
      acd77(35)=spvak4l6(iv1)
      acd77(36)=spvak1k2(iv1)
      acd77(37)=spvak7k2(iv1)
      acd77(38)=abb77(38)
      acd77(39)=abb77(15)
      acd77(40)=abb77(30)
      acd77(41)=abb77(28)
      acd77(42)=spval6k2(iv2)
      acd77(43)=abb77(34)
      acd77(44)=spval6k2(iv1)
      acd77(45)=spvak2k3(iv2)
      acd77(46)=abb77(17)
      acd77(47)=spvak2l6(iv2)
      acd77(48)=abb77(22)
      acd77(49)=spvak2k3(iv1)
      acd77(50)=spvak2l6(iv1)
      acd77(51)=abb77(19)
      acd77(52)=abb77(16)
      acd77(53)=acd77(23)*acd77(29)
      acd77(54)=acd77(21)*acd77(27)
      acd77(53)=acd77(53)+acd77(54)
      acd77(54)=-acd77(6)*acd77(53)
      acd77(55)=acd77(23)*acd77(22)
      acd77(56)=acd77(21)*acd77(20)
      acd77(55)=acd77(55)+acd77(56)-acd77(24)
      acd77(56)=-acd77(19)*acd77(55)
      acd77(57)=acd77(25)*acd77(26)
      acd77(58)=acd77(17)*acd77(18)
      acd77(59)=2.0_ki*acd77(16)
      acd77(60)=-acd77(3)*acd77(59)
      acd77(61)=acd77(14)*acd77(15)
      acd77(62)=acd77(29)*acd77(30)
      acd77(63)=acd77(27)*acd77(28)
      acd77(64)=acd77(12)*acd77(13)
      acd77(54)=2.0_ki*acd77(64)+acd77(56)+acd77(63)+acd77(62)+acd77(61)+acd77(&
      &60)+acd77(57)+acd77(58)+acd77(54)
      acd77(54)=acd77(11)*acd77(54)
      acd77(56)=acd77(23)*acd77(37)
      acd77(57)=acd77(21)*acd77(36)
      acd77(56)=acd77(56)+acd77(57)
      acd77(57)=-acd77(6)*acd77(56)
      acd77(55)=-acd77(34)*acd77(55)
      acd77(58)=acd77(35)*acd77(26)
      acd77(60)=acd77(33)*acd77(18)
      acd77(61)=2.0_ki*acd77(32)
      acd77(62)=-acd77(3)*acd77(61)
      acd77(63)=acd77(31)*acd77(15)
      acd77(64)=acd77(37)*acd77(30)
      acd77(65)=acd77(36)*acd77(28)
      acd77(55)=acd77(55)+acd77(65)+acd77(64)+acd77(63)+acd77(62)+acd77(58)+acd&
      &77(60)+acd77(57)
      acd77(55)=acd77(12)*acd77(55)
      acd77(53)=-acd77(2)*acd77(53)
      acd77(57)=acd77(43)*acd77(42)
      acd77(58)=acd77(59)-acd77(14)
      acd77(58)=acd77(7)*acd77(58)
      acd77(60)=acd77(29)*acd77(41)
      acd77(62)=acd77(27)*acd77(40)
      acd77(53)=acd77(62)+acd77(60)+acd77(57)+acd77(58)+acd77(53)
      acd77(53)=acd77(34)*acd77(53)
      acd77(56)=-acd77(2)*acd77(56)
      acd77(57)=acd77(43)*acd77(44)
      acd77(58)=acd77(61)-acd77(31)
      acd77(58)=acd77(7)*acd77(58)
      acd77(60)=acd77(37)*acd77(41)
      acd77(62)=acd77(36)*acd77(40)
      acd77(56)=acd77(62)+acd77(60)+acd77(57)+acd77(58)+acd77(56)
      acd77(56)=acd77(19)*acd77(56)
      acd77(57)=-acd77(9)*acd77(8)
      acd77(58)=-acd77(5)*acd77(4)
      acd77(60)=acd77(6)*acd77(7)
      acd77(62)=-acd77(2)*acd77(3)
      acd77(57)=acd77(62)+acd77(60)+acd77(58)+acd77(10)+acd77(57)
      acd77(57)=acd77(1)*acd77(57)
      acd77(58)=-acd77(9)*acd77(25)
      acd77(60)=-acd77(5)*acd77(17)
      acd77(58)=acd77(58)+acd77(60)
      acd77(58)=acd77(58)*acd77(61)
      acd77(60)=acd77(25)*acd77(39)
      acd77(61)=acd77(17)*acd77(38)
      acd77(60)=acd77(60)+acd77(61)
      acd77(60)=acd77(31)*acd77(60)
      acd77(61)=-acd77(9)*acd77(35)
      acd77(62)=-acd77(5)*acd77(33)
      acd77(61)=acd77(61)+acd77(62)
      acd77(59)=acd77(61)*acd77(59)
      acd77(61)=acd77(35)*acd77(39)
      acd77(62)=acd77(33)*acd77(38)
      acd77(61)=acd77(61)+acd77(62)
      acd77(61)=acd77(14)*acd77(61)
      acd77(62)=acd77(47)*acd77(52)
      acd77(63)=acd77(45)*acd77(51)
      acd77(62)=acd77(62)+acd77(63)
      acd77(62)=acd77(37)*acd77(62)
      acd77(63)=acd77(47)*acd77(48)
      acd77(64)=acd77(45)*acd77(46)
      acd77(63)=acd77(63)+acd77(64)
      acd77(63)=acd77(36)*acd77(63)
      acd77(64)=acd77(50)*acd77(52)
      acd77(65)=acd77(49)*acd77(51)
      acd77(64)=acd77(64)+acd77(65)
      acd77(64)=acd77(29)*acd77(64)
      acd77(65)=acd77(48)*acd77(50)
      acd77(66)=acd77(46)*acd77(49)
      acd77(65)=acd77(65)+acd77(66)
      acd77(65)=acd77(27)*acd77(65)
      brack=acd77(53)+acd77(54)+acd77(55)+acd77(56)+2.0_ki*acd77(57)+acd77(58)+&
      &acd77(59)+acd77(60)+acd77(61)+acd77(62)+acd77(63)+acd77(64)+acd77(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd77h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd77
      complex(ki) :: brack
      acd77(1)=d(iv1,iv2)
      acd77(2)=k2(iv3)
      acd77(3)=abb77(12)
      acd77(4)=spvak4k2(iv3)
      acd77(5)=abb77(37)
      acd77(6)=spvak4k3(iv3)
      acd77(7)=abb77(23)
      acd77(8)=spvak4l6(iv3)
      acd77(9)=abb77(33)
      acd77(10)=d(iv1,iv3)
      acd77(11)=k2(iv2)
      acd77(12)=spvak4k2(iv2)
      acd77(13)=spvak4k3(iv2)
      acd77(14)=spvak4l6(iv2)
      acd77(15)=d(iv2,iv3)
      acd77(16)=k2(iv1)
      acd77(17)=spvak4k2(iv1)
      acd77(18)=spvak4k3(iv1)
      acd77(19)=spvak4l6(iv1)
      acd77(20)=spvak1k2(iv3)
      acd77(21)=abb77(36)
      acd77(22)=spvak7k2(iv3)
      acd77(23)=abb77(31)
      acd77(24)=spvak1k2(iv2)
      acd77(25)=spvak7k2(iv2)
      acd77(26)=spvak1k2(iv1)
      acd77(27)=spvak7k2(iv1)
      acd77(28)=acd77(16)*acd77(13)
      acd77(29)=acd77(18)*acd77(11)
      acd77(28)=acd77(28)+acd77(29)
      acd77(29)=acd77(20)*acd77(28)
      acd77(30)=acd77(16)*acd77(6)
      acd77(31)=acd77(18)*acd77(2)
      acd77(30)=acd77(30)+acd77(31)
      acd77(31)=acd77(24)*acd77(30)
      acd77(32)=acd77(11)*acd77(6)
      acd77(33)=acd77(13)*acd77(2)
      acd77(32)=acd77(32)+acd77(33)
      acd77(33)=acd77(26)*acd77(32)
      acd77(29)=acd77(33)+acd77(31)+acd77(29)
      acd77(29)=acd77(21)*acd77(29)
      acd77(28)=acd77(22)*acd77(28)
      acd77(30)=acd77(25)*acd77(30)
      acd77(31)=acd77(27)*acd77(32)
      acd77(28)=acd77(31)+acd77(30)+acd77(28)
      acd77(28)=acd77(23)*acd77(28)
      acd77(30)=acd77(1)*acd77(2)
      acd77(31)=acd77(10)*acd77(11)
      acd77(32)=acd77(15)*acd77(16)
      acd77(30)=acd77(32)+acd77(30)+acd77(31)
      acd77(30)=acd77(3)*acd77(30)
      acd77(31)=-acd77(1)*acd77(6)
      acd77(32)=-acd77(10)*acd77(13)
      acd77(33)=-acd77(15)*acd77(18)
      acd77(31)=acd77(33)+acd77(31)+acd77(32)
      acd77(31)=acd77(7)*acd77(31)
      acd77(30)=acd77(30)+acd77(31)
      acd77(31)=acd77(8)*acd77(1)
      acd77(32)=acd77(14)*acd77(10)
      acd77(33)=acd77(19)*acd77(15)
      acd77(31)=acd77(33)+acd77(32)+acd77(31)
      acd77(32)=2.0_ki*acd77(9)
      acd77(31)=acd77(32)*acd77(31)
      acd77(32)=acd77(4)*acd77(1)
      acd77(33)=acd77(12)*acd77(10)
      acd77(34)=acd77(17)*acd77(15)
      acd77(32)=acd77(34)+acd77(33)+acd77(32)
      acd77(33)=2.0_ki*acd77(5)
      acd77(32)=acd77(33)*acd77(32)
      brack=acd77(28)+acd77(29)+2.0_ki*acd77(30)+acd77(31)+acd77(32)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd77h2
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
      qshift = k6
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
!---#[ subroutine reconstruct_d77:
   subroutine     reconstruct_d77(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_77:
      coeffs%coeffs_77%c0 = derivative(czip)
      coeffs%coeffs_77%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_77%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_77%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_77%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_77%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_77%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_77%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_77%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_77%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_77%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_77%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_77%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_77%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_77%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_77%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_77%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_77%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_77%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_77%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_77%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_77%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_77%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_77%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_77%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_77%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_77%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_77%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_77%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_77%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_77%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_77%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_77%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_77%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_77%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_77:
   end subroutine reconstruct_d77
!---#] subroutine reconstruct_d77:
end module     p1_dbarc_epnebbbarg_d77h2l1d
