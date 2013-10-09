module     p5_usbar_epnebbbarg_d107h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d107h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d107
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd107h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd107
      complex(ki) :: brack
      acd107(1)=dotproduct(k1,qshift)
      acd107(2)=dotproduct(k2,qshift)
      acd107(3)=abb107(53)
      acd107(4)=dotproduct(qshift,spvak2l6)
      acd107(5)=abb107(15)
      acd107(6)=dotproduct(qshift,spvak4k2)
      acd107(7)=abb107(49)
      acd107(8)=dotproduct(qshift,spvak4l6)
      acd107(9)=abb107(35)
      acd107(10)=abb107(41)
      acd107(11)=dotproduct(k7,qshift)
      acd107(12)=dotproduct(e7,qshift)
      acd107(13)=abb107(45)
      acd107(14)=dotproduct(qshift,spvak4k1)
      acd107(15)=abb107(32)
      acd107(16)=dotproduct(qshift,spvak4k7)
      acd107(17)=abb107(50)
      acd107(18)=dotproduct(qshift,spvae7k1)
      acd107(19)=abb107(21)
      acd107(20)=abb107(16)
      acd107(21)=abb107(14)
      acd107(22)=abb107(27)
      acd107(23)=abb107(26)
      acd107(24)=abb107(37)
      acd107(25)=abb107(10)
      acd107(26)=dotproduct(qshift,spval5k1)
      acd107(27)=abb107(17)
      acd107(28)=dotproduct(qshift,spval5k7)
      acd107(29)=abb107(34)
      acd107(30)=abb107(9)
      acd107(31)=abb107(22)
      acd107(32)=dotproduct(qshift,spvak2k1)
      acd107(33)=abb107(29)
      acd107(34)=dotproduct(qshift,spvak2k7)
      acd107(35)=abb107(20)
      acd107(36)=abb107(25)
      acd107(37)=abb107(11)
      acd107(38)=abb107(43)
      acd107(39)=abb107(56)
      acd107(40)=abb107(24)
      acd107(41)=dotproduct(qshift,spval5l6)
      acd107(42)=abb107(55)
      acd107(43)=abb107(13)
      acd107(44)=abb107(19)
      acd107(45)=abb107(23)
      acd107(46)=dotproduct(qshift,spvak2l5)
      acd107(47)=abb107(18)
      acd107(48)=abb107(40)
      acd107(49)=abb107(28)
      acd107(50)=abb107(31)
      acd107(51)=dotproduct(qshift,spvak4l5)
      acd107(52)=abb107(61)
      acd107(53)=abb107(12)
      acd107(54)=acd107(1)-acd107(11)
      acd107(55)=-acd107(9)*acd107(54)
      acd107(56)=-acd107(28)*acd107(39)
      acd107(57)=acd107(26)*acd107(38)
      acd107(58)=acd107(18)*acd107(37)
      acd107(59)=acd107(12)*acd107(23)
      acd107(55)=acd107(59)+acd107(58)+acd107(57)-acd107(40)+acd107(56)+acd107(&
      &55)
      acd107(55)=acd107(8)*acd107(55)
      acd107(56)=-acd107(7)*acd107(54)
      acd107(57)=acd107(34)*acd107(35)
      acd107(58)=acd107(32)*acd107(33)
      acd107(59)=acd107(18)*acd107(31)
      acd107(60)=acd107(12)*acd107(22)
      acd107(56)=acd107(60)+acd107(59)+acd107(58)-acd107(36)+acd107(57)+acd107(&
      &56)
      acd107(56)=acd107(6)*acd107(56)
      acd107(57)=-acd107(5)*acd107(54)
      acd107(58)=-acd107(28)*acd107(29)
      acd107(59)=acd107(26)*acd107(27)
      acd107(60)=acd107(18)*acd107(25)
      acd107(61)=acd107(12)*acd107(21)
      acd107(57)=acd107(61)+acd107(60)+acd107(59)-acd107(30)+acd107(58)+acd107(&
      &57)
      acd107(57)=acd107(4)*acd107(57)
      acd107(58)=acd107(3)*acd107(54)
      acd107(59)=acd107(16)*acd107(17)
      acd107(60)=acd107(14)*acd107(15)
      acd107(61)=acd107(18)*acd107(19)
      acd107(62)=acd107(12)*acd107(13)
      acd107(58)=acd107(62)+acd107(61)+acd107(60)-acd107(20)+acd107(59)+acd107(&
      &58)
      acd107(58)=acd107(2)*acd107(58)
      acd107(59)=acd107(34)*acd107(29)
      acd107(60)=-acd107(32)*acd107(27)
      acd107(61)=acd107(16)*acd107(39)
      acd107(62)=-acd107(14)*acd107(38)
      acd107(59)=acd107(62)+acd107(61)+acd107(59)+acd107(60)
      acd107(59)=acd107(41)*acd107(59)
      acd107(54)=-acd107(10)*acd107(54)
      acd107(60)=-acd107(51)*acd107(52)
      acd107(61)=-acd107(46)*acd107(47)
      acd107(62)=-acd107(34)*acd107(50)
      acd107(63)=-acd107(32)*acd107(45)
      acd107(64)=-acd107(28)*acd107(49)
      acd107(65)=-acd107(26)*acd107(48)
      acd107(66)=-acd107(16)*acd107(43)
      acd107(67)=-acd107(14)*acd107(42)
      acd107(68)=-acd107(18)*acd107(44)
      acd107(69)=-acd107(12)*acd107(24)
      brack=acd107(53)+acd107(54)+acd107(55)+acd107(56)+acd107(57)+acd107(58)+a&
      &cd107(59)+acd107(60)+acd107(61)+acd107(62)+acd107(63)+acd107(64)+acd107(&
      &65)+acd107(66)+acd107(67)+acd107(68)+acd107(69)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd107h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(90) :: acd107
      complex(ki) :: brack
      acd107(1)=k1(iv1)
      acd107(2)=dotproduct(k2,qshift)
      acd107(3)=abb107(53)
      acd107(4)=dotproduct(qshift,spvak2l6)
      acd107(5)=abb107(15)
      acd107(6)=dotproduct(qshift,spvak4k2)
      acd107(7)=abb107(49)
      acd107(8)=dotproduct(qshift,spvak4l6)
      acd107(9)=abb107(35)
      acd107(10)=abb107(41)
      acd107(11)=k2(iv1)
      acd107(12)=dotproduct(k1,qshift)
      acd107(13)=dotproduct(k7,qshift)
      acd107(14)=dotproduct(e7,qshift)
      acd107(15)=abb107(45)
      acd107(16)=dotproduct(qshift,spvak4k1)
      acd107(17)=abb107(32)
      acd107(18)=dotproduct(qshift,spvak4k7)
      acd107(19)=abb107(50)
      acd107(20)=dotproduct(qshift,spvae7k1)
      acd107(21)=abb107(21)
      acd107(22)=abb107(16)
      acd107(23)=k7(iv1)
      acd107(24)=e7(iv1)
      acd107(25)=abb107(14)
      acd107(26)=abb107(27)
      acd107(27)=abb107(26)
      acd107(28)=abb107(37)
      acd107(29)=spvak2l6(iv1)
      acd107(30)=abb107(10)
      acd107(31)=dotproduct(qshift,spval5k1)
      acd107(32)=abb107(17)
      acd107(33)=dotproduct(qshift,spval5k7)
      acd107(34)=abb107(34)
      acd107(35)=abb107(9)
      acd107(36)=spvak4k2(iv1)
      acd107(37)=abb107(22)
      acd107(38)=dotproduct(qshift,spvak2k1)
      acd107(39)=abb107(29)
      acd107(40)=dotproduct(qshift,spvak2k7)
      acd107(41)=abb107(20)
      acd107(42)=abb107(25)
      acd107(43)=spvak4l6(iv1)
      acd107(44)=abb107(11)
      acd107(45)=abb107(43)
      acd107(46)=abb107(56)
      acd107(47)=abb107(24)
      acd107(48)=spvak4k1(iv1)
      acd107(49)=dotproduct(qshift,spval5l6)
      acd107(50)=abb107(55)
      acd107(51)=spvak4k7(iv1)
      acd107(52)=abb107(13)
      acd107(53)=spvae7k1(iv1)
      acd107(54)=abb107(19)
      acd107(55)=spvak2k1(iv1)
      acd107(56)=abb107(23)
      acd107(57)=spval5l6(iv1)
      acd107(58)=spvak2l5(iv1)
      acd107(59)=abb107(18)
      acd107(60)=spval5k1(iv1)
      acd107(61)=abb107(40)
      acd107(62)=spval5k7(iv1)
      acd107(63)=abb107(28)
      acd107(64)=spvak2k7(iv1)
      acd107(65)=abb107(31)
      acd107(66)=spvak4l5(iv1)
      acd107(67)=abb107(61)
      acd107(68)=acd107(1)-acd107(23)
      acd107(69)=-acd107(9)*acd107(68)
      acd107(70)=-acd107(46)*acd107(62)
      acd107(71)=acd107(45)*acd107(60)
      acd107(72)=acd107(53)*acd107(44)
      acd107(73)=acd107(24)*acd107(27)
      acd107(69)=acd107(73)+acd107(72)+acd107(70)+acd107(71)+acd107(69)
      acd107(69)=acd107(8)*acd107(69)
      acd107(70)=-acd107(7)*acd107(68)
      acd107(71)=acd107(64)*acd107(41)
      acd107(72)=acd107(55)*acd107(39)
      acd107(73)=acd107(53)*acd107(37)
      acd107(74)=acd107(24)*acd107(26)
      acd107(70)=acd107(74)+acd107(73)+acd107(71)+acd107(72)+acd107(70)
      acd107(70)=acd107(6)*acd107(70)
      acd107(71)=-acd107(5)*acd107(68)
      acd107(72)=-acd107(34)*acd107(62)
      acd107(73)=acd107(32)*acd107(60)
      acd107(74)=acd107(53)*acd107(30)
      acd107(75)=acd107(24)*acd107(25)
      acd107(71)=acd107(75)+acd107(74)+acd107(72)+acd107(73)+acd107(71)
      acd107(71)=acd107(4)*acd107(71)
      acd107(72)=acd107(3)*acd107(68)
      acd107(73)=acd107(51)*acd107(19)
      acd107(74)=acd107(48)*acd107(17)
      acd107(75)=acd107(53)*acd107(21)
      acd107(76)=acd107(24)*acd107(15)
      acd107(72)=acd107(76)+acd107(75)+acd107(73)+acd107(74)+acd107(72)
      acd107(72)=acd107(2)*acd107(72)
      acd107(73)=-acd107(46)*acd107(33)
      acd107(74)=acd107(45)*acd107(31)
      acd107(75)=acd107(20)*acd107(44)
      acd107(76)=acd107(14)*acd107(27)
      acd107(77)=acd107(12)-acd107(13)
      acd107(78)=-acd107(9)*acd107(77)
      acd107(73)=acd107(78)+acd107(76)+acd107(75)+acd107(74)-acd107(47)+acd107(&
      &73)
      acd107(73)=acd107(43)*acd107(73)
      acd107(74)=acd107(40)*acd107(41)
      acd107(75)=acd107(38)*acd107(39)
      acd107(76)=acd107(20)*acd107(37)
      acd107(78)=acd107(14)*acd107(26)
      acd107(79)=-acd107(7)*acd107(77)
      acd107(74)=acd107(79)+acd107(78)+acd107(76)+acd107(75)-acd107(42)+acd107(&
      &74)
      acd107(74)=acd107(36)*acd107(74)
      acd107(75)=-acd107(34)*acd107(33)
      acd107(76)=acd107(32)*acd107(31)
      acd107(78)=acd107(20)*acd107(30)
      acd107(79)=acd107(14)*acd107(25)
      acd107(80)=-acd107(5)*acd107(77)
      acd107(75)=acd107(80)+acd107(79)+acd107(78)+acd107(76)-acd107(35)+acd107(&
      &75)
      acd107(75)=acd107(29)*acd107(75)
      acd107(76)=acd107(18)*acd107(19)
      acd107(78)=acd107(16)*acd107(17)
      acd107(79)=acd107(20)*acd107(21)
      acd107(80)=acd107(14)*acd107(15)
      acd107(77)=acd107(3)*acd107(77)
      acd107(76)=acd107(77)+acd107(80)+acd107(79)+acd107(78)-acd107(22)+acd107(&
      &76)
      acd107(76)=acd107(11)*acd107(76)
      acd107(77)=acd107(57)*acd107(18)
      acd107(78)=acd107(49)*acd107(51)
      acd107(77)=acd107(77)+acd107(78)
      acd107(77)=acd107(46)*acd107(77)
      acd107(78)=-acd107(57)*acd107(16)
      acd107(79)=-acd107(49)*acd107(48)
      acd107(78)=acd107(78)+acd107(79)
      acd107(78)=acd107(45)*acd107(78)
      acd107(79)=acd107(57)*acd107(40)
      acd107(80)=acd107(49)*acd107(64)
      acd107(79)=acd107(79)+acd107(80)
      acd107(79)=acd107(34)*acd107(79)
      acd107(80)=-acd107(57)*acd107(38)
      acd107(81)=-acd107(49)*acd107(55)
      acd107(80)=acd107(80)+acd107(81)
      acd107(80)=acd107(32)*acd107(80)
      acd107(68)=-acd107(10)*acd107(68)
      acd107(81)=-acd107(66)*acd107(67)
      acd107(82)=-acd107(58)*acd107(59)
      acd107(83)=-acd107(64)*acd107(65)
      acd107(84)=-acd107(62)*acd107(63)
      acd107(85)=-acd107(60)*acd107(61)
      acd107(86)=-acd107(55)*acd107(56)
      acd107(87)=-acd107(51)*acd107(52)
      acd107(88)=-acd107(48)*acd107(50)
      acd107(89)=-acd107(53)*acd107(54)
      acd107(90)=-acd107(24)*acd107(28)
      brack=acd107(68)+acd107(69)+acd107(70)+acd107(71)+acd107(72)+acd107(73)+a&
      &cd107(74)+acd107(75)+acd107(76)+acd107(77)+acd107(78)+acd107(79)+acd107(&
      &80)+acd107(81)+acd107(82)+acd107(83)+acd107(84)+acd107(85)+acd107(86)+ac&
      &d107(87)+acd107(88)+acd107(89)+acd107(90)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd107h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd107
      complex(ki) :: brack
      acd107(1)=k1(iv1)
      acd107(2)=k2(iv2)
      acd107(3)=abb107(53)
      acd107(4)=spvak2l6(iv2)
      acd107(5)=abb107(15)
      acd107(6)=spvak4k2(iv2)
      acd107(7)=abb107(49)
      acd107(8)=spvak4l6(iv2)
      acd107(9)=abb107(35)
      acd107(10)=k1(iv2)
      acd107(11)=k2(iv1)
      acd107(12)=spvak2l6(iv1)
      acd107(13)=spvak4k2(iv1)
      acd107(14)=spvak4l6(iv1)
      acd107(15)=k7(iv2)
      acd107(16)=e7(iv2)
      acd107(17)=abb107(45)
      acd107(18)=spvak4k1(iv2)
      acd107(19)=abb107(32)
      acd107(20)=spvak4k7(iv2)
      acd107(21)=abb107(50)
      acd107(22)=spvae7k1(iv2)
      acd107(23)=abb107(21)
      acd107(24)=k7(iv1)
      acd107(25)=e7(iv1)
      acd107(26)=spvak4k1(iv1)
      acd107(27)=spvak4k7(iv1)
      acd107(28)=spvae7k1(iv1)
      acd107(29)=abb107(14)
      acd107(30)=abb107(27)
      acd107(31)=abb107(26)
      acd107(32)=abb107(10)
      acd107(33)=spval5k1(iv2)
      acd107(34)=abb107(17)
      acd107(35)=spval5k7(iv2)
      acd107(36)=abb107(34)
      acd107(37)=spval5k1(iv1)
      acd107(38)=spval5k7(iv1)
      acd107(39)=abb107(22)
      acd107(40)=spvak2k1(iv2)
      acd107(41)=abb107(29)
      acd107(42)=spvak2k7(iv2)
      acd107(43)=abb107(20)
      acd107(44)=spvak2k1(iv1)
      acd107(45)=spvak2k7(iv1)
      acd107(46)=abb107(11)
      acd107(47)=abb107(43)
      acd107(48)=abb107(56)
      acd107(49)=spval5l6(iv2)
      acd107(50)=spval5l6(iv1)
      acd107(51)=-acd107(48)*acd107(35)
      acd107(52)=acd107(47)*acd107(33)
      acd107(53)=acd107(22)*acd107(46)
      acd107(54)=acd107(16)*acd107(31)
      acd107(55)=acd107(10)-acd107(15)
      acd107(56)=-acd107(9)*acd107(55)
      acd107(51)=acd107(56)+acd107(54)+acd107(53)+acd107(51)+acd107(52)
      acd107(51)=acd107(14)*acd107(51)
      acd107(52)=acd107(42)*acd107(43)
      acd107(53)=acd107(40)*acd107(41)
      acd107(54)=acd107(22)*acd107(39)
      acd107(56)=acd107(16)*acd107(30)
      acd107(57)=-acd107(7)*acd107(55)
      acd107(52)=acd107(57)+acd107(56)+acd107(54)+acd107(52)+acd107(53)
      acd107(52)=acd107(13)*acd107(52)
      acd107(53)=-acd107(36)*acd107(35)
      acd107(54)=acd107(34)*acd107(33)
      acd107(56)=acd107(22)*acd107(32)
      acd107(57)=acd107(16)*acd107(29)
      acd107(58)=-acd107(5)*acd107(55)
      acd107(53)=acd107(58)+acd107(57)+acd107(56)+acd107(53)+acd107(54)
      acd107(53)=acd107(12)*acd107(53)
      acd107(54)=acd107(20)*acd107(21)
      acd107(56)=acd107(18)*acd107(19)
      acd107(57)=acd107(22)*acd107(23)
      acd107(58)=acd107(16)*acd107(17)
      acd107(55)=acd107(3)*acd107(55)
      acd107(54)=acd107(55)+acd107(58)+acd107(57)+acd107(54)+acd107(56)
      acd107(54)=acd107(11)*acd107(54)
      acd107(55)=acd107(1)-acd107(24)
      acd107(56)=-acd107(9)*acd107(55)
      acd107(57)=-acd107(48)*acd107(38)
      acd107(58)=acd107(47)*acd107(37)
      acd107(59)=acd107(28)*acd107(46)
      acd107(60)=acd107(25)*acd107(31)
      acd107(56)=acd107(60)+acd107(59)+acd107(57)+acd107(58)+acd107(56)
      acd107(56)=acd107(8)*acd107(56)
      acd107(57)=-acd107(7)*acd107(55)
      acd107(58)=acd107(43)*acd107(45)
      acd107(59)=acd107(41)*acd107(44)
      acd107(60)=acd107(28)*acd107(39)
      acd107(61)=acd107(25)*acd107(30)
      acd107(57)=acd107(61)+acd107(60)+acd107(58)+acd107(59)+acd107(57)
      acd107(57)=acd107(6)*acd107(57)
      acd107(58)=-acd107(5)*acd107(55)
      acd107(59)=-acd107(36)*acd107(38)
      acd107(60)=acd107(34)*acd107(37)
      acd107(61)=acd107(28)*acd107(32)
      acd107(62)=acd107(25)*acd107(29)
      acd107(58)=acd107(62)+acd107(61)+acd107(59)+acd107(60)+acd107(58)
      acd107(58)=acd107(4)*acd107(58)
      acd107(55)=acd107(3)*acd107(55)
      acd107(59)=acd107(21)*acd107(27)
      acd107(60)=acd107(19)*acd107(26)
      acd107(61)=acd107(28)*acd107(23)
      acd107(62)=acd107(25)*acd107(17)
      acd107(55)=acd107(62)+acd107(61)+acd107(59)+acd107(60)+acd107(55)
      acd107(55)=acd107(2)*acd107(55)
      acd107(59)=acd107(50)*acd107(20)
      acd107(60)=acd107(49)*acd107(27)
      acd107(59)=acd107(59)+acd107(60)
      acd107(59)=acd107(48)*acd107(59)
      acd107(60)=-acd107(50)*acd107(18)
      acd107(61)=-acd107(49)*acd107(26)
      acd107(60)=acd107(60)+acd107(61)
      acd107(60)=acd107(47)*acd107(60)
      acd107(61)=acd107(50)*acd107(42)
      acd107(62)=acd107(49)*acd107(45)
      acd107(61)=acd107(61)+acd107(62)
      acd107(61)=acd107(36)*acd107(61)
      acd107(62)=-acd107(50)*acd107(40)
      acd107(63)=-acd107(49)*acd107(44)
      acd107(62)=acd107(62)+acd107(63)
      acd107(62)=acd107(34)*acd107(62)
      brack=acd107(51)+acd107(52)+acd107(53)+acd107(54)+acd107(55)+acd107(56)+a&
      &cd107(57)+acd107(58)+acd107(59)+acd107(60)+acd107(61)+acd107(62)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd107h2
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
      qshift = -k6
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
!---#[ subroutine reconstruct_d107:
   subroutine     reconstruct_d107(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_107:
      coeffs%coeffs_107%c0 = derivative(czip)
      coeffs%coeffs_107%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_107%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_107%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_107%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_107%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_107%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_107%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_107%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_107%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_107%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_107%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_107%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_107%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_107%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_107:
   end subroutine reconstruct_d107
!---#] subroutine reconstruct_d107:
end module     p5_usbar_epnebbbarg_d107h2l1d
