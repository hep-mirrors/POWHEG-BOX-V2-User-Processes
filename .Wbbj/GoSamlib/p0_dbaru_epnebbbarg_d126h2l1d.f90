module     p0_dbaru_epnebbbarg_d126h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity2d126h2l1d.f90
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
   public :: derivative , reconstruct_d126
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd126
      complex(ki) :: brack
      acd126(1)=dotproduct(k2,qshift)
      acd126(2)=dotproduct(k7,qshift)
      acd126(3)=abb126(48)
      acd126(4)=dotproduct(e7,qshift)
      acd126(5)=dotproduct(qshift,spvak4k3)
      acd126(6)=abb126(37)
      acd126(7)=abb126(44)
      acd126(8)=dotproduct(qshift,qshift)
      acd126(9)=abb126(47)
      acd126(10)=abb126(33)
      acd126(11)=abb126(32)
      acd126(12)=dotproduct(k3,qshift)
      acd126(13)=abb126(27)
      acd126(14)=abb126(23)
      acd126(15)=dotproduct(k4,qshift)
      acd126(16)=dotproduct(l5,qshift)
      acd126(17)=abb126(40)
      acd126(18)=abb126(42)
      acd126(19)=abb126(34)
      acd126(20)=abb126(38)
      acd126(21)=abb126(29)
      acd126(22)=abb126(31)
      acd126(23)=dotproduct(l6,qshift)
      acd126(24)=dotproduct(qshift,spval5k2)
      acd126(25)=abb126(14)
      acd126(26)=dotproduct(qshift,spval5l6)
      acd126(27)=abb126(39)
      acd126(28)=dotproduct(qshift,spvak1e7)
      acd126(29)=abb126(55)
      acd126(30)=abb126(20)
      acd126(31)=abb126(22)
      acd126(32)=abb126(8)
      acd126(33)=abb126(12)
      acd126(34)=dotproduct(qshift,spvak1k2)
      acd126(35)=abb126(13)
      acd126(36)=dotproduct(qshift,spvak1l6)
      acd126(37)=abb126(19)
      acd126(38)=abb126(11)
      acd126(39)=abb126(10)
      acd126(40)=abb126(16)
      acd126(41)=dotproduct(qshift,spvak1k3)
      acd126(42)=abb126(18)
      acd126(43)=dotproduct(qshift,spvak1k7)
      acd126(44)=abb126(35)
      acd126(45)=abb126(17)
      acd126(46)=abb126(9)
      acd126(47)=abb126(36)
      acd126(48)=abb126(52)
      acd126(49)=abb126(15)
      acd126(50)=abb126(28)
      acd126(51)=abb126(21)
      acd126(52)=abb126(25)
      acd126(53)=abb126(24)
      acd126(54)=abb126(26)
      acd126(55)=abb126(30)
      acd126(56)=abb126(50)
      acd126(57)=acd126(16)+acd126(23)
      acd126(58)=acd126(18)*acd126(57)
      acd126(59)=-acd126(36)*acd126(37)
      acd126(60)=-acd126(34)*acd126(35)
      acd126(61)=-acd126(26)*acd126(33)
      acd126(62)=-acd126(24)*acd126(32)
      acd126(63)=-acd126(1)*acd126(6)
      acd126(58)=acd126(63)+acd126(62)+acd126(61)+acd126(60)+acd126(38)+acd126(&
      &59)+acd126(58)
      acd126(58)=acd126(5)*acd126(58)
      acd126(59)=-acd126(19)*acd126(57)
      acd126(60)=acd126(12)+acd126(15)
      acd126(61)=-acd126(2)-acd126(60)
      acd126(61)=acd126(13)*acd126(61)
      acd126(62)=acd126(43)*acd126(44)
      acd126(63)=acd126(41)*acd126(42)
      acd126(64)=acd126(26)*acd126(40)
      acd126(65)=acd126(24)*acd126(39)
      acd126(66)=acd126(1)*acd126(7)
      acd126(67)=-acd126(8)*acd126(31)
      acd126(58)=acd126(58)+acd126(67)+acd126(66)+acd126(65)+acd126(64)+acd126(&
      &63)-acd126(45)+acd126(62)+acd126(61)+acd126(59)
      acd126(58)=acd126(4)*acd126(58)
      acd126(59)=-acd126(20)*acd126(57)
      acd126(61)=-acd126(28)*acd126(48)
      acd126(62)=-acd126(26)*acd126(47)
      acd126(63)=-acd126(24)*acd126(46)
      acd126(64)=-acd126(1)*acd126(9)
      acd126(59)=acd126(64)+acd126(63)+acd126(62)+acd126(49)+acd126(61)+acd126(&
      &59)
      acd126(59)=acd126(8)*acd126(59)
      acd126(61)=acd126(17)*acd126(57)
      acd126(62)=acd126(28)*acd126(29)
      acd126(63)=acd126(26)*acd126(27)
      acd126(64)=acd126(24)*acd126(25)
      acd126(65)=acd126(1)*acd126(3)
      acd126(61)=acd126(65)+acd126(64)+acd126(63)-acd126(30)+acd126(62)+acd126(&
      &61)
      acd126(61)=acd126(2)*acd126(61)
      acd126(62)=-acd126(21)*acd126(57)
      acd126(63)=acd126(28)*acd126(52)
      acd126(64)=acd126(26)*acd126(51)
      acd126(65)=acd126(24)*acd126(50)
      acd126(66)=acd126(1)*acd126(10)
      acd126(62)=acd126(66)+acd126(65)+acd126(64)-acd126(53)+acd126(63)+acd126(&
      &62)
      acd126(62)=acd126(5)*acd126(62)
      acd126(57)=acd126(22)*acd126(57)
      acd126(60)=acd126(14)*acd126(60)
      acd126(63)=-acd126(28)*acd126(56)
      acd126(64)=-acd126(26)*acd126(55)
      acd126(65)=-acd126(24)*acd126(54)
      acd126(66)=-acd126(1)*acd126(11)
      brack=acd126(57)+acd126(58)+acd126(59)+acd126(60)+acd126(61)+acd126(62)+a&
      &cd126(63)+acd126(64)+acd126(65)+acd126(66)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd126
      complex(ki) :: brack
      acd126(1)=k2(iv1)
      acd126(2)=dotproduct(k7,qshift)
      acd126(3)=abb126(48)
      acd126(4)=dotproduct(e7,qshift)
      acd126(5)=dotproduct(qshift,spvak4k3)
      acd126(6)=abb126(37)
      acd126(7)=abb126(44)
      acd126(8)=dotproduct(qshift,qshift)
      acd126(9)=abb126(47)
      acd126(10)=abb126(33)
      acd126(11)=abb126(32)
      acd126(12)=k3(iv1)
      acd126(13)=abb126(27)
      acd126(14)=abb126(23)
      acd126(15)=k4(iv1)
      acd126(16)=l5(iv1)
      acd126(17)=abb126(40)
      acd126(18)=abb126(42)
      acd126(19)=abb126(34)
      acd126(20)=abb126(38)
      acd126(21)=abb126(29)
      acd126(22)=abb126(31)
      acd126(23)=l6(iv1)
      acd126(24)=k7(iv1)
      acd126(25)=dotproduct(k2,qshift)
      acd126(26)=dotproduct(l5,qshift)
      acd126(27)=dotproduct(l6,qshift)
      acd126(28)=dotproduct(qshift,spval5k2)
      acd126(29)=abb126(14)
      acd126(30)=dotproduct(qshift,spval5l6)
      acd126(31)=abb126(39)
      acd126(32)=dotproduct(qshift,spvak1e7)
      acd126(33)=abb126(55)
      acd126(34)=abb126(20)
      acd126(35)=e7(iv1)
      acd126(36)=dotproduct(k3,qshift)
      acd126(37)=dotproduct(k4,qshift)
      acd126(38)=abb126(22)
      acd126(39)=abb126(8)
      acd126(40)=abb126(12)
      acd126(41)=dotproduct(qshift,spvak1k2)
      acd126(42)=abb126(13)
      acd126(43)=dotproduct(qshift,spvak1l6)
      acd126(44)=abb126(19)
      acd126(45)=abb126(11)
      acd126(46)=abb126(10)
      acd126(47)=abb126(16)
      acd126(48)=dotproduct(qshift,spvak1k3)
      acd126(49)=abb126(18)
      acd126(50)=dotproduct(qshift,spvak1k7)
      acd126(51)=abb126(35)
      acd126(52)=abb126(17)
      acd126(53)=qshift(iv1)
      acd126(54)=abb126(9)
      acd126(55)=abb126(36)
      acd126(56)=abb126(52)
      acd126(57)=abb126(15)
      acd126(58)=spvak4k3(iv1)
      acd126(59)=abb126(28)
      acd126(60)=abb126(21)
      acd126(61)=abb126(25)
      acd126(62)=abb126(24)
      acd126(63)=spval5k2(iv1)
      acd126(64)=abb126(26)
      acd126(65)=spval5l6(iv1)
      acd126(66)=abb126(30)
      acd126(67)=spvak1e7(iv1)
      acd126(68)=abb126(50)
      acd126(69)=spvak1k2(iv1)
      acd126(70)=spvak1k3(iv1)
      acd126(71)=spvak1l6(iv1)
      acd126(72)=spvak1k7(iv1)
      acd126(73)=acd126(26)+acd126(27)
      acd126(74)=acd126(73)*acd126(18)
      acd126(75)=acd126(44)*acd126(43)
      acd126(76)=acd126(42)*acd126(41)
      acd126(77)=acd126(30)*acd126(40)
      acd126(78)=acd126(28)*acd126(39)
      acd126(79)=acd126(25)*acd126(6)
      acd126(74)=-acd126(77)-acd126(75)-acd126(76)-acd126(78)-acd126(79)+acd126&
      &(74)+acd126(45)
      acd126(75)=acd126(58)*acd126(74)
      acd126(76)=acd126(16)+acd126(23)
      acd126(77)=acd126(18)*acd126(76)
      acd126(78)=-acd126(44)*acd126(71)
      acd126(79)=-acd126(42)*acd126(69)
      acd126(80)=-acd126(65)*acd126(40)
      acd126(81)=-acd126(63)*acd126(39)
      acd126(82)=-acd126(1)*acd126(6)
      acd126(77)=acd126(82)+acd126(81)+acd126(80)+acd126(78)+acd126(79)+acd126(&
      &77)
      acd126(77)=acd126(5)*acd126(77)
      acd126(78)=-acd126(19)*acd126(76)
      acd126(79)=acd126(12)+acd126(15)
      acd126(80)=-acd126(24)-acd126(79)
      acd126(80)=acd126(13)*acd126(80)
      acd126(81)=acd126(51)*acd126(72)
      acd126(82)=acd126(49)*acd126(70)
      acd126(83)=acd126(65)*acd126(47)
      acd126(84)=acd126(63)*acd126(46)
      acd126(85)=acd126(1)*acd126(7)
      acd126(86)=2.0_ki*acd126(53)
      acd126(87)=-acd126(38)*acd126(86)
      acd126(75)=acd126(77)+acd126(75)+acd126(87)+acd126(85)+acd126(84)+acd126(&
      &83)+acd126(81)+acd126(82)+acd126(80)+acd126(78)
      acd126(75)=acd126(4)*acd126(75)
      acd126(77)=-acd126(19)*acd126(73)
      acd126(78)=-acd126(2)-acd126(37)-acd126(36)
      acd126(78)=acd126(13)*acd126(78)
      acd126(80)=acd126(51)*acd126(50)
      acd126(81)=acd126(49)*acd126(48)
      acd126(82)=acd126(30)*acd126(47)
      acd126(83)=acd126(28)*acd126(46)
      acd126(84)=acd126(25)*acd126(7)
      acd126(85)=-acd126(8)*acd126(38)
      acd126(77)=acd126(85)+acd126(84)+acd126(83)+acd126(82)+acd126(81)-acd126(&
      &52)+acd126(80)+acd126(78)+acd126(77)
      acd126(77)=acd126(35)*acd126(77)
      acd126(74)=acd126(35)*acd126(74)
      acd126(78)=-acd126(21)*acd126(76)
      acd126(80)=acd126(67)*acd126(61)
      acd126(81)=acd126(65)*acd126(60)
      acd126(82)=acd126(63)*acd126(59)
      acd126(83)=acd126(1)*acd126(10)
      acd126(74)=acd126(74)+acd126(83)+acd126(82)+acd126(80)+acd126(81)+acd126(&
      &78)
      acd126(74)=acd126(5)*acd126(74)
      acd126(78)=-acd126(20)*acd126(76)
      acd126(80)=-acd126(67)*acd126(56)
      acd126(81)=-acd126(65)*acd126(55)
      acd126(82)=-acd126(63)*acd126(54)
      acd126(83)=-acd126(1)*acd126(9)
      acd126(78)=acd126(83)+acd126(82)+acd126(80)+acd126(81)+acd126(78)
      acd126(78)=acd126(8)*acd126(78)
      acd126(80)=acd126(17)*acd126(76)
      acd126(81)=acd126(67)*acd126(33)
      acd126(82)=acd126(65)*acd126(31)
      acd126(83)=acd126(63)*acd126(29)
      acd126(84)=acd126(1)*acd126(3)
      acd126(80)=acd126(84)+acd126(83)+acd126(81)+acd126(82)+acd126(80)
      acd126(80)=acd126(2)*acd126(80)
      acd126(81)=-acd126(20)*acd126(73)
      acd126(82)=-acd126(32)*acd126(56)
      acd126(83)=-acd126(30)*acd126(55)
      acd126(84)=-acd126(28)*acd126(54)
      acd126(85)=-acd126(25)*acd126(9)
      acd126(81)=acd126(85)+acd126(84)+acd126(83)+acd126(57)+acd126(82)+acd126(&
      &81)
      acd126(81)=acd126(81)*acd126(86)
      acd126(82)=acd126(17)*acd126(73)
      acd126(83)=acd126(32)*acd126(33)
      acd126(84)=acd126(30)*acd126(31)
      acd126(85)=acd126(28)*acd126(29)
      acd126(86)=acd126(25)*acd126(3)
      acd126(82)=acd126(86)+acd126(85)+acd126(84)-acd126(34)+acd126(83)+acd126(&
      &82)
      acd126(82)=acd126(24)*acd126(82)
      acd126(73)=-acd126(21)*acd126(73)
      acd126(83)=acd126(32)*acd126(61)
      acd126(84)=acd126(30)*acd126(60)
      acd126(85)=acd126(28)*acd126(59)
      acd126(86)=acd126(25)*acd126(10)
      acd126(73)=acd126(86)+acd126(85)+acd126(84)-acd126(62)+acd126(83)+acd126(&
      &73)
      acd126(73)=acd126(58)*acd126(73)
      acd126(76)=acd126(22)*acd126(76)
      acd126(79)=acd126(14)*acd126(79)
      acd126(83)=-acd126(67)*acd126(68)
      acd126(84)=-acd126(65)*acd126(66)
      acd126(85)=-acd126(63)*acd126(64)
      acd126(86)=-acd126(1)*acd126(11)
      brack=acd126(73)+acd126(74)+acd126(75)+acd126(76)+acd126(77)+acd126(78)+a&
      &cd126(79)+acd126(80)+acd126(81)+acd126(82)+acd126(83)+acd126(84)+acd126(&
      &85)+acd126(86)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(91) :: acd126
      complex(ki) :: brack
      acd126(1)=d(iv1,iv2)
      acd126(2)=dotproduct(k2,qshift)
      acd126(3)=abb126(47)
      acd126(4)=dotproduct(l5,qshift)
      acd126(5)=abb126(38)
      acd126(6)=dotproduct(l6,qshift)
      acd126(7)=dotproduct(e7,qshift)
      acd126(8)=abb126(22)
      acd126(9)=dotproduct(qshift,spval5k2)
      acd126(10)=abb126(9)
      acd126(11)=dotproduct(qshift,spval5l6)
      acd126(12)=abb126(36)
      acd126(13)=dotproduct(qshift,spvak1e7)
      acd126(14)=abb126(52)
      acd126(15)=abb126(15)
      acd126(16)=k2(iv1)
      acd126(17)=k7(iv2)
      acd126(18)=abb126(48)
      acd126(19)=e7(iv2)
      acd126(20)=dotproduct(qshift,spvak4k3)
      acd126(21)=abb126(37)
      acd126(22)=abb126(44)
      acd126(23)=qshift(iv2)
      acd126(24)=spvak4k3(iv2)
      acd126(25)=abb126(33)
      acd126(26)=k2(iv2)
      acd126(27)=k7(iv1)
      acd126(28)=e7(iv1)
      acd126(29)=qshift(iv1)
      acd126(30)=spvak4k3(iv1)
      acd126(31)=k3(iv1)
      acd126(32)=abb126(27)
      acd126(33)=k3(iv2)
      acd126(34)=k4(iv1)
      acd126(35)=k4(iv2)
      acd126(36)=l5(iv1)
      acd126(37)=abb126(40)
      acd126(38)=abb126(42)
      acd126(39)=abb126(34)
      acd126(40)=abb126(29)
      acd126(41)=l5(iv2)
      acd126(42)=l6(iv1)
      acd126(43)=l6(iv2)
      acd126(44)=spval5k2(iv2)
      acd126(45)=abb126(14)
      acd126(46)=spval5l6(iv2)
      acd126(47)=abb126(39)
      acd126(48)=spvak1e7(iv2)
      acd126(49)=abb126(55)
      acd126(50)=spval5k2(iv1)
      acd126(51)=spval5l6(iv1)
      acd126(52)=spvak1e7(iv1)
      acd126(53)=abb126(8)
      acd126(54)=abb126(10)
      acd126(55)=abb126(12)
      acd126(56)=abb126(16)
      acd126(57)=dotproduct(qshift,spvak1k2)
      acd126(58)=abb126(13)
      acd126(59)=dotproduct(qshift,spvak1l6)
      acd126(60)=abb126(19)
      acd126(61)=abb126(11)
      acd126(62)=spvak1k2(iv2)
      acd126(63)=spvak1k3(iv2)
      acd126(64)=abb126(18)
      acd126(65)=spvak1l6(iv2)
      acd126(66)=spvak1k7(iv2)
      acd126(67)=abb126(35)
      acd126(68)=spvak1k2(iv1)
      acd126(69)=spvak1k3(iv1)
      acd126(70)=spvak1l6(iv1)
      acd126(71)=spvak1k7(iv1)
      acd126(72)=abb126(28)
      acd126(73)=abb126(21)
      acd126(74)=abb126(25)
      acd126(75)=acd126(60)*acd126(65)
      acd126(76)=acd126(41)+acd126(43)
      acd126(77)=acd126(76)*acd126(38)
      acd126(78)=acd126(58)*acd126(62)
      acd126(79)=acd126(46)*acd126(55)
      acd126(80)=acd126(44)*acd126(53)
      acd126(81)=acd126(21)*acd126(26)
      acd126(75)=acd126(78)+acd126(79)+acd126(80)+acd126(81)+acd126(75)-acd126(&
      &77)
      acd126(77)=-acd126(20)*acd126(75)
      acd126(78)=acd126(60)*acd126(59)
      acd126(79)=acd126(58)*acd126(57)
      acd126(80)=acd126(55)*acd126(11)
      acd126(81)=acd126(53)*acd126(9)
      acd126(82)=acd126(4)+acd126(6)
      acd126(83)=acd126(82)*acd126(38)
      acd126(84)=acd126(21)*acd126(2)
      acd126(78)=acd126(81)-acd126(83)+acd126(84)-acd126(61)+acd126(78)+acd126(&
      &79)+acd126(80)
      acd126(79)=-acd126(24)*acd126(78)
      acd126(80)=-acd126(39)*acd126(76)
      acd126(81)=-acd126(17)-acd126(35)-acd126(33)
      acd126(81)=acd126(32)*acd126(81)
      acd126(83)=acd126(67)*acd126(66)
      acd126(84)=acd126(64)*acd126(63)
      acd126(85)=acd126(46)*acd126(56)
      acd126(86)=acd126(44)*acd126(54)
      acd126(87)=acd126(26)*acd126(22)
      acd126(88)=2.0_ki*acd126(8)
      acd126(89)=-acd126(23)*acd126(88)
      acd126(77)=acd126(79)+acd126(77)+acd126(89)+acd126(87)+acd126(86)+acd126(&
      &85)+acd126(83)+acd126(84)+acd126(81)+acd126(80)
      acd126(77)=acd126(28)*acd126(77)
      acd126(79)=acd126(60)*acd126(70)
      acd126(80)=acd126(58)*acd126(68)
      acd126(81)=acd126(36)+acd126(42)
      acd126(83)=acd126(81)*acd126(38)
      acd126(84)=acd126(51)*acd126(55)
      acd126(85)=acd126(50)*acd126(53)
      acd126(86)=acd126(16)*acd126(21)
      acd126(79)=acd126(86)+acd126(79)+acd126(84)+acd126(85)+acd126(80)-acd126(&
      &83)
      acd126(80)=-acd126(20)*acd126(79)
      acd126(78)=-acd126(30)*acd126(78)
      acd126(83)=-acd126(39)*acd126(81)
      acd126(84)=-acd126(27)-acd126(34)-acd126(31)
      acd126(84)=acd126(32)*acd126(84)
      acd126(85)=acd126(67)*acd126(71)
      acd126(86)=acd126(64)*acd126(69)
      acd126(87)=acd126(51)*acd126(56)
      acd126(89)=acd126(50)*acd126(54)
      acd126(90)=acd126(16)*acd126(22)
      acd126(91)=-acd126(29)*acd126(88)
      acd126(78)=acd126(78)+acd126(80)+acd126(91)+acd126(90)+acd126(89)+acd126(&
      &87)+acd126(85)+acd126(86)+acd126(84)+acd126(83)
      acd126(78)=acd126(19)*acd126(78)
      acd126(80)=-acd126(14)*acd126(48)
      acd126(83)=-acd126(46)*acd126(12)
      acd126(84)=-acd126(44)*acd126(10)
      acd126(85)=-acd126(26)*acd126(3)
      acd126(86)=-acd126(5)*acd126(76)
      acd126(80)=acd126(86)+acd126(85)+acd126(84)+acd126(80)+acd126(83)
      acd126(80)=acd126(29)*acd126(80)
      acd126(83)=-acd126(14)*acd126(52)
      acd126(84)=-acd126(51)*acd126(12)
      acd126(85)=-acd126(50)*acd126(10)
      acd126(86)=-acd126(16)*acd126(3)
      acd126(87)=-acd126(5)*acd126(81)
      acd126(83)=acd126(87)+acd126(86)+acd126(85)+acd126(83)+acd126(84)
      acd126(83)=acd126(23)*acd126(83)
      acd126(80)=acd126(80)+acd126(83)
      acd126(75)=-acd126(7)*acd126(75)
      acd126(83)=-acd126(40)*acd126(76)
      acd126(84)=acd126(48)*acd126(74)
      acd126(85)=acd126(46)*acd126(73)
      acd126(86)=acd126(44)*acd126(72)
      acd126(87)=acd126(26)*acd126(25)
      acd126(75)=acd126(75)+acd126(87)+acd126(86)+acd126(84)+acd126(85)+acd126(&
      &83)
      acd126(75)=acd126(30)*acd126(75)
      acd126(79)=-acd126(7)*acd126(79)
      acd126(83)=-acd126(40)*acd126(81)
      acd126(84)=acd126(52)*acd126(74)
      acd126(85)=acd126(51)*acd126(73)
      acd126(86)=acd126(50)*acd126(72)
      acd126(87)=acd126(16)*acd126(25)
      acd126(79)=acd126(79)+acd126(87)+acd126(86)+acd126(84)+acd126(85)+acd126(&
      &83)
      acd126(79)=acd126(24)*acd126(79)
      acd126(83)=-acd126(14)*acd126(13)
      acd126(84)=-acd126(11)*acd126(12)
      acd126(85)=-acd126(9)*acd126(10)
      acd126(86)=-acd126(2)*acd126(3)
      acd126(82)=-acd126(5)*acd126(82)
      acd126(82)=acd126(82)+acd126(86)+acd126(85)+acd126(84)+acd126(15)+acd126(&
      &83)
      acd126(83)=-acd126(7)*acd126(88)
      acd126(82)=acd126(83)+2.0_ki*acd126(82)
      acd126(82)=acd126(1)*acd126(82)
      acd126(76)=acd126(37)*acd126(76)
      acd126(83)=acd126(48)*acd126(49)
      acd126(84)=acd126(46)*acd126(47)
      acd126(85)=acd126(44)*acd126(45)
      acd126(86)=acd126(26)*acd126(18)
      acd126(76)=acd126(86)+acd126(85)+acd126(83)+acd126(84)+acd126(76)
      acd126(76)=acd126(27)*acd126(76)
      acd126(81)=acd126(37)*acd126(81)
      acd126(83)=acd126(52)*acd126(49)
      acd126(84)=acd126(51)*acd126(47)
      acd126(85)=acd126(50)*acd126(45)
      acd126(86)=acd126(16)*acd126(18)
      acd126(81)=acd126(86)+acd126(85)+acd126(83)+acd126(84)+acd126(81)
      acd126(81)=acd126(17)*acd126(81)
      brack=acd126(75)+acd126(76)+acd126(77)+acd126(78)+acd126(79)+2.0_ki*acd12&
      &6(80)+acd126(81)+acd126(82)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd126h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd126
      complex(ki) :: brack
      acd126(1)=d(iv1,iv2)
      acd126(2)=k2(iv3)
      acd126(3)=abb126(47)
      acd126(4)=l5(iv3)
      acd126(5)=abb126(38)
      acd126(6)=l6(iv3)
      acd126(7)=e7(iv3)
      acd126(8)=abb126(22)
      acd126(9)=spval5k2(iv3)
      acd126(10)=abb126(9)
      acd126(11)=spval5l6(iv3)
      acd126(12)=abb126(36)
      acd126(13)=spvak1e7(iv3)
      acd126(14)=abb126(52)
      acd126(15)=d(iv1,iv3)
      acd126(16)=k2(iv2)
      acd126(17)=l5(iv2)
      acd126(18)=l6(iv2)
      acd126(19)=e7(iv2)
      acd126(20)=spval5k2(iv2)
      acd126(21)=spval5l6(iv2)
      acd126(22)=spvak1e7(iv2)
      acd126(23)=d(iv2,iv3)
      acd126(24)=k2(iv1)
      acd126(25)=l5(iv1)
      acd126(26)=l6(iv1)
      acd126(27)=e7(iv1)
      acd126(28)=spval5k2(iv1)
      acd126(29)=spval5l6(iv1)
      acd126(30)=spvak1e7(iv1)
      acd126(31)=spvak4k3(iv3)
      acd126(32)=abb126(37)
      acd126(33)=spvak4k3(iv2)
      acd126(34)=spvak4k3(iv1)
      acd126(35)=abb126(42)
      acd126(36)=abb126(8)
      acd126(37)=abb126(12)
      acd126(38)=spvak1k2(iv3)
      acd126(39)=abb126(13)
      acd126(40)=spvak1l6(iv3)
      acd126(41)=abb126(19)
      acd126(42)=spvak1k2(iv2)
      acd126(43)=spvak1l6(iv2)
      acd126(44)=spvak1k2(iv1)
      acd126(45)=spvak1l6(iv1)
      acd126(46)=-acd126(14)*acd126(30)
      acd126(47)=-acd126(12)*acd126(29)
      acd126(48)=-acd126(10)*acd126(28)
      acd126(49)=-acd126(3)*acd126(24)
      acd126(50)=acd126(25)+acd126(26)
      acd126(51)=-acd126(5)*acd126(50)
      acd126(46)=acd126(51)+acd126(49)+acd126(48)+acd126(46)+acd126(47)
      acd126(46)=acd126(23)*acd126(46)
      acd126(47)=-acd126(14)*acd126(22)
      acd126(48)=-acd126(12)*acd126(21)
      acd126(49)=-acd126(10)*acd126(20)
      acd126(51)=-acd126(3)*acd126(16)
      acd126(52)=acd126(17)+acd126(18)
      acd126(53)=-acd126(5)*acd126(52)
      acd126(47)=acd126(53)+acd126(51)+acd126(49)+acd126(47)+acd126(48)
      acd126(47)=acd126(15)*acd126(47)
      acd126(48)=-acd126(14)*acd126(13)
      acd126(49)=-acd126(11)*acd126(12)
      acd126(51)=-acd126(9)*acd126(10)
      acd126(53)=-acd126(2)*acd126(3)
      acd126(54)=acd126(4)+acd126(6)
      acd126(55)=-acd126(5)*acd126(54)
      acd126(48)=acd126(55)+acd126(53)+acd126(51)+acd126(48)+acd126(49)
      acd126(48)=acd126(1)*acd126(48)
      acd126(46)=acd126(48)+acd126(46)+acd126(47)
      acd126(47)=acd126(41)*acd126(40)
      acd126(48)=acd126(39)*acd126(38)
      acd126(49)=acd126(37)*acd126(11)
      acd126(51)=acd126(54)*acd126(35)
      acd126(53)=acd126(36)*acd126(9)
      acd126(54)=acd126(32)*acd126(2)
      acd126(47)=-acd126(51)+acd126(47)+acd126(53)+acd126(54)+acd126(48)+acd126&
      &(49)
      acd126(48)=-acd126(33)*acd126(47)
      acd126(49)=acd126(41)*acd126(43)
      acd126(51)=acd126(39)*acd126(42)
      acd126(53)=acd126(37)*acd126(21)
      acd126(52)=acd126(52)*acd126(35)
      acd126(54)=acd126(36)*acd126(20)
      acd126(55)=acd126(32)*acd126(16)
      acd126(49)=-acd126(52)+acd126(49)+acd126(54)+acd126(55)+acd126(51)+acd126&
      &(53)
      acd126(51)=-acd126(31)*acd126(49)
      acd126(52)=2.0_ki*acd126(8)
      acd126(53)=-acd126(23)*acd126(52)
      acd126(48)=acd126(51)+acd126(53)+acd126(48)
      acd126(48)=acd126(27)*acd126(48)
      acd126(47)=-acd126(34)*acd126(47)
      acd126(51)=acd126(41)*acd126(45)
      acd126(53)=acd126(39)*acd126(44)
      acd126(54)=acd126(37)*acd126(29)
      acd126(50)=acd126(50)*acd126(35)
      acd126(55)=acd126(36)*acd126(28)
      acd126(56)=acd126(32)*acd126(24)
      acd126(50)=-acd126(50)+acd126(51)+acd126(55)+acd126(56)+acd126(53)+acd126&
      &(54)
      acd126(51)=-acd126(31)*acd126(50)
      acd126(53)=-acd126(15)*acd126(52)
      acd126(47)=acd126(51)+acd126(53)+acd126(47)
      acd126(47)=acd126(19)*acd126(47)
      acd126(49)=-acd126(34)*acd126(49)
      acd126(50)=-acd126(33)*acd126(50)
      acd126(51)=-acd126(1)*acd126(52)
      acd126(49)=acd126(50)+acd126(51)+acd126(49)
      acd126(49)=acd126(7)*acd126(49)
      brack=2.0_ki*acd126(46)+acd126(47)+acd126(48)+acd126(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd126h2
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
      qshift = k3-k2+k7+k4
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
!---#[ subroutine reconstruct_d126:
   subroutine     reconstruct_d126(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_126:
      coeffs%coeffs_126%c0 = derivative(czip)
      coeffs%coeffs_126%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_126%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_126%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_126%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_126%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_126%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_126%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_126%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_126%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_126%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_126%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_126%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_126%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_126%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_126%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_126%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_126%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_126%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_126%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_126%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_126%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_126%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_126%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_126%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_126%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_126%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_126%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_126%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_126%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_126%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_126%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_126%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_126%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_126%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_126:
   end subroutine reconstruct_d126
!---#] subroutine reconstruct_d126:
end module     p0_dbaru_epnebbbarg_d126h2l1d
