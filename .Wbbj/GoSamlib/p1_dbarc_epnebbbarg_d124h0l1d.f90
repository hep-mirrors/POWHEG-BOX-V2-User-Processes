module     p1_dbarc_epnebbbarg_d124h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d124h0l1d.f90
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
   public :: derivative , reconstruct_d124
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd124h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd124
      complex(ki) :: brack
      acd124(1)=dotproduct(k7,qshift)
      acd124(2)=dotproduct(qshift,spvak1k3)
      acd124(3)=abb124(32)
      acd124(4)=dotproduct(qshift,spvak4k2)
      acd124(5)=abb124(23)
      acd124(6)=dotproduct(qshift,spval5k3)
      acd124(7)=abb124(41)
      acd124(8)=dotproduct(qshift,spval6k3)
      acd124(9)=abb124(38)
      acd124(10)=dotproduct(qshift,spvae7k2)
      acd124(11)=abb124(25)
      acd124(12)=dotproduct(e7,qshift)
      acd124(13)=abb124(29)
      acd124(14)=abb124(19)
      acd124(15)=abb124(18)
      acd124(16)=abb124(10)
      acd124(17)=dotproduct(qshift,spvak1k2)
      acd124(18)=dotproduct(qshift,spvak4k3)
      acd124(19)=abb124(12)
      acd124(20)=dotproduct(qshift,spval5k2)
      acd124(21)=abb124(27)
      acd124(22)=dotproduct(qshift,spval6k2)
      acd124(23)=abb124(13)
      acd124(24)=dotproduct(qshift,spvak1k7)
      acd124(25)=abb124(16)
      acd124(26)=dotproduct(qshift,spval5k7)
      acd124(27)=abb124(22)
      acd124(28)=dotproduct(qshift,spval6k7)
      acd124(29)=abb124(34)
      acd124(30)=dotproduct(qshift,spvak7k2)
      acd124(31)=abb124(26)
      acd124(32)=dotproduct(qshift,qshift)
      acd124(33)=abb124(11)
      acd124(34)=abb124(20)
      acd124(35)=abb124(42)
      acd124(36)=abb124(40)
      acd124(37)=abb124(15)
      acd124(38)=abb124(43)
      acd124(39)=abb124(14)
      acd124(40)=abb124(17)
      acd124(41)=abb124(35)
      acd124(42)=abb124(36)
      acd124(43)=abb124(45)
      acd124(44)=abb124(21)
      acd124(45)=abb124(24)
      acd124(46)=abb124(8)
      acd124(47)=abb124(7)
      acd124(48)=abb124(44)
      acd124(49)=abb124(28)
      acd124(50)=abb124(30)
      acd124(51)=abb124(31)
      acd124(52)=abb124(9)
      acd124(53)=acd124(13)*acd124(2)
      acd124(54)=acd124(14)*acd124(4)
      acd124(55)=acd124(15)*acd124(6)
      acd124(56)=acd124(16)*acd124(8)
      acd124(57)=acd124(25)*acd124(24)
      acd124(58)=acd124(27)*acd124(26)
      acd124(59)=acd124(29)*acd124(28)
      acd124(60)=acd124(31)*acd124(30)
      acd124(53)=acd124(60)+acd124(59)+acd124(58)+acd124(57)+acd124(56)+acd124(&
      &55)+acd124(54)+acd124(53)
      acd124(53)=acd124(12)*acd124(53)
      acd124(54)=-acd124(19)*acd124(17)
      acd124(55)=-acd124(21)*acd124(20)
      acd124(56)=-acd124(23)*acd124(22)
      acd124(54)=acd124(56)+acd124(55)+acd124(54)
      acd124(54)=acd124(54)*acd124(12)
      acd124(55)=acd124(43)*acd124(10)
      acd124(56)=acd124(45)*acd124(24)
      acd124(57)=acd124(46)*acd124(26)
      acd124(58)=acd124(47)*acd124(28)
      acd124(59)=acd124(48)*acd124(30)
      acd124(54)=acd124(54)+acd124(59)+acd124(58)+acd124(57)+acd124(56)+acd124(&
      &55)
      acd124(54)=acd124(18)*acd124(54)
      acd124(55)=-acd124(33)*acd124(2)
      acd124(56)=-acd124(34)*acd124(4)
      acd124(57)=-acd124(35)*acd124(6)
      acd124(58)=-acd124(36)*acd124(8)
      acd124(59)=-acd124(37)*acd124(10)
      acd124(60)=-acd124(38)*acd124(18)
      acd124(55)=acd124(39)+acd124(60)+acd124(59)+acd124(58)+acd124(57)+acd124(&
      &56)+acd124(55)
      acd124(55)=acd124(32)*acd124(55)
      acd124(56)=acd124(3)*acd124(2)
      acd124(57)=acd124(5)*acd124(4)
      acd124(58)=acd124(7)*acd124(6)
      acd124(59)=acd124(9)*acd124(8)
      acd124(60)=acd124(11)*acd124(10)
      acd124(56)=acd124(60)+acd124(59)+acd124(58)+acd124(56)+acd124(57)
      acd124(56)=acd124(1)*acd124(56)
      acd124(57)=-acd124(40)*acd124(2)
      acd124(58)=-acd124(41)*acd124(6)
      acd124(59)=-acd124(42)*acd124(8)
      acd124(60)=-acd124(44)*acd124(10)
      acd124(61)=-acd124(49)*acd124(24)
      acd124(62)=-acd124(50)*acd124(26)
      acd124(63)=-acd124(51)*acd124(28)
      acd124(64)=-acd124(52)*acd124(30)
      brack=acd124(53)+acd124(54)+acd124(55)+acd124(56)+acd124(57)+acd124(58)+a&
      &cd124(59)+acd124(60)+acd124(61)+acd124(62)+acd124(63)+acd124(64)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd124h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(84) :: acd124
      complex(ki) :: brack
      acd124(1)=k7(iv1)
      acd124(2)=dotproduct(qshift,spvak1k3)
      acd124(3)=abb124(32)
      acd124(4)=dotproduct(qshift,spvak4k2)
      acd124(5)=abb124(23)
      acd124(6)=dotproduct(qshift,spval5k3)
      acd124(7)=abb124(41)
      acd124(8)=dotproduct(qshift,spval6k3)
      acd124(9)=abb124(38)
      acd124(10)=dotproduct(qshift,spvae7k2)
      acd124(11)=abb124(25)
      acd124(12)=e7(iv1)
      acd124(13)=abb124(29)
      acd124(14)=abb124(19)
      acd124(15)=abb124(18)
      acd124(16)=abb124(10)
      acd124(17)=dotproduct(qshift,spvak1k2)
      acd124(18)=dotproduct(qshift,spvak4k3)
      acd124(19)=abb124(12)
      acd124(20)=dotproduct(qshift,spval5k2)
      acd124(21)=abb124(27)
      acd124(22)=dotproduct(qshift,spval6k2)
      acd124(23)=abb124(13)
      acd124(24)=dotproduct(qshift,spvak1k7)
      acd124(25)=abb124(16)
      acd124(26)=dotproduct(qshift,spval5k7)
      acd124(27)=abb124(22)
      acd124(28)=dotproduct(qshift,spval6k7)
      acd124(29)=abb124(34)
      acd124(30)=dotproduct(qshift,spvak7k2)
      acd124(31)=abb124(26)
      acd124(32)=qshift(iv1)
      acd124(33)=abb124(11)
      acd124(34)=abb124(20)
      acd124(35)=abb124(42)
      acd124(36)=abb124(40)
      acd124(37)=abb124(15)
      acd124(38)=abb124(43)
      acd124(39)=abb124(14)
      acd124(40)=spvak1k3(iv1)
      acd124(41)=dotproduct(k7,qshift)
      acd124(42)=dotproduct(e7,qshift)
      acd124(43)=dotproduct(qshift,qshift)
      acd124(44)=abb124(17)
      acd124(45)=spvak4k2(iv1)
      acd124(46)=spval5k3(iv1)
      acd124(47)=abb124(35)
      acd124(48)=spval6k3(iv1)
      acd124(49)=abb124(36)
      acd124(50)=spvae7k2(iv1)
      acd124(51)=abb124(45)
      acd124(52)=abb124(21)
      acd124(53)=spvak1k2(iv1)
      acd124(54)=spvak4k3(iv1)
      acd124(55)=abb124(24)
      acd124(56)=abb124(8)
      acd124(57)=abb124(7)
      acd124(58)=abb124(44)
      acd124(59)=spvak1k7(iv1)
      acd124(60)=abb124(28)
      acd124(61)=spval5k2(iv1)
      acd124(62)=spval6k2(iv1)
      acd124(63)=spval5k7(iv1)
      acd124(64)=abb124(30)
      acd124(65)=spval6k7(iv1)
      acd124(66)=abb124(31)
      acd124(67)=spvak7k2(iv1)
      acd124(68)=abb124(9)
      acd124(69)=acd124(23)*acd124(22)
      acd124(70)=acd124(21)*acd124(20)
      acd124(71)=acd124(19)*acd124(17)
      acd124(69)=acd124(71)+acd124(69)+acd124(70)
      acd124(70)=acd124(54)*acd124(69)
      acd124(71)=acd124(23)*acd124(62)
      acd124(72)=acd124(21)*acd124(61)
      acd124(73)=acd124(19)*acd124(53)
      acd124(71)=acd124(73)+acd124(71)+acd124(72)
      acd124(71)=acd124(18)*acd124(71)
      acd124(72)=-acd124(67)*acd124(31)
      acd124(73)=-acd124(65)*acd124(29)
      acd124(74)=-acd124(63)*acd124(27)
      acd124(75)=-acd124(59)*acd124(25)
      acd124(76)=-acd124(45)*acd124(14)
      acd124(77)=-acd124(48)*acd124(16)
      acd124(78)=-acd124(46)*acd124(15)
      acd124(79)=-acd124(40)*acd124(13)
      acd124(70)=acd124(71)+acd124(70)+acd124(79)+acd124(78)+acd124(77)+acd124(&
      &76)+acd124(75)+acd124(74)+acd124(72)+acd124(73)
      acd124(70)=acd124(42)*acd124(70)
      acd124(71)=-acd124(30)*acd124(31)
      acd124(72)=-acd124(28)*acd124(29)
      acd124(73)=-acd124(26)*acd124(27)
      acd124(74)=-acd124(24)*acd124(25)
      acd124(75)=-acd124(8)*acd124(16)
      acd124(76)=-acd124(6)*acd124(15)
      acd124(77)=-acd124(4)*acd124(14)
      acd124(78)=-acd124(2)*acd124(13)
      acd124(71)=acd124(78)+acd124(77)+acd124(76)+acd124(75)+acd124(74)+acd124(&
      &73)+acd124(71)+acd124(72)
      acd124(71)=acd124(12)*acd124(71)
      acd124(69)=acd124(12)*acd124(69)
      acd124(72)=-acd124(67)*acd124(58)
      acd124(73)=-acd124(65)*acd124(57)
      acd124(74)=-acd124(63)*acd124(56)
      acd124(75)=-acd124(59)*acd124(55)
      acd124(76)=-acd124(50)*acd124(51)
      acd124(77)=2.0_ki*acd124(32)
      acd124(78)=acd124(38)*acd124(77)
      acd124(69)=acd124(69)+acd124(78)+acd124(76)+acd124(75)+acd124(74)+acd124(&
      &72)+acd124(73)
      acd124(69)=acd124(18)*acd124(69)
      acd124(72)=-acd124(30)*acd124(58)
      acd124(73)=-acd124(28)*acd124(57)
      acd124(74)=-acd124(26)*acd124(56)
      acd124(75)=-acd124(24)*acd124(55)
      acd124(76)=-acd124(10)*acd124(51)
      acd124(78)=acd124(43)*acd124(38)
      acd124(72)=acd124(78)+acd124(76)+acd124(75)+acd124(74)+acd124(72)+acd124(&
      &73)
      acd124(72)=acd124(54)*acd124(72)
      acd124(73)=-acd124(45)*acd124(5)
      acd124(74)=-acd124(50)*acd124(11)
      acd124(75)=-acd124(48)*acd124(9)
      acd124(76)=-acd124(46)*acd124(7)
      acd124(78)=-acd124(40)*acd124(3)
      acd124(73)=acd124(78)+acd124(76)+acd124(75)+acd124(73)+acd124(74)
      acd124(73)=acd124(41)*acd124(73)
      acd124(74)=-acd124(10)*acd124(11)
      acd124(75)=-acd124(8)*acd124(9)
      acd124(76)=-acd124(6)*acd124(7)
      acd124(78)=-acd124(4)*acd124(5)
      acd124(79)=-acd124(2)*acd124(3)
      acd124(74)=acd124(79)+acd124(78)+acd124(76)+acd124(74)+acd124(75)
      acd124(74)=acd124(1)*acd124(74)
      acd124(75)=acd124(45)*acd124(34)
      acd124(76)=acd124(50)*acd124(37)
      acd124(78)=acd124(48)*acd124(36)
      acd124(79)=acd124(46)*acd124(35)
      acd124(80)=acd124(40)*acd124(33)
      acd124(75)=acd124(80)+acd124(79)+acd124(78)+acd124(75)+acd124(76)
      acd124(75)=acd124(43)*acd124(75)
      acd124(76)=acd124(10)*acd124(37)
      acd124(78)=acd124(8)*acd124(36)
      acd124(79)=acd124(6)*acd124(35)
      acd124(80)=acd124(4)*acd124(34)
      acd124(81)=acd124(2)*acd124(33)
      acd124(76)=acd124(81)+acd124(80)+acd124(79)+acd124(78)-acd124(39)+acd124(&
      &76)
      acd124(76)=acd124(76)*acd124(77)
      acd124(77)=acd124(67)*acd124(68)
      acd124(78)=acd124(65)*acd124(66)
      acd124(79)=acd124(63)*acd124(64)
      acd124(80)=acd124(59)*acd124(60)
      acd124(81)=acd124(50)*acd124(52)
      acd124(82)=acd124(48)*acd124(49)
      acd124(83)=acd124(46)*acd124(47)
      acd124(84)=acd124(40)*acd124(44)
      brack=acd124(69)+acd124(70)+acd124(71)+acd124(72)+acd124(73)+acd124(74)+a&
      &cd124(75)+acd124(76)+acd124(77)+acd124(78)+acd124(79)+acd124(80)+acd124(&
      &81)+acd124(82)+acd124(83)+acd124(84)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd124h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(86) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=dotproduct(qshift,spvak1k3)
      acd124(3)=abb124(11)
      acd124(4)=dotproduct(qshift,spvak4k2)
      acd124(5)=abb124(20)
      acd124(6)=dotproduct(qshift,spvak4k3)
      acd124(7)=abb124(43)
      acd124(8)=dotproduct(qshift,spval5k3)
      acd124(9)=abb124(42)
      acd124(10)=dotproduct(qshift,spval6k3)
      acd124(11)=abb124(40)
      acd124(12)=dotproduct(qshift,spvae7k2)
      acd124(13)=abb124(15)
      acd124(14)=abb124(14)
      acd124(15)=k7(iv1)
      acd124(16)=spvak1k3(iv2)
      acd124(17)=abb124(32)
      acd124(18)=spvak4k2(iv2)
      acd124(19)=abb124(23)
      acd124(20)=spval5k3(iv2)
      acd124(21)=abb124(41)
      acd124(22)=spval6k3(iv2)
      acd124(23)=abb124(38)
      acd124(24)=spvae7k2(iv2)
      acd124(25)=abb124(25)
      acd124(26)=k7(iv2)
      acd124(27)=spvak1k3(iv1)
      acd124(28)=spvak4k2(iv1)
      acd124(29)=spval5k3(iv1)
      acd124(30)=spval6k3(iv1)
      acd124(31)=spvae7k2(iv1)
      acd124(32)=e7(iv1)
      acd124(33)=abb124(29)
      acd124(34)=abb124(19)
      acd124(35)=spvak4k3(iv2)
      acd124(36)=dotproduct(qshift,spvak1k2)
      acd124(37)=abb124(12)
      acd124(38)=dotproduct(qshift,spval5k2)
      acd124(39)=abb124(27)
      acd124(40)=dotproduct(qshift,spval6k2)
      acd124(41)=abb124(13)
      acd124(42)=abb124(18)
      acd124(43)=abb124(10)
      acd124(44)=spvak1k2(iv2)
      acd124(45)=spvak1k7(iv2)
      acd124(46)=abb124(16)
      acd124(47)=spval5k2(iv2)
      acd124(48)=spval6k2(iv2)
      acd124(49)=spval5k7(iv2)
      acd124(50)=abb124(22)
      acd124(51)=spval6k7(iv2)
      acd124(52)=abb124(34)
      acd124(53)=spvak7k2(iv2)
      acd124(54)=abb124(26)
      acd124(55)=e7(iv2)
      acd124(56)=spvak4k3(iv1)
      acd124(57)=spvak1k2(iv1)
      acd124(58)=spvak1k7(iv1)
      acd124(59)=spval5k2(iv1)
      acd124(60)=spval6k2(iv1)
      acd124(61)=spval5k7(iv1)
      acd124(62)=spval6k7(iv1)
      acd124(63)=spvak7k2(iv1)
      acd124(64)=qshift(iv1)
      acd124(65)=qshift(iv2)
      acd124(66)=abb124(45)
      acd124(67)=dotproduct(e7,qshift)
      acd124(68)=abb124(24)
      acd124(69)=abb124(8)
      acd124(70)=abb124(7)
      acd124(71)=abb124(44)
      acd124(72)=acd124(41)*acd124(60)
      acd124(73)=acd124(39)*acd124(59)
      acd124(74)=acd124(37)*acd124(57)
      acd124(72)=-acd124(74)-acd124(72)-acd124(73)
      acd124(72)=acd124(6)*acd124(72)
      acd124(73)=acd124(41)*acd124(40)
      acd124(74)=acd124(39)*acd124(38)
      acd124(75)=acd124(37)*acd124(36)
      acd124(73)=acd124(75)+acd124(73)+acd124(74)
      acd124(74)=-acd124(56)*acd124(73)
      acd124(75)=acd124(54)*acd124(63)
      acd124(76)=acd124(52)*acd124(62)
      acd124(77)=acd124(50)*acd124(61)
      acd124(78)=acd124(46)*acd124(58)
      acd124(79)=acd124(30)*acd124(43)
      acd124(80)=acd124(29)*acd124(42)
      acd124(81)=acd124(28)*acd124(34)
      acd124(82)=acd124(27)*acd124(33)
      acd124(72)=acd124(74)+acd124(72)+acd124(82)+acd124(81)+acd124(80)+acd124(&
      &79)+acd124(78)+acd124(77)+acd124(75)+acd124(76)
      acd124(72)=acd124(55)*acd124(72)
      acd124(74)=acd124(41)*acd124(48)
      acd124(75)=acd124(39)*acd124(47)
      acd124(76)=acd124(37)*acd124(44)
      acd124(74)=-acd124(76)-acd124(74)-acd124(75)
      acd124(74)=acd124(6)*acd124(74)
      acd124(73)=-acd124(35)*acd124(73)
      acd124(75)=acd124(53)*acd124(54)
      acd124(76)=acd124(51)*acd124(52)
      acd124(77)=acd124(49)*acd124(50)
      acd124(78)=acd124(45)*acd124(46)
      acd124(79)=acd124(22)*acd124(43)
      acd124(80)=acd124(20)*acd124(42)
      acd124(81)=acd124(18)*acd124(34)
      acd124(82)=acd124(16)*acd124(33)
      acd124(73)=acd124(73)+acd124(74)+acd124(82)+acd124(81)+acd124(80)+acd124(&
      &79)+acd124(78)+acd124(77)+acd124(75)+acd124(76)
      acd124(73)=acd124(32)*acd124(73)
      acd124(74)=acd124(53)*acd124(71)
      acd124(75)=acd124(51)*acd124(70)
      acd124(76)=acd124(49)*acd124(69)
      acd124(77)=acd124(45)*acd124(68)
      acd124(78)=acd124(24)*acd124(66)
      acd124(79)=2.0_ki*acd124(65)
      acd124(80)=-acd124(7)*acd124(79)
      acd124(81)=acd124(41)*acd124(67)
      acd124(82)=-acd124(48)*acd124(81)
      acd124(83)=acd124(39)*acd124(67)
      acd124(84)=-acd124(47)*acd124(83)
      acd124(85)=acd124(37)*acd124(67)
      acd124(86)=-acd124(44)*acd124(85)
      acd124(74)=acd124(86)+acd124(84)+acd124(82)+acd124(80)+acd124(78)+acd124(&
      &77)+acd124(76)+acd124(74)+acd124(75)
      acd124(74)=acd124(56)*acd124(74)
      acd124(75)=acd124(63)*acd124(71)
      acd124(76)=acd124(62)*acd124(70)
      acd124(77)=acd124(61)*acd124(69)
      acd124(78)=acd124(58)*acd124(68)
      acd124(80)=acd124(31)*acd124(66)
      acd124(82)=2.0_ki*acd124(64)
      acd124(84)=-acd124(7)*acd124(82)
      acd124(81)=-acd124(60)*acd124(81)
      acd124(83)=-acd124(59)*acd124(83)
      acd124(85)=-acd124(57)*acd124(85)
      acd124(75)=acd124(85)+acd124(83)+acd124(81)+acd124(84)+acd124(80)+acd124(&
      &78)+acd124(77)+acd124(75)+acd124(76)
      acd124(75)=acd124(35)*acd124(75)
      acd124(76)=-acd124(13)*acd124(12)
      acd124(77)=-acd124(11)*acd124(10)
      acd124(78)=-acd124(9)*acd124(8)
      acd124(80)=-acd124(5)*acd124(4)
      acd124(81)=-acd124(3)*acd124(2)
      acd124(83)=-acd124(6)*acd124(7)
      acd124(76)=acd124(83)+acd124(81)+acd124(80)+acd124(78)+acd124(77)+acd124(&
      &14)+acd124(76)
      acd124(76)=acd124(1)*acd124(76)
      acd124(77)=acd124(31)*acd124(25)
      acd124(78)=acd124(30)*acd124(23)
      acd124(80)=acd124(29)*acd124(21)
      acd124(81)=acd124(28)*acd124(19)
      acd124(83)=acd124(27)*acd124(17)
      acd124(77)=acd124(83)+acd124(81)+acd124(80)+acd124(77)+acd124(78)
      acd124(77)=acd124(26)*acd124(77)
      acd124(78)=acd124(24)*acd124(25)
      acd124(80)=acd124(22)*acd124(23)
      acd124(81)=acd124(20)*acd124(21)
      acd124(83)=acd124(18)*acd124(19)
      acd124(84)=acd124(16)*acd124(17)
      acd124(78)=acd124(84)+acd124(83)+acd124(81)+acd124(78)+acd124(80)
      acd124(78)=acd124(15)*acd124(78)
      acd124(80)=-acd124(13)*acd124(31)
      acd124(81)=-acd124(11)*acd124(30)
      acd124(83)=-acd124(9)*acd124(29)
      acd124(84)=-acd124(5)*acd124(28)
      acd124(85)=-acd124(3)*acd124(27)
      acd124(80)=acd124(85)+acd124(84)+acd124(83)+acd124(80)+acd124(81)
      acd124(79)=acd124(80)*acd124(79)
      acd124(80)=-acd124(13)*acd124(24)
      acd124(81)=-acd124(11)*acd124(22)
      acd124(83)=-acd124(9)*acd124(20)
      acd124(84)=-acd124(5)*acd124(18)
      acd124(85)=-acd124(3)*acd124(16)
      acd124(80)=acd124(85)+acd124(84)+acd124(83)+acd124(80)+acd124(81)
      acd124(80)=acd124(80)*acd124(82)
      brack=acd124(72)+acd124(73)+acd124(74)+acd124(75)+2.0_ki*acd124(76)+acd12&
      &4(77)+acd124(78)+acd124(79)+acd124(80)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd124h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=spvak1k3(iv3)
      acd124(3)=abb124(11)
      acd124(4)=spvak4k2(iv3)
      acd124(5)=abb124(20)
      acd124(6)=spvak4k3(iv3)
      acd124(7)=abb124(43)
      acd124(8)=spval5k3(iv3)
      acd124(9)=abb124(42)
      acd124(10)=spval6k3(iv3)
      acd124(11)=abb124(40)
      acd124(12)=spvae7k2(iv3)
      acd124(13)=abb124(15)
      acd124(14)=d(iv1,iv3)
      acd124(15)=spvak1k3(iv2)
      acd124(16)=spvak4k2(iv2)
      acd124(17)=spvak4k3(iv2)
      acd124(18)=spval5k3(iv2)
      acd124(19)=spval6k3(iv2)
      acd124(20)=spvae7k2(iv2)
      acd124(21)=d(iv2,iv3)
      acd124(22)=spvak1k3(iv1)
      acd124(23)=spvak4k2(iv1)
      acd124(24)=spvak4k3(iv1)
      acd124(25)=spval5k3(iv1)
      acd124(26)=spval6k3(iv1)
      acd124(27)=spvae7k2(iv1)
      acd124(28)=e7(iv1)
      acd124(29)=spvak1k2(iv3)
      acd124(30)=abb124(12)
      acd124(31)=spval5k2(iv3)
      acd124(32)=abb124(27)
      acd124(33)=spval6k2(iv3)
      acd124(34)=abb124(13)
      acd124(35)=spvak1k2(iv2)
      acd124(36)=spval5k2(iv2)
      acd124(37)=spval6k2(iv2)
      acd124(38)=e7(iv2)
      acd124(39)=spvak1k2(iv1)
      acd124(40)=spval5k2(iv1)
      acd124(41)=spval6k2(iv1)
      acd124(42)=e7(iv3)
      acd124(43)=acd124(22)*acd124(3)
      acd124(44)=acd124(23)*acd124(5)
      acd124(45)=acd124(25)*acd124(9)
      acd124(46)=acd124(26)*acd124(11)
      acd124(47)=acd124(27)*acd124(13)
      acd124(43)=acd124(47)+acd124(46)+acd124(45)+acd124(44)+acd124(43)
      acd124(44)=2.0_ki*acd124(21)
      acd124(43)=acd124(44)*acd124(43)
      acd124(44)=acd124(15)*acd124(3)
      acd124(45)=acd124(16)*acd124(5)
      acd124(46)=acd124(18)*acd124(9)
      acd124(47)=acd124(19)*acd124(11)
      acd124(48)=acd124(20)*acd124(13)
      acd124(44)=acd124(48)+acd124(47)+acd124(46)+acd124(45)+acd124(44)
      acd124(45)=2.0_ki*acd124(14)
      acd124(44)=acd124(45)*acd124(44)
      acd124(45)=acd124(2)*acd124(3)
      acd124(46)=acd124(4)*acd124(5)
      acd124(47)=acd124(8)*acd124(9)
      acd124(48)=acd124(10)*acd124(11)
      acd124(49)=acd124(12)*acd124(13)
      acd124(45)=acd124(49)+acd124(48)+acd124(47)+acd124(46)+acd124(45)
      acd124(46)=2.0_ki*acd124(1)
      acd124(45)=acd124(46)*acd124(45)
      acd124(46)=acd124(35)*acd124(30)
      acd124(47)=acd124(36)*acd124(32)
      acd124(48)=acd124(37)*acd124(34)
      acd124(46)=acd124(48)+acd124(47)+acd124(46)
      acd124(47)=acd124(28)*acd124(6)
      acd124(48)=acd124(42)*acd124(24)
      acd124(47)=acd124(47)+acd124(48)
      acd124(46)=acd124(47)*acd124(46)
      acd124(47)=acd124(29)*acd124(30)
      acd124(48)=acd124(31)*acd124(32)
      acd124(49)=acd124(33)*acd124(34)
      acd124(47)=acd124(49)+acd124(48)+acd124(47)
      acd124(48)=acd124(28)*acd124(17)
      acd124(49)=acd124(38)*acd124(24)
      acd124(48)=acd124(48)+acd124(49)
      acd124(47)=acd124(48)*acd124(47)
      acd124(48)=acd124(39)*acd124(30)
      acd124(49)=acd124(40)*acd124(32)
      acd124(50)=acd124(41)*acd124(34)
      acd124(48)=acd124(50)+acd124(49)+acd124(48)
      acd124(49)=acd124(38)*acd124(6)
      acd124(50)=acd124(42)*acd124(17)
      acd124(49)=acd124(49)+acd124(50)
      acd124(48)=acd124(49)*acd124(48)
      acd124(49)=acd124(1)*acd124(6)
      acd124(50)=acd124(14)*acd124(17)
      acd124(51)=acd124(21)*acd124(24)
      acd124(49)=acd124(51)+acd124(49)+acd124(50)
      acd124(49)=acd124(7)*acd124(49)
      brack=acd124(43)+acd124(44)+acd124(45)+acd124(46)+acd124(47)+acd124(48)+2&
      &.0_ki*acd124(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd124h0
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
      qshift = k2
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
!---#[ subroutine reconstruct_d124:
   subroutine     reconstruct_d124(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_124:
      coeffs%coeffs_124%c0 = derivative(czip)
      coeffs%coeffs_124%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_124%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_124%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_124%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_124%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_124%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_124%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_124%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_124%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_124%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_124%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_124%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_124%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_124%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_124%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_124%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_124%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_124%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_124%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_124%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_124%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_124%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_124%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_124%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_124%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_124%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_124%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_124%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_124%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_124%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_124%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_124%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_124%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_124%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_124:
   end subroutine reconstruct_d124
!---#] subroutine reconstruct_d124:
end module     p1_dbarc_epnebbbarg_d124h0l1d
