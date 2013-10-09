module     p1_dbarc_epnebbbarg_d21h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d21h3l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d21
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd21
      complex(ki) :: brack
      acd21(1)=dotproduct(k1,qshift)
      acd21(2)=dotproduct(qshift,spvak2l5)
      acd21(3)=abb21(49)
      acd21(4)=dotproduct(qshift,spvak2l6)
      acd21(5)=abb21(47)
      acd21(6)=abb21(17)
      acd21(7)=dotproduct(k2,qshift)
      acd21(8)=abb21(42)
      acd21(9)=abb21(13)
      acd21(10)=abb21(11)
      acd21(11)=dotproduct(k3,qshift)
      acd21(12)=abb21(71)
      acd21(13)=abb21(123)
      acd21(14)=abb21(40)
      acd21(15)=dotproduct(k4,qshift)
      acd21(16)=dotproduct(l5,qshift)
      acd21(17)=abb21(66)
      acd21(18)=abb21(122)
      acd21(19)=abb21(26)
      acd21(20)=dotproduct(l6,qshift)
      acd21(21)=dotproduct(k7,qshift)
      acd21(22)=abb21(33)
      acd21(23)=abb21(45)
      acd21(24)=abb21(275)
      acd21(25)=dotproduct(e7,qshift)
      acd21(26)=abb21(25)
      acd21(27)=abb21(35)
      acd21(28)=abb21(156)
      acd21(29)=dotproduct(qshift,qshift)
      acd21(30)=abb21(18)
      acd21(31)=dotproduct(qshift,spvak1k2)
      acd21(32)=abb21(32)
      acd21(33)=dotproduct(qshift,spvak1l5)
      acd21(34)=abb21(20)
      acd21(35)=dotproduct(qshift,spvak1l6)
      acd21(36)=abb21(54)
      acd21(37)=dotproduct(qshift,spvak4k2)
      acd21(38)=abb21(12)
      acd21(39)=dotproduct(qshift,spvak4k3)
      acd21(40)=abb21(31)
      acd21(41)=dotproduct(qshift,spvae7k2)
      acd21(42)=abb21(22)
      acd21(43)=abb21(19)
      acd21(44)=abb21(23)
      acd21(45)=abb21(16)
      acd21(46)=abb21(34)
      acd21(47)=abb21(30)
      acd21(48)=abb21(69)
      acd21(49)=abb21(57)
      acd21(50)=abb21(15)
      acd21(51)=abb21(14)
      acd21(52)=abb21(29)
      acd21(53)=abb21(21)
      acd21(54)=abb21(24)
      acd21(55)=abb21(27)
      acd21(56)=abb21(64)
      acd21(57)=acd21(3)*acd21(1)
      acd21(58)=acd21(8)*acd21(7)
      acd21(59)=acd21(22)*acd21(21)
      acd21(60)=acd21(26)*acd21(25)
      acd21(61)=acd21(32)*acd21(31)
      acd21(62)=acd21(34)*acd21(33)
      acd21(63)=acd21(36)*acd21(35)
      acd21(64)=acd21(38)*acd21(37)
      acd21(65)=acd21(40)*acd21(39)
      acd21(66)=acd21(42)*acd21(41)
      acd21(57)=-acd21(43)+acd21(66)+acd21(65)+acd21(64)+acd21(63)+acd21(62)+ac&
      &d21(61)+acd21(60)+acd21(59)+acd21(58)+acd21(57)
      acd21(57)=acd21(2)*acd21(57)
      acd21(58)=acd21(5)*acd21(1)
      acd21(59)=acd21(9)*acd21(7)
      acd21(60)=acd21(23)*acd21(21)
      acd21(61)=acd21(27)*acd21(25)
      acd21(62)=acd21(44)*acd21(31)
      acd21(63)=acd21(45)*acd21(33)
      acd21(64)=acd21(46)*acd21(35)
      acd21(65)=acd21(47)*acd21(37)
      acd21(66)=acd21(48)*acd21(39)
      acd21(67)=acd21(49)*acd21(41)
      acd21(58)=-acd21(50)+acd21(67)+acd21(66)+acd21(65)+acd21(64)+acd21(63)+ac&
      &d21(62)+acd21(61)+acd21(60)+acd21(59)+acd21(58)
      acd21(58)=acd21(4)*acd21(58)
      acd21(59)=acd21(17)*acd21(2)
      acd21(60)=acd21(18)*acd21(4)
      acd21(59)=-acd21(19)+acd21(60)+acd21(59)
      acd21(60)=acd21(20)+acd21(16)
      acd21(59)=acd21(60)*acd21(59)
      acd21(60)=-acd21(12)*acd21(2)
      acd21(61)=-acd21(13)*acd21(4)
      acd21(60)=acd21(14)+acd21(60)+acd21(61)
      acd21(61)=acd21(15)+acd21(11)
      acd21(60)=acd21(61)*acd21(60)
      acd21(61)=-acd21(6)*acd21(1)
      acd21(62)=-acd21(10)*acd21(7)
      acd21(63)=-acd21(24)*acd21(21)
      acd21(64)=-acd21(28)*acd21(25)
      acd21(65)=acd21(30)*acd21(29)
      acd21(66)=-acd21(51)*acd21(33)
      acd21(67)=-acd21(52)*acd21(35)
      acd21(68)=-acd21(53)*acd21(37)
      acd21(69)=-acd21(54)*acd21(39)
      acd21(70)=-acd21(55)*acd21(41)
      brack=acd21(56)+acd21(57)+acd21(58)+acd21(59)+acd21(60)+acd21(61)+acd21(6&
      &2)+acd21(63)+acd21(64)+acd21(65)+acd21(66)+acd21(67)+acd21(68)+acd21(69)&
      &+acd21(70)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd21
      complex(ki) :: brack
      acd21(1)=k1(iv1)
      acd21(2)=dotproduct(qshift,spvak2l5)
      acd21(3)=abb21(49)
      acd21(4)=dotproduct(qshift,spvak2l6)
      acd21(5)=abb21(47)
      acd21(6)=abb21(17)
      acd21(7)=k2(iv1)
      acd21(8)=abb21(42)
      acd21(9)=abb21(13)
      acd21(10)=abb21(11)
      acd21(11)=k3(iv1)
      acd21(12)=abb21(71)
      acd21(13)=abb21(123)
      acd21(14)=abb21(40)
      acd21(15)=k4(iv1)
      acd21(16)=l5(iv1)
      acd21(17)=abb21(66)
      acd21(18)=abb21(122)
      acd21(19)=abb21(26)
      acd21(20)=l6(iv1)
      acd21(21)=k7(iv1)
      acd21(22)=abb21(33)
      acd21(23)=abb21(45)
      acd21(24)=abb21(275)
      acd21(25)=e7(iv1)
      acd21(26)=abb21(25)
      acd21(27)=abb21(35)
      acd21(28)=abb21(156)
      acd21(29)=qshift(iv1)
      acd21(30)=abb21(18)
      acd21(31)=spvak2l5(iv1)
      acd21(32)=dotproduct(k1,qshift)
      acd21(33)=dotproduct(k2,qshift)
      acd21(34)=dotproduct(k3,qshift)
      acd21(35)=dotproduct(k4,qshift)
      acd21(36)=dotproduct(l5,qshift)
      acd21(37)=dotproduct(l6,qshift)
      acd21(38)=dotproduct(k7,qshift)
      acd21(39)=dotproduct(e7,qshift)
      acd21(40)=dotproduct(qshift,spvak1k2)
      acd21(41)=abb21(32)
      acd21(42)=dotproduct(qshift,spvak1l5)
      acd21(43)=abb21(20)
      acd21(44)=dotproduct(qshift,spvak1l6)
      acd21(45)=abb21(54)
      acd21(46)=dotproduct(qshift,spvak4k2)
      acd21(47)=abb21(12)
      acd21(48)=dotproduct(qshift,spvak4k3)
      acd21(49)=abb21(31)
      acd21(50)=dotproduct(qshift,spvae7k2)
      acd21(51)=abb21(22)
      acd21(52)=abb21(19)
      acd21(53)=spvak2l6(iv1)
      acd21(54)=abb21(23)
      acd21(55)=abb21(16)
      acd21(56)=abb21(34)
      acd21(57)=abb21(30)
      acd21(58)=abb21(69)
      acd21(59)=abb21(57)
      acd21(60)=abb21(15)
      acd21(61)=spvak1k2(iv1)
      acd21(62)=spvak1l5(iv1)
      acd21(63)=abb21(14)
      acd21(64)=spvak1l6(iv1)
      acd21(65)=abb21(29)
      acd21(66)=spvak4k2(iv1)
      acd21(67)=abb21(21)
      acd21(68)=spvak4k3(iv1)
      acd21(69)=abb21(24)
      acd21(70)=spvae7k2(iv1)
      acd21(71)=abb21(27)
      acd21(72)=acd21(54)*acd21(61)
      acd21(73)=acd21(70)*acd21(59)
      acd21(74)=acd21(68)*acd21(58)
      acd21(75)=acd21(66)*acd21(57)
      acd21(76)=acd21(64)*acd21(56)
      acd21(77)=acd21(62)*acd21(55)
      acd21(78)=acd21(25)*acd21(27)
      acd21(79)=acd21(21)*acd21(23)
      acd21(80)=acd21(7)*acd21(9)
      acd21(81)=acd21(1)*acd21(5)
      acd21(82)=acd21(16)+acd21(20)
      acd21(83)=acd21(18)*acd21(82)
      acd21(84)=acd21(11)+acd21(15)
      acd21(85)=-acd21(13)*acd21(84)
      acd21(72)=acd21(85)+acd21(83)+acd21(81)+acd21(80)+acd21(79)+acd21(78)+acd&
      &21(77)+acd21(76)+acd21(75)+acd21(74)+acd21(72)+acd21(73)
      acd21(72)=acd21(4)*acd21(72)
      acd21(73)=acd21(41)*acd21(61)
      acd21(74)=acd21(70)*acd21(51)
      acd21(75)=acd21(68)*acd21(49)
      acd21(76)=acd21(66)*acd21(47)
      acd21(77)=acd21(64)*acd21(45)
      acd21(78)=acd21(62)*acd21(43)
      acd21(79)=acd21(25)*acd21(26)
      acd21(80)=acd21(21)*acd21(22)
      acd21(81)=acd21(7)*acd21(8)
      acd21(83)=acd21(1)*acd21(3)
      acd21(85)=acd21(17)*acd21(82)
      acd21(86)=-acd21(12)*acd21(84)
      acd21(73)=acd21(86)+acd21(85)+acd21(83)+acd21(81)+acd21(80)+acd21(79)+acd&
      &21(78)+acd21(77)+acd21(76)+acd21(75)+acd21(73)+acd21(74)
      acd21(73)=acd21(2)*acd21(73)
      acd21(74)=acd21(50)*acd21(59)
      acd21(75)=acd21(48)*acd21(58)
      acd21(76)=acd21(46)*acd21(57)
      acd21(77)=acd21(44)*acd21(56)
      acd21(78)=acd21(42)*acd21(55)
      acd21(79)=acd21(40)*acd21(54)
      acd21(80)=acd21(27)*acd21(39)
      acd21(81)=acd21(23)*acd21(38)
      acd21(83)=acd21(9)*acd21(33)
      acd21(85)=acd21(5)*acd21(32)
      acd21(86)=acd21(36)+acd21(37)
      acd21(87)=acd21(18)*acd21(86)
      acd21(88)=acd21(34)+acd21(35)
      acd21(89)=-acd21(13)*acd21(88)
      acd21(74)=acd21(89)+acd21(87)+acd21(85)+acd21(83)+acd21(81)+acd21(80)+acd&
      &21(79)+acd21(78)+acd21(77)+acd21(76)+acd21(75)-acd21(60)+acd21(74)
      acd21(74)=acd21(53)*acd21(74)
      acd21(75)=acd21(50)*acd21(51)
      acd21(76)=acd21(48)*acd21(49)
      acd21(77)=acd21(46)*acd21(47)
      acd21(78)=acd21(44)*acd21(45)
      acd21(79)=acd21(42)*acd21(43)
      acd21(80)=acd21(40)*acd21(41)
      acd21(81)=acd21(26)*acd21(39)
      acd21(83)=acd21(22)*acd21(38)
      acd21(85)=acd21(8)*acd21(33)
      acd21(87)=acd21(3)*acd21(32)
      acd21(86)=acd21(17)*acd21(86)
      acd21(88)=-acd21(12)*acd21(88)
      acd21(75)=acd21(88)+acd21(86)+acd21(87)+acd21(85)+acd21(83)+acd21(81)+acd&
      &21(80)+acd21(79)+acd21(78)+acd21(77)+acd21(76)-acd21(52)+acd21(75)
      acd21(75)=acd21(31)*acd21(75)
      acd21(76)=-acd21(19)*acd21(82)
      acd21(77)=acd21(14)*acd21(84)
      acd21(78)=acd21(29)*acd21(30)
      acd21(79)=-acd21(70)*acd21(71)
      acd21(80)=-acd21(68)*acd21(69)
      acd21(81)=-acd21(66)*acd21(67)
      acd21(82)=-acd21(64)*acd21(65)
      acd21(83)=-acd21(62)*acd21(63)
      acd21(84)=-acd21(25)*acd21(28)
      acd21(85)=-acd21(21)*acd21(24)
      acd21(86)=-acd21(7)*acd21(10)
      acd21(87)=-acd21(1)*acd21(6)
      brack=acd21(72)+acd21(73)+acd21(74)+acd21(75)+acd21(76)+acd21(77)+2.0_ki*&
      &acd21(78)+acd21(79)+acd21(80)+acd21(81)+acd21(82)+acd21(83)+acd21(84)+ac&
      &d21(85)+acd21(86)+acd21(87)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd21
      complex(ki) :: brack
      acd21(1)=d(iv1,iv2)
      acd21(2)=abb21(18)
      acd21(3)=k1(iv1)
      acd21(4)=spvak2l5(iv2)
      acd21(5)=abb21(49)
      acd21(6)=spvak2l6(iv2)
      acd21(7)=abb21(47)
      acd21(8)=k1(iv2)
      acd21(9)=spvak2l5(iv1)
      acd21(10)=spvak2l6(iv1)
      acd21(11)=k2(iv1)
      acd21(12)=abb21(42)
      acd21(13)=abb21(13)
      acd21(14)=k2(iv2)
      acd21(15)=k3(iv1)
      acd21(16)=abb21(71)
      acd21(17)=abb21(123)
      acd21(18)=k3(iv2)
      acd21(19)=k4(iv1)
      acd21(20)=k4(iv2)
      acd21(21)=l5(iv1)
      acd21(22)=abb21(66)
      acd21(23)=abb21(122)
      acd21(24)=l5(iv2)
      acd21(25)=l6(iv1)
      acd21(26)=l6(iv2)
      acd21(27)=k7(iv1)
      acd21(28)=abb21(33)
      acd21(29)=abb21(45)
      acd21(30)=k7(iv2)
      acd21(31)=e7(iv1)
      acd21(32)=abb21(25)
      acd21(33)=abb21(35)
      acd21(34)=e7(iv2)
      acd21(35)=spvak1k2(iv2)
      acd21(36)=abb21(32)
      acd21(37)=spvak1l5(iv2)
      acd21(38)=abb21(20)
      acd21(39)=spvak1l6(iv2)
      acd21(40)=abb21(54)
      acd21(41)=spvak4k2(iv2)
      acd21(42)=abb21(12)
      acd21(43)=spvak4k3(iv2)
      acd21(44)=abb21(31)
      acd21(45)=spvae7k2(iv2)
      acd21(46)=abb21(22)
      acd21(47)=spvak1k2(iv1)
      acd21(48)=spvak1l5(iv1)
      acd21(49)=spvak1l6(iv1)
      acd21(50)=spvak4k2(iv1)
      acd21(51)=spvak4k3(iv1)
      acd21(52)=spvae7k2(iv1)
      acd21(53)=abb21(23)
      acd21(54)=abb21(16)
      acd21(55)=abb21(34)
      acd21(56)=abb21(30)
      acd21(57)=abb21(69)
      acd21(58)=abb21(57)
      acd21(59)=acd21(45)*acd21(58)
      acd21(60)=acd21(43)*acd21(57)
      acd21(61)=acd21(41)*acd21(56)
      acd21(62)=acd21(39)*acd21(55)
      acd21(63)=acd21(37)*acd21(54)
      acd21(64)=acd21(35)*acd21(53)
      acd21(65)=acd21(33)*acd21(34)
      acd21(66)=acd21(29)*acd21(30)
      acd21(67)=acd21(13)*acd21(14)
      acd21(68)=acd21(7)*acd21(8)
      acd21(69)=acd21(24)+acd21(26)
      acd21(70)=acd21(23)*acd21(69)
      acd21(71)=acd21(18)+acd21(20)
      acd21(72)=-acd21(17)*acd21(71)
      acd21(59)=acd21(72)+acd21(70)+acd21(68)+acd21(67)+acd21(66)+acd21(65)+acd&
      &21(64)+acd21(63)+acd21(62)+acd21(61)+acd21(59)+acd21(60)
      acd21(59)=acd21(10)*acd21(59)
      acd21(60)=acd21(45)*acd21(46)
      acd21(61)=acd21(43)*acd21(44)
      acd21(62)=acd21(41)*acd21(42)
      acd21(63)=acd21(39)*acd21(40)
      acd21(64)=acd21(37)*acd21(38)
      acd21(65)=acd21(35)*acd21(36)
      acd21(66)=acd21(32)*acd21(34)
      acd21(67)=acd21(28)*acd21(30)
      acd21(68)=acd21(12)*acd21(14)
      acd21(70)=acd21(5)*acd21(8)
      acd21(69)=acd21(22)*acd21(69)
      acd21(71)=-acd21(16)*acd21(71)
      acd21(60)=acd21(71)+acd21(69)+acd21(70)+acd21(68)+acd21(67)+acd21(66)+acd&
      &21(65)+acd21(64)+acd21(63)+acd21(62)+acd21(60)+acd21(61)
      acd21(60)=acd21(9)*acd21(60)
      acd21(61)=acd21(52)*acd21(58)
      acd21(62)=acd21(51)*acd21(57)
      acd21(63)=acd21(50)*acd21(56)
      acd21(64)=acd21(49)*acd21(55)
      acd21(65)=acd21(48)*acd21(54)
      acd21(66)=acd21(47)*acd21(53)
      acd21(67)=acd21(31)*acd21(33)
      acd21(68)=acd21(27)*acd21(29)
      acd21(69)=acd21(11)*acd21(13)
      acd21(70)=acd21(3)*acd21(7)
      acd21(71)=acd21(21)+acd21(25)
      acd21(72)=acd21(23)*acd21(71)
      acd21(73)=acd21(15)+acd21(19)
      acd21(74)=-acd21(17)*acd21(73)
      acd21(61)=acd21(74)+acd21(72)+acd21(70)+acd21(69)+acd21(68)+acd21(67)+acd&
      &21(66)+acd21(65)+acd21(64)+acd21(63)+acd21(61)+acd21(62)
      acd21(61)=acd21(6)*acd21(61)
      acd21(62)=acd21(46)*acd21(52)
      acd21(63)=acd21(44)*acd21(51)
      acd21(64)=acd21(42)*acd21(50)
      acd21(65)=acd21(40)*acd21(49)
      acd21(66)=acd21(38)*acd21(48)
      acd21(67)=acd21(36)*acd21(47)
      acd21(68)=acd21(31)*acd21(32)
      acd21(69)=acd21(27)*acd21(28)
      acd21(70)=acd21(11)*acd21(12)
      acd21(72)=acd21(3)*acd21(5)
      acd21(71)=acd21(22)*acd21(71)
      acd21(73)=-acd21(16)*acd21(73)
      acd21(62)=acd21(73)+acd21(71)+acd21(72)+acd21(70)+acd21(69)+acd21(68)+acd&
      &21(67)+acd21(66)+acd21(65)+acd21(64)+acd21(62)+acd21(63)
      acd21(62)=acd21(4)*acd21(62)
      acd21(63)=acd21(1)*acd21(2)
      brack=acd21(59)+acd21(60)+acd21(61)+acd21(62)+2.0_ki*acd21(63)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6-k5
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d21:
   subroutine     reconstruct_d21(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_21:
      coeffs%coeffs_21%c0 = derivative(czip)
      coeffs%coeffs_21%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_21%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_21%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_21%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_21%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_21%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_21%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_21%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_21%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_21%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_21%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_21%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_21%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_21%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_21:
   end subroutine reconstruct_d21
!---#] subroutine reconstruct_d21:
end module     p1_dbarc_epnebbbarg_d21h3l1d
