module     p9_csbar_epnebbbarg_d316h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d316h3l1d.f90
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
   public :: derivative , reconstruct_d316
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd316h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd316
      complex(ki) :: brack
      acd316(1)=dotproduct(k1,qshift)
      acd316(2)=dotproduct(e7,qshift)
      acd316(3)=abb316(56)
      acd316(4)=dotproduct(qshift,spvak2e7)
      acd316(5)=abb316(57)
      acd316(6)=dotproduct(qshift,spvae7l6)
      acd316(7)=abb316(53)
      acd316(8)=abb316(48)
      acd316(9)=dotproduct(k2,qshift)
      acd316(10)=abb316(35)
      acd316(11)=dotproduct(qshift,spvae7k1)
      acd316(12)=abb316(71)
      acd316(13)=abb316(47)
      acd316(14)=dotproduct(l6,qshift)
      acd316(15)=abb316(58)
      acd316(16)=abb316(55)
      acd316(17)=abb316(38)
      acd316(18)=dotproduct(k7,qshift)
      acd316(19)=abb316(23)
      acd316(20)=abb316(29)
      acd316(21)=dotproduct(qshift,qshift)
      acd316(22)=abb316(21)
      acd316(23)=dotproduct(qshift,spvak2k1)
      acd316(24)=dotproduct(qshift,spvak2l5)
      acd316(25)=abb316(18)
      acd316(26)=abb316(14)
      acd316(27)=dotproduct(qshift,spvak4k1)
      acd316(28)=abb316(30)
      acd316(29)=abb316(8)
      acd316(30)=dotproduct(qshift,spvak2l6)
      acd316(31)=abb316(15)
      acd316(32)=dotproduct(qshift,spvak2k7)
      acd316(33)=abb316(27)
      acd316(34)=dotproduct(qshift,spvak4l6)
      acd316(35)=abb316(34)
      acd316(36)=dotproduct(qshift,spvak7l6)
      acd316(37)=abb316(75)
      acd316(38)=abb316(13)
      acd316(39)=abb316(65)
      acd316(40)=abb316(37)
      acd316(41)=abb316(17)
      acd316(42)=abb316(9)
      acd316(43)=abb316(73)
      acd316(44)=dotproduct(qshift,spvak7k1)
      acd316(45)=abb316(33)
      acd316(46)=abb316(66)
      acd316(47)=abb316(24)
      acd316(48)=abb316(42)
      acd316(49)=abb316(16)
      acd316(50)=abb316(22)
      acd316(51)=abb316(39)
      acd316(52)=abb316(52)
      acd316(53)=abb316(63)
      acd316(54)=abb316(12)
      acd316(55)=abb316(19)
      acd316(56)=abb316(10)
      acd316(57)=abb316(74)
      acd316(58)=abb316(11)
      acd316(59)=abb316(36)
      acd316(60)=-acd316(24)*acd316(28)
      acd316(60)=acd316(60)+acd316(29)
      acd316(60)=acd316(27)*acd316(60)
      acd316(61)=acd316(18)+acd316(1)
      acd316(62)=acd316(3)*acd316(61)
      acd316(63)=acd316(36)*acd316(37)
      acd316(64)=acd316(34)*acd316(35)
      acd316(65)=acd316(32)*acd316(33)
      acd316(66)=acd316(30)*acd316(31)
      acd316(67)=-acd316(24)*acd316(25)
      acd316(67)=acd316(26)+acd316(67)
      acd316(67)=acd316(23)*acd316(67)
      acd316(68)=acd316(14)*acd316(15)
      acd316(69)=acd316(9)*acd316(10)
      acd316(70)=-acd316(21)*acd316(22)
      acd316(60)=acd316(70)+acd316(69)+acd316(68)+acd316(67)+acd316(66)+acd316(&
      &65)+acd316(64)+acd316(63)-acd316(38)+acd316(62)+acd316(60)
      acd316(60)=acd316(2)*acd316(60)
      acd316(62)=-acd316(36)*acd316(47)
      acd316(63)=acd316(34)*acd316(51)
      acd316(64)=acd316(32)*acd316(50)
      acd316(65)=acd316(30)*acd316(49)
      acd316(66)=acd316(14)*acd316(16)
      acd316(67)=acd316(9)*acd316(12)
      acd316(68)=-acd316(21)*acd316(41)
      acd316(69)=acd316(18)*acd316(19)
      acd316(70)=acd316(4)*acd316(43)
      acd316(62)=acd316(70)+acd316(69)+acd316(68)+acd316(67)+acd316(66)+acd316(&
      &65)+acd316(64)+acd316(63)-acd316(52)+acd316(62)
      acd316(62)=acd316(11)*acd316(62)
      acd316(63)=-acd316(7)*acd316(61)
      acd316(64)=-acd316(44)*acd316(47)
      acd316(65)=acd316(21)*acd316(40)
      acd316(63)=acd316(65)-acd316(48)+acd316(64)+acd316(63)
      acd316(63)=acd316(6)*acd316(63)
      acd316(61)=-acd316(5)*acd316(61)
      acd316(64)=acd316(44)*acd316(45)
      acd316(65)=acd316(21)*acd316(39)
      acd316(61)=acd316(65)-acd316(46)+acd316(64)+acd316(61)
      acd316(61)=acd316(4)*acd316(61)
      acd316(64)=-acd316(44)*acd316(58)
      acd316(65)=-acd316(36)*acd316(57)
      acd316(66)=-acd316(34)*acd316(56)
      acd316(67)=-acd316(32)*acd316(55)
      acd316(68)=-acd316(30)*acd316(54)
      acd316(69)=acd316(23)*acd316(53)
      acd316(70)=-acd316(14)*acd316(17)
      acd316(71)=-acd316(9)*acd316(13)
      acd316(72)=-acd316(1)*acd316(8)
      acd316(73)=acd316(21)*acd316(42)
      acd316(74)=-acd316(18)*acd316(20)
      brack=acd316(59)+acd316(60)+acd316(61)+acd316(62)+acd316(63)+acd316(64)+a&
      &cd316(65)+acd316(66)+acd316(67)+acd316(68)+acd316(69)+acd316(70)+acd316(&
      &71)+acd316(72)+acd316(73)+acd316(74)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd316h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd316
      complex(ki) :: brack
      acd316(1)=k1(iv1)
      acd316(2)=dotproduct(e7,qshift)
      acd316(3)=abb316(56)
      acd316(4)=dotproduct(qshift,spvak2e7)
      acd316(5)=abb316(57)
      acd316(6)=dotproduct(qshift,spvae7l6)
      acd316(7)=abb316(53)
      acd316(8)=abb316(48)
      acd316(9)=k2(iv1)
      acd316(10)=abb316(35)
      acd316(11)=dotproduct(qshift,spvae7k1)
      acd316(12)=abb316(71)
      acd316(13)=abb316(47)
      acd316(14)=l6(iv1)
      acd316(15)=abb316(58)
      acd316(16)=abb316(55)
      acd316(17)=abb316(38)
      acd316(18)=k7(iv1)
      acd316(19)=abb316(23)
      acd316(20)=abb316(29)
      acd316(21)=e7(iv1)
      acd316(22)=dotproduct(k1,qshift)
      acd316(23)=dotproduct(k2,qshift)
      acd316(24)=dotproduct(l6,qshift)
      acd316(25)=dotproduct(k7,qshift)
      acd316(26)=dotproduct(qshift,qshift)
      acd316(27)=abb316(21)
      acd316(28)=dotproduct(qshift,spvak2k1)
      acd316(29)=dotproduct(qshift,spvak2l5)
      acd316(30)=abb316(18)
      acd316(31)=abb316(14)
      acd316(32)=dotproduct(qshift,spvak4k1)
      acd316(33)=abb316(30)
      acd316(34)=abb316(8)
      acd316(35)=dotproduct(qshift,spvak2l6)
      acd316(36)=abb316(15)
      acd316(37)=dotproduct(qshift,spvak2k7)
      acd316(38)=abb316(27)
      acd316(39)=dotproduct(qshift,spvak4l6)
      acd316(40)=abb316(34)
      acd316(41)=dotproduct(qshift,spvak7l6)
      acd316(42)=abb316(75)
      acd316(43)=abb316(13)
      acd316(44)=qshift(iv1)
      acd316(45)=abb316(65)
      acd316(46)=abb316(37)
      acd316(47)=abb316(17)
      acd316(48)=abb316(9)
      acd316(49)=spvak2e7(iv1)
      acd316(50)=abb316(73)
      acd316(51)=dotproduct(qshift,spvak7k1)
      acd316(52)=abb316(33)
      acd316(53)=abb316(66)
      acd316(54)=spvae7l6(iv1)
      acd316(55)=abb316(24)
      acd316(56)=abb316(42)
      acd316(57)=spvae7k1(iv1)
      acd316(58)=abb316(16)
      acd316(59)=abb316(22)
      acd316(60)=abb316(39)
      acd316(61)=abb316(52)
      acd316(62)=spvak2k1(iv1)
      acd316(63)=abb316(63)
      acd316(64)=spvak2l5(iv1)
      acd316(65)=spvak4k1(iv1)
      acd316(66)=spvak2l6(iv1)
      acd316(67)=abb316(12)
      acd316(68)=spvak2k7(iv1)
      acd316(69)=abb316(19)
      acd316(70)=spvak4l6(iv1)
      acd316(71)=abb316(10)
      acd316(72)=spvak7l6(iv1)
      acd316(73)=abb316(74)
      acd316(74)=spvak7k1(iv1)
      acd316(75)=abb316(11)
      acd316(76)=acd316(32)*acd316(33)
      acd316(77)=acd316(28)*acd316(30)
      acd316(76)=acd316(76)+acd316(77)
      acd316(77)=acd316(64)*acd316(76)
      acd316(78)=acd316(33)*acd316(65)
      acd316(79)=acd316(30)*acd316(62)
      acd316(78)=acd316(78)+acd316(79)
      acd316(78)=acd316(29)*acd316(78)
      acd316(79)=acd316(18)+acd316(1)
      acd316(80)=-acd316(3)*acd316(79)
      acd316(81)=-acd316(34)*acd316(65)
      acd316(82)=-acd316(72)*acd316(42)
      acd316(83)=-acd316(70)*acd316(40)
      acd316(84)=-acd316(68)*acd316(38)
      acd316(85)=-acd316(66)*acd316(36)
      acd316(86)=-acd316(62)*acd316(31)
      acd316(87)=-acd316(14)*acd316(15)
      acd316(88)=-acd316(9)*acd316(10)
      acd316(89)=2.0_ki*acd316(44)
      acd316(90)=acd316(27)*acd316(89)
      acd316(77)=acd316(90)+acd316(78)+acd316(88)+acd316(87)+acd316(86)+acd316(&
      &85)+acd316(84)+acd316(83)+acd316(81)+acd316(82)+acd316(80)+acd316(77)
      acd316(77)=acd316(2)*acd316(77)
      acd316(76)=acd316(29)*acd316(76)
      acd316(78)=-acd316(41)*acd316(42)
      acd316(80)=-acd316(39)*acd316(40)
      acd316(81)=-acd316(37)*acd316(38)
      acd316(82)=-acd316(35)*acd316(36)
      acd316(83)=-acd316(15)*acd316(24)
      acd316(84)=-acd316(10)*acd316(23)
      acd316(85)=-acd316(32)*acd316(34)
      acd316(86)=-acd316(28)*acd316(31)
      acd316(87)=acd316(26)*acd316(27)
      acd316(88)=acd316(25)+acd316(22)
      acd316(90)=-acd316(3)*acd316(88)
      acd316(76)=acd316(90)+acd316(87)+acd316(76)+acd316(86)+acd316(85)+acd316(&
      &84)+acd316(83)+acd316(82)+acd316(81)+acd316(80)+acd316(43)+acd316(78)
      acd316(76)=acd316(21)*acd316(76)
      acd316(78)=-acd316(70)*acd316(60)
      acd316(80)=-acd316(68)*acd316(59)
      acd316(81)=-acd316(66)*acd316(58)
      acd316(82)=-acd316(14)*acd316(16)
      acd316(83)=-acd316(9)*acd316(12)
      acd316(84)=acd316(55)*acd316(72)
      acd316(85)=acd316(47)*acd316(89)
      acd316(86)=-acd316(18)*acd316(19)
      acd316(87)=-acd316(49)*acd316(50)
      acd316(78)=acd316(87)+acd316(86)+acd316(85)+acd316(84)+acd316(83)+acd316(&
      &82)+acd316(81)+acd316(78)+acd316(80)
      acd316(78)=acd316(11)*acd316(78)
      acd316(80)=-acd316(39)*acd316(60)
      acd316(81)=-acd316(37)*acd316(59)
      acd316(82)=-acd316(35)*acd316(58)
      acd316(83)=-acd316(16)*acd316(24)
      acd316(84)=-acd316(12)*acd316(23)
      acd316(85)=acd316(55)*acd316(41)
      acd316(86)=acd316(26)*acd316(47)
      acd316(87)=-acd316(25)*acd316(19)
      acd316(90)=-acd316(4)*acd316(50)
      acd316(80)=acd316(90)+acd316(87)+acd316(86)+acd316(85)+acd316(84)+acd316(&
      &83)+acd316(82)+acd316(81)+acd316(61)+acd316(80)
      acd316(80)=acd316(57)*acd316(80)
      acd316(81)=acd316(55)*acd316(51)
      acd316(82)=-acd316(26)*acd316(46)
      acd316(83)=acd316(7)*acd316(88)
      acd316(81)=acd316(83)+acd316(82)+acd316(56)+acd316(81)
      acd316(81)=acd316(54)*acd316(81)
      acd316(79)=acd316(5)*acd316(79)
      acd316(82)=-acd316(74)*acd316(52)
      acd316(83)=-acd316(45)*acd316(89)
      acd316(79)=acd316(83)+acd316(82)+acd316(79)
      acd316(79)=acd316(4)*acd316(79)
      acd316(82)=-acd316(51)*acd316(52)
      acd316(83)=-acd316(26)*acd316(45)
      acd316(84)=acd316(5)*acd316(88)
      acd316(82)=acd316(84)+acd316(83)+acd316(53)+acd316(82)
      acd316(82)=acd316(49)*acd316(82)
      acd316(83)=-acd316(6)*acd316(46)
      acd316(83)=-acd316(48)+acd316(83)
      acd316(83)=acd316(83)*acd316(89)
      acd316(84)=acd316(6)*acd316(55)
      acd316(84)=acd316(84)+acd316(75)
      acd316(84)=acd316(74)*acd316(84)
      acd316(85)=acd316(72)*acd316(73)
      acd316(86)=acd316(70)*acd316(71)
      acd316(87)=acd316(68)*acd316(69)
      acd316(88)=acd316(66)*acd316(67)
      acd316(89)=-acd316(62)*acd316(63)
      acd316(90)=acd316(14)*acd316(17)
      acd316(91)=acd316(9)*acd316(13)
      acd316(92)=acd316(6)*acd316(7)
      acd316(93)=acd316(8)+acd316(92)
      acd316(93)=acd316(1)*acd316(93)
      acd316(92)=acd316(20)+acd316(92)
      acd316(92)=acd316(18)*acd316(92)
      brack=acd316(76)+acd316(77)+acd316(78)+acd316(79)+acd316(80)+acd316(81)+a&
      &cd316(82)+acd316(83)+acd316(84)+acd316(85)+acd316(86)+acd316(87)+acd316(&
      &88)+acd316(89)+acd316(90)+acd316(91)+acd316(92)+acd316(93)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd316h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd316
      complex(ki) :: brack
      acd316(1)=d(iv1,iv2)
      acd316(2)=dotproduct(e7,qshift)
      acd316(3)=abb316(21)
      acd316(4)=dotproduct(qshift,spvae7k1)
      acd316(5)=abb316(17)
      acd316(6)=dotproduct(qshift,spvak2e7)
      acd316(7)=abb316(65)
      acd316(8)=dotproduct(qshift,spvae7l6)
      acd316(9)=abb316(37)
      acd316(10)=abb316(9)
      acd316(11)=k1(iv1)
      acd316(12)=e7(iv2)
      acd316(13)=abb316(56)
      acd316(14)=spvak2e7(iv2)
      acd316(15)=abb316(57)
      acd316(16)=spvae7l6(iv2)
      acd316(17)=abb316(53)
      acd316(18)=k1(iv2)
      acd316(19)=e7(iv1)
      acd316(20)=spvak2e7(iv1)
      acd316(21)=spvae7l6(iv1)
      acd316(22)=k2(iv1)
      acd316(23)=abb316(35)
      acd316(24)=spvae7k1(iv2)
      acd316(25)=abb316(71)
      acd316(26)=k2(iv2)
      acd316(27)=spvae7k1(iv1)
      acd316(28)=l6(iv1)
      acd316(29)=abb316(58)
      acd316(30)=abb316(55)
      acd316(31)=l6(iv2)
      acd316(32)=k7(iv1)
      acd316(33)=abb316(23)
      acd316(34)=k7(iv2)
      acd316(35)=qshift(iv2)
      acd316(36)=spvak2k1(iv2)
      acd316(37)=dotproduct(qshift,spvak2l5)
      acd316(38)=abb316(18)
      acd316(39)=abb316(14)
      acd316(40)=spvak2l5(iv2)
      acd316(41)=dotproduct(qshift,spvak2k1)
      acd316(42)=dotproduct(qshift,spvak4k1)
      acd316(43)=abb316(30)
      acd316(44)=spvak4k1(iv2)
      acd316(45)=abb316(8)
      acd316(46)=spvak2l6(iv2)
      acd316(47)=abb316(15)
      acd316(48)=spvak2k7(iv2)
      acd316(49)=abb316(27)
      acd316(50)=spvak4l6(iv2)
      acd316(51)=abb316(34)
      acd316(52)=spvak7l6(iv2)
      acd316(53)=abb316(75)
      acd316(54)=qshift(iv1)
      acd316(55)=spvak2k1(iv1)
      acd316(56)=spvak2l5(iv1)
      acd316(57)=spvak4k1(iv1)
      acd316(58)=spvak2l6(iv1)
      acd316(59)=spvak2k7(iv1)
      acd316(60)=spvak4l6(iv1)
      acd316(61)=spvak7l6(iv1)
      acd316(62)=abb316(73)
      acd316(63)=abb316(16)
      acd316(64)=abb316(22)
      acd316(65)=abb316(39)
      acd316(66)=abb316(24)
      acd316(67)=spvak7k1(iv2)
      acd316(68)=abb316(33)
      acd316(69)=spvak7k1(iv1)
      acd316(70)=-acd316(40)*acd316(42)
      acd316(71)=-acd316(37)*acd316(44)
      acd316(70)=acd316(70)+acd316(71)
      acd316(70)=acd316(43)*acd316(70)
      acd316(71)=-acd316(40)*acd316(41)
      acd316(72)=-acd316(37)*acd316(36)
      acd316(71)=acd316(71)+acd316(72)
      acd316(71)=acd316(38)*acd316(71)
      acd316(72)=acd316(52)*acd316(53)
      acd316(73)=acd316(50)*acd316(51)
      acd316(74)=acd316(48)*acd316(49)
      acd316(75)=acd316(46)*acd316(47)
      acd316(76)=acd316(29)*acd316(31)
      acd316(77)=acd316(23)*acd316(26)
      acd316(78)=acd316(44)*acd316(45)
      acd316(79)=acd316(36)*acd316(39)
      acd316(80)=2.0_ki*acd316(35)
      acd316(81)=-acd316(3)*acd316(80)
      acd316(82)=acd316(34)+acd316(18)
      acd316(83)=acd316(13)*acd316(82)
      acd316(70)=acd316(71)+acd316(70)+acd316(83)+acd316(81)+acd316(79)+acd316(&
      &78)+acd316(77)+acd316(76)+acd316(75)+acd316(74)+acd316(72)+acd316(73)
      acd316(70)=acd316(19)*acd316(70)
      acd316(71)=-acd316(56)*acd316(42)
      acd316(72)=-acd316(37)*acd316(57)
      acd316(71)=acd316(71)+acd316(72)
      acd316(71)=acd316(43)*acd316(71)
      acd316(72)=-acd316(56)*acd316(41)
      acd316(73)=-acd316(37)*acd316(55)
      acd316(72)=acd316(72)+acd316(73)
      acd316(72)=acd316(38)*acd316(72)
      acd316(73)=acd316(53)*acd316(61)
      acd316(74)=acd316(51)*acd316(60)
      acd316(75)=acd316(49)*acd316(59)
      acd316(76)=acd316(47)*acd316(58)
      acd316(77)=acd316(28)*acd316(29)
      acd316(78)=acd316(22)*acd316(23)
      acd316(79)=acd316(57)*acd316(45)
      acd316(81)=acd316(55)*acd316(39)
      acd316(83)=2.0_ki*acd316(54)
      acd316(84)=-acd316(3)*acd316(83)
      acd316(85)=acd316(32)+acd316(11)
      acd316(86)=acd316(13)*acd316(85)
      acd316(71)=acd316(72)+acd316(71)+acd316(86)+acd316(84)+acd316(81)+acd316(&
      &79)+acd316(78)+acd316(77)+acd316(76)+acd316(75)+acd316(73)+acd316(74)
      acd316(71)=acd316(12)*acd316(71)
      acd316(72)=acd316(50)*acd316(65)
      acd316(73)=acd316(48)*acd316(64)
      acd316(74)=acd316(46)*acd316(63)
      acd316(75)=acd316(30)*acd316(31)
      acd316(76)=acd316(25)*acd316(26)
      acd316(77)=-acd316(66)*acd316(52)
      acd316(78)=-acd316(5)*acd316(80)
      acd316(79)=acd316(34)*acd316(33)
      acd316(81)=acd316(14)*acd316(62)
      acd316(72)=acd316(81)+acd316(79)+acd316(78)+acd316(77)+acd316(76)+acd316(&
      &75)+acd316(74)+acd316(72)+acd316(73)
      acd316(72)=acd316(27)*acd316(72)
      acd316(73)=acd316(60)*acd316(65)
      acd316(74)=acd316(59)*acd316(64)
      acd316(75)=acd316(58)*acd316(63)
      acd316(76)=acd316(28)*acd316(30)
      acd316(77)=acd316(22)*acd316(25)
      acd316(78)=-acd316(66)*acd316(61)
      acd316(79)=-acd316(5)*acd316(83)
      acd316(81)=acd316(32)*acd316(33)
      acd316(84)=acd316(20)*acd316(62)
      acd316(73)=acd316(84)+acd316(81)+acd316(79)+acd316(78)+acd316(77)+acd316(&
      &76)+acd316(75)+acd316(73)+acd316(74)
      acd316(73)=acd316(24)*acd316(73)
      acd316(74)=acd316(9)*acd316(8)
      acd316(75)=acd316(7)*acd316(6)
      acd316(76)=-acd316(5)*acd316(4)
      acd316(77)=-acd316(2)*acd316(3)
      acd316(74)=acd316(77)+acd316(76)+acd316(75)+acd316(10)+acd316(74)
      acd316(74)=acd316(1)*acd316(74)
      acd316(75)=-acd316(66)*acd316(67)
      acd316(76)=acd316(9)*acd316(80)
      acd316(77)=-acd316(17)*acd316(82)
      acd316(75)=acd316(77)+acd316(75)+acd316(76)
      acd316(75)=acd316(21)*acd316(75)
      acd316(76)=-acd316(56)*acd316(44)
      acd316(77)=-acd316(40)*acd316(57)
      acd316(76)=acd316(76)+acd316(77)
      acd316(76)=acd316(43)*acd316(76)
      acd316(77)=-acd316(56)*acd316(36)
      acd316(78)=-acd316(40)*acd316(55)
      acd316(77)=acd316(77)+acd316(78)
      acd316(77)=acd316(38)*acd316(77)
      acd316(76)=acd316(77)+acd316(76)
      acd316(76)=acd316(2)*acd316(76)
      acd316(77)=-acd316(66)*acd316(69)
      acd316(78)=acd316(9)*acd316(83)
      acd316(79)=-acd316(17)*acd316(85)
      acd316(77)=acd316(79)+acd316(77)+acd316(78)
      acd316(77)=acd316(16)*acd316(77)
      acd316(78)=acd316(67)*acd316(68)
      acd316(79)=acd316(7)*acd316(80)
      acd316(80)=-acd316(15)*acd316(82)
      acd316(78)=acd316(80)+acd316(78)+acd316(79)
      acd316(78)=acd316(20)*acd316(78)
      acd316(79)=acd316(68)*acd316(69)
      acd316(80)=acd316(7)*acd316(83)
      acd316(81)=-acd316(15)*acd316(85)
      acd316(79)=acd316(81)+acd316(79)+acd316(80)
      acd316(79)=acd316(14)*acd316(79)
      brack=acd316(70)+acd316(71)+acd316(72)+acd316(73)+2.0_ki*acd316(74)+acd31&
      &6(75)+acd316(76)+acd316(77)+acd316(78)+acd316(79)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd316h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd316
      complex(ki) :: brack
      acd316(1)=d(iv1,iv2)
      acd316(2)=e7(iv3)
      acd316(3)=abb316(21)
      acd316(4)=spvae7k1(iv3)
      acd316(5)=abb316(17)
      acd316(6)=spvak2e7(iv3)
      acd316(7)=abb316(65)
      acd316(8)=spvae7l6(iv3)
      acd316(9)=abb316(37)
      acd316(10)=d(iv1,iv3)
      acd316(11)=e7(iv2)
      acd316(12)=spvae7k1(iv2)
      acd316(13)=spvak2e7(iv2)
      acd316(14)=spvae7l6(iv2)
      acd316(15)=d(iv2,iv3)
      acd316(16)=e7(iv1)
      acd316(17)=spvae7k1(iv1)
      acd316(18)=spvak2e7(iv1)
      acd316(19)=spvae7l6(iv1)
      acd316(20)=spvak2k1(iv2)
      acd316(21)=spvak2l5(iv3)
      acd316(22)=abb316(18)
      acd316(23)=spvak2k1(iv3)
      acd316(24)=spvak2l5(iv2)
      acd316(25)=spvak4k1(iv3)
      acd316(26)=abb316(30)
      acd316(27)=spvak4k1(iv2)
      acd316(28)=spvak2k1(iv1)
      acd316(29)=spvak2l5(iv1)
      acd316(30)=spvak4k1(iv1)
      acd316(31)=acd316(21)*acd316(16)
      acd316(32)=acd316(29)*acd316(2)
      acd316(31)=acd316(31)+acd316(32)
      acd316(32)=acd316(20)*acd316(31)
      acd316(33)=acd316(24)*acd316(16)
      acd316(34)=acd316(29)*acd316(11)
      acd316(33)=acd316(33)+acd316(34)
      acd316(34)=acd316(23)*acd316(33)
      acd316(35)=acd316(21)*acd316(11)
      acd316(36)=acd316(24)*acd316(2)
      acd316(35)=acd316(35)+acd316(36)
      acd316(36)=acd316(28)*acd316(35)
      acd316(32)=acd316(36)+acd316(34)+acd316(32)
      acd316(32)=acd316(22)*acd316(32)
      acd316(33)=acd316(25)*acd316(33)
      acd316(31)=acd316(27)*acd316(31)
      acd316(34)=acd316(30)*acd316(35)
      acd316(31)=acd316(34)+acd316(31)+acd316(33)
      acd316(31)=acd316(26)*acd316(31)
      acd316(33)=-acd316(8)*acd316(1)
      acd316(34)=-acd316(14)*acd316(10)
      acd316(35)=-acd316(19)*acd316(15)
      acd316(33)=acd316(35)+acd316(34)+acd316(33)
      acd316(34)=2.0_ki*acd316(9)
      acd316(33)=acd316(34)*acd316(33)
      acd316(34)=-acd316(6)*acd316(1)
      acd316(35)=-acd316(13)*acd316(10)
      acd316(36)=-acd316(18)*acd316(15)
      acd316(34)=acd316(36)+acd316(35)+acd316(34)
      acd316(35)=2.0_ki*acd316(7)
      acd316(34)=acd316(35)*acd316(34)
      acd316(35)=acd316(4)*acd316(1)
      acd316(36)=acd316(12)*acd316(10)
      acd316(37)=acd316(17)*acd316(15)
      acd316(35)=acd316(37)+acd316(36)+acd316(35)
      acd316(36)=2.0_ki*acd316(5)
      acd316(35)=acd316(36)*acd316(35)
      acd316(36)=acd316(1)*acd316(2)
      acd316(37)=acd316(10)*acd316(11)
      acd316(38)=acd316(15)*acd316(16)
      acd316(36)=acd316(38)+acd316(36)+acd316(37)
      acd316(36)=acd316(3)*acd316(36)
      brack=acd316(31)+acd316(32)+acd316(33)+acd316(34)+acd316(35)+2.0_ki*acd31&
      &6(36)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd316h3
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d316:
   subroutine     reconstruct_d316(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_316:
      coeffs%coeffs_316%c0 = derivative(czip)
      coeffs%coeffs_316%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_316%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_316%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_316%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_316%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_316%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_316%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_316%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_316%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_316%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_316%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_316%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_316%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_316%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_316%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_316%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_316%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_316%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_316%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_316%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_316%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_316%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_316%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_316%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_316%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_316%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_316%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_316%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_316%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_316%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_316%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_316%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_316%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_316%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_316:
   end subroutine reconstruct_d316
!---#] subroutine reconstruct_d316:
end module     p9_csbar_epnebbbarg_d316h3l1d
