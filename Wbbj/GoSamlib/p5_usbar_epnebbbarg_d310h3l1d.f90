module     p5_usbar_epnebbbarg_d310h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d310h3l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d310
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd310h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd310
      complex(ki) :: brack
      acd310(1)=dotproduct(k1,qshift)
      acd310(2)=dotproduct(e7,qshift)
      acd310(3)=abb310(16)
      acd310(4)=dotproduct(qshift,spvak2k1)
      acd310(5)=abb310(15)
      acd310(6)=dotproduct(qshift,spvae7k1)
      acd310(7)=abb310(29)
      acd310(8)=dotproduct(qshift,spvae7l6)
      acd310(9)=abb310(24)
      acd310(10)=abb310(20)
      acd310(11)=dotproduct(k2,qshift)
      acd310(12)=abb310(79)
      acd310(13)=abb310(47)
      acd310(14)=dotproduct(l6,qshift)
      acd310(15)=abb310(75)
      acd310(16)=abb310(63)
      acd310(17)=dotproduct(qshift,qshift)
      acd310(18)=dotproduct(qshift,spvak2l5)
      acd310(19)=abb310(25)
      acd310(20)=abb310(11)
      acd310(21)=dotproduct(qshift,spvak4k1)
      acd310(22)=abb310(50)
      acd310(23)=abb310(30)
      acd310(24)=dotproduct(qshift,spvak2l6)
      acd310(25)=abb310(49)
      acd310(26)=dotproduct(qshift,spvak4l6)
      acd310(27)=abb310(31)
      acd310(28)=abb310(8)
      acd310(29)=abb310(13)
      acd310(30)=abb310(28)
      acd310(31)=abb310(23)
      acd310(32)=abb310(21)
      acd310(33)=abb310(22)
      acd310(34)=abb310(19)
      acd310(35)=dotproduct(qshift,spvak2e7)
      acd310(36)=abb310(18)
      acd310(37)=abb310(9)
      acd310(38)=abb310(36)
      acd310(39)=abb310(14)
      acd310(40)=abb310(41)
      acd310(41)=abb310(10)
      acd310(42)=dotproduct(qshift,spvak1l6)
      acd310(43)=abb310(26)
      acd310(44)=dotproduct(qshift,spvak2k7)
      acd310(45)=abb310(43)
      acd310(46)=dotproduct(qshift,spval6k1)
      acd310(47)=abb310(17)
      acd310(48)=abb310(12)
      acd310(49)=acd310(17)+acd310(14)
      acd310(49)=acd310(15)*acd310(49)
      acd310(50)=acd310(26)*acd310(27)
      acd310(51)=acd310(24)*acd310(25)
      acd310(52)=acd310(11)*acd310(12)
      acd310(53)=-acd310(18)*acd310(22)
      acd310(53)=acd310(23)+acd310(53)
      acd310(53)=acd310(21)*acd310(53)
      acd310(54)=acd310(1)*acd310(3)
      acd310(55)=-acd310(18)*acd310(19)
      acd310(55)=acd310(20)+acd310(55)
      acd310(55)=acd310(4)*acd310(55)
      acd310(49)=acd310(55)+acd310(54)+acd310(53)+acd310(52)+acd310(51)-acd310(&
      &28)+acd310(50)+acd310(49)
      acd310(49)=acd310(2)*acd310(49)
      acd310(50)=acd310(35)*acd310(36)
      acd310(51)=acd310(21)*acd310(34)
      acd310(52)=-acd310(17)*acd310(29)
      acd310(53)=acd310(1)*acd310(5)
      acd310(54)=acd310(4)*acd310(33)
      acd310(50)=acd310(54)+acd310(53)+acd310(52)+acd310(51)-acd310(37)+acd310(&
      &50)
      acd310(50)=acd310(4)*acd310(50)
      acd310(51)=acd310(8)*acd310(31)
      acd310(52)=-acd310(6)*acd310(30)
      acd310(51)=acd310(52)+acd310(32)+acd310(51)
      acd310(51)=acd310(17)*acd310(51)
      acd310(52)=acd310(8)*acd310(9)
      acd310(53)=acd310(6)*acd310(7)
      acd310(52)=acd310(53)-acd310(10)+acd310(52)
      acd310(52)=acd310(1)*acd310(52)
      acd310(53)=-acd310(46)*acd310(47)
      acd310(54)=-acd310(44)*acd310(45)
      acd310(55)=-acd310(42)*acd310(43)
      acd310(56)=-acd310(26)*acd310(41)
      acd310(57)=-acd310(24)*acd310(40)
      acd310(58)=-acd310(14)*acd310(16)
      acd310(59)=-acd310(11)*acd310(13)
      acd310(60)=acd310(35)*acd310(38)
      acd310(60)=-acd310(39)+acd310(60)
      acd310(60)=acd310(21)*acd310(60)
      brack=acd310(48)+acd310(49)+acd310(50)+acd310(51)+acd310(52)+acd310(53)+a&
      &cd310(54)+acd310(55)+acd310(56)+acd310(57)+acd310(58)+acd310(59)+acd310(&
      &60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd310h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd310
      complex(ki) :: brack
      acd310(1)=k1(iv1)
      acd310(2)=dotproduct(e7,qshift)
      acd310(3)=abb310(16)
      acd310(4)=dotproduct(qshift,spvak2k1)
      acd310(5)=abb310(15)
      acd310(6)=dotproduct(qshift,spvae7k1)
      acd310(7)=abb310(29)
      acd310(8)=dotproduct(qshift,spvae7l6)
      acd310(9)=abb310(24)
      acd310(10)=abb310(20)
      acd310(11)=k2(iv1)
      acd310(12)=abb310(79)
      acd310(13)=abb310(47)
      acd310(14)=l6(iv1)
      acd310(15)=abb310(75)
      acd310(16)=abb310(63)
      acd310(17)=e7(iv1)
      acd310(18)=dotproduct(k1,qshift)
      acd310(19)=dotproduct(k2,qshift)
      acd310(20)=dotproduct(l6,qshift)
      acd310(21)=dotproduct(qshift,qshift)
      acd310(22)=dotproduct(qshift,spvak2l5)
      acd310(23)=abb310(25)
      acd310(24)=abb310(11)
      acd310(25)=dotproduct(qshift,spvak4k1)
      acd310(26)=abb310(50)
      acd310(27)=abb310(30)
      acd310(28)=dotproduct(qshift,spvak2l6)
      acd310(29)=abb310(49)
      acd310(30)=dotproduct(qshift,spvak4l6)
      acd310(31)=abb310(31)
      acd310(32)=abb310(8)
      acd310(33)=qshift(iv1)
      acd310(34)=abb310(13)
      acd310(35)=abb310(28)
      acd310(36)=abb310(23)
      acd310(37)=abb310(21)
      acd310(38)=spvak2k1(iv1)
      acd310(39)=abb310(22)
      acd310(40)=abb310(19)
      acd310(41)=dotproduct(qshift,spvak2e7)
      acd310(42)=abb310(18)
      acd310(43)=abb310(9)
      acd310(44)=spvae7k1(iv1)
      acd310(45)=spvae7l6(iv1)
      acd310(46)=spvak2l5(iv1)
      acd310(47)=spvak4k1(iv1)
      acd310(48)=abb310(36)
      acd310(49)=abb310(14)
      acd310(50)=spvak2l6(iv1)
      acd310(51)=abb310(41)
      acd310(52)=spvak4l6(iv1)
      acd310(53)=abb310(10)
      acd310(54)=spvak1l6(iv1)
      acd310(55)=abb310(26)
      acd310(56)=spvak2e7(iv1)
      acd310(57)=spvak2k7(iv1)
      acd310(58)=abb310(43)
      acd310(59)=spval6k1(iv1)
      acd310(60)=abb310(17)
      acd310(61)=-acd310(25)*acd310(26)
      acd310(62)=-acd310(4)*acd310(23)
      acd310(61)=acd310(62)+acd310(61)
      acd310(61)=acd310(46)*acd310(61)
      acd310(62)=2.0_ki*acd310(33)
      acd310(63)=acd310(62)+acd310(14)
      acd310(63)=acd310(15)*acd310(63)
      acd310(64)=acd310(31)*acd310(52)
      acd310(65)=acd310(29)*acd310(50)
      acd310(66)=acd310(11)*acd310(12)
      acd310(67)=acd310(22)*acd310(26)
      acd310(67)=acd310(67)-acd310(27)
      acd310(68)=-acd310(47)*acd310(67)
      acd310(69)=acd310(1)*acd310(3)
      acd310(70)=acd310(22)*acd310(23)
      acd310(70)=acd310(70)-acd310(24)
      acd310(71)=-acd310(38)*acd310(70)
      acd310(61)=acd310(71)+acd310(69)+acd310(68)+acd310(66)+acd310(64)+acd310(&
      &65)+acd310(63)+acd310(61)
      acd310(61)=acd310(2)*acd310(61)
      acd310(63)=acd310(31)*acd310(30)
      acd310(64)=acd310(29)*acd310(28)
      acd310(65)=acd310(12)*acd310(19)
      acd310(66)=acd310(18)*acd310(3)
      acd310(68)=acd310(20)+acd310(21)
      acd310(68)=acd310(15)*acd310(68)
      acd310(67)=-acd310(25)*acd310(67)
      acd310(69)=-acd310(4)*acd310(70)
      acd310(63)=acd310(69)+acd310(67)+acd310(68)+acd310(66)+acd310(65)+acd310(&
      &64)-acd310(32)+acd310(63)
      acd310(63)=acd310(17)*acd310(63)
      acd310(64)=acd310(42)*acd310(56)
      acd310(65)=acd310(47)*acd310(40)
      acd310(66)=-acd310(34)*acd310(62)
      acd310(67)=acd310(1)*acd310(5)
      acd310(68)=acd310(38)*acd310(39)
      acd310(64)=2.0_ki*acd310(68)+acd310(67)+acd310(66)+acd310(64)+acd310(65)
      acd310(64)=acd310(4)*acd310(64)
      acd310(65)=acd310(41)*acd310(42)
      acd310(66)=-acd310(21)*acd310(34)
      acd310(67)=acd310(18)*acd310(5)
      acd310(68)=acd310(25)*acd310(40)
      acd310(65)=acd310(68)+acd310(67)+acd310(66)-acd310(43)+acd310(65)
      acd310(65)=acd310(38)*acd310(65)
      acd310(66)=acd310(36)*acd310(45)
      acd310(67)=-acd310(35)*acd310(44)
      acd310(66)=acd310(66)+acd310(67)
      acd310(66)=acd310(21)*acd310(66)
      acd310(67)=acd310(9)*acd310(45)
      acd310(68)=acd310(7)*acd310(44)
      acd310(67)=acd310(67)+acd310(68)
      acd310(67)=acd310(18)*acd310(67)
      acd310(68)=acd310(8)*acd310(36)
      acd310(69)=-acd310(6)*acd310(35)
      acd310(68)=acd310(69)+acd310(37)+acd310(68)
      acd310(62)=acd310(68)*acd310(62)
      acd310(68)=acd310(8)*acd310(9)
      acd310(69)=acd310(6)*acd310(7)
      acd310(68)=acd310(69)-acd310(10)+acd310(68)
      acd310(68)=acd310(1)*acd310(68)
      acd310(69)=-acd310(59)*acd310(60)
      acd310(70)=-acd310(57)*acd310(58)
      acd310(71)=-acd310(54)*acd310(55)
      acd310(72)=-acd310(52)*acd310(53)
      acd310(73)=-acd310(50)*acd310(51)
      acd310(74)=-acd310(14)*acd310(16)
      acd310(75)=-acd310(11)*acd310(13)
      acd310(76)=acd310(41)*acd310(48)
      acd310(76)=-acd310(49)+acd310(76)
      acd310(76)=acd310(47)*acd310(76)
      acd310(77)=acd310(25)*acd310(48)*acd310(56)
      brack=acd310(61)+acd310(62)+acd310(63)+acd310(64)+acd310(65)+acd310(66)+a&
      &cd310(67)+acd310(68)+acd310(69)+acd310(70)+acd310(71)+acd310(72)+acd310(&
      &73)+acd310(74)+acd310(75)+acd310(76)+acd310(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd310h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd310
      complex(ki) :: brack
      acd310(1)=d(iv1,iv2)
      acd310(2)=dotproduct(e7,qshift)
      acd310(3)=abb310(75)
      acd310(4)=dotproduct(qshift,spvak2k1)
      acd310(5)=abb310(13)
      acd310(6)=dotproduct(qshift,spvae7k1)
      acd310(7)=abb310(28)
      acd310(8)=dotproduct(qshift,spvae7l6)
      acd310(9)=abb310(23)
      acd310(10)=abb310(21)
      acd310(11)=k1(iv1)
      acd310(12)=e7(iv2)
      acd310(13)=abb310(16)
      acd310(14)=spvak2k1(iv2)
      acd310(15)=abb310(15)
      acd310(16)=spvae7k1(iv2)
      acd310(17)=abb310(29)
      acd310(18)=spvae7l6(iv2)
      acd310(19)=abb310(24)
      acd310(20)=k1(iv2)
      acd310(21)=e7(iv1)
      acd310(22)=spvak2k1(iv1)
      acd310(23)=spvae7k1(iv1)
      acd310(24)=spvae7l6(iv1)
      acd310(25)=k2(iv1)
      acd310(26)=abb310(79)
      acd310(27)=k2(iv2)
      acd310(28)=l6(iv1)
      acd310(29)=l6(iv2)
      acd310(30)=qshift(iv2)
      acd310(31)=dotproduct(qshift,spvak2l5)
      acd310(32)=abb310(25)
      acd310(33)=abb310(11)
      acd310(34)=spvak2l5(iv2)
      acd310(35)=dotproduct(qshift,spvak4k1)
      acd310(36)=abb310(50)
      acd310(37)=spvak4k1(iv2)
      acd310(38)=abb310(30)
      acd310(39)=spvak2l6(iv2)
      acd310(40)=abb310(49)
      acd310(41)=spvak4l6(iv2)
      acd310(42)=abb310(31)
      acd310(43)=qshift(iv1)
      acd310(44)=spvak2l5(iv1)
      acd310(45)=spvak4k1(iv1)
      acd310(46)=spvak2l6(iv1)
      acd310(47)=spvak4l6(iv1)
      acd310(48)=abb310(22)
      acd310(49)=abb310(19)
      acd310(50)=spvak2e7(iv2)
      acd310(51)=abb310(18)
      acd310(52)=spvak2e7(iv1)
      acd310(53)=abb310(36)
      acd310(54)=-acd310(34)*acd310(35)
      acd310(55)=-acd310(37)*acd310(31)
      acd310(54)=acd310(54)+acd310(55)
      acd310(54)=acd310(36)*acd310(54)
      acd310(55)=acd310(42)*acd310(41)
      acd310(56)=acd310(40)*acd310(39)
      acd310(57)=acd310(26)*acd310(27)
      acd310(58)=acd310(20)*acd310(13)
      acd310(59)=acd310(37)*acd310(38)
      acd310(60)=2.0_ki*acd310(30)
      acd310(61)=acd310(29)+acd310(60)
      acd310(61)=acd310(3)*acd310(61)
      acd310(62)=acd310(32)*acd310(4)
      acd310(63)=-acd310(34)*acd310(62)
      acd310(64)=acd310(32)*acd310(31)
      acd310(64)=acd310(64)-acd310(33)
      acd310(65)=-acd310(14)*acd310(64)
      acd310(54)=acd310(65)+acd310(63)+acd310(54)+acd310(61)+acd310(59)+acd310(&
      &58)+acd310(57)+acd310(55)+acd310(56)
      acd310(54)=acd310(21)*acd310(54)
      acd310(55)=-acd310(44)*acd310(35)
      acd310(56)=-acd310(45)*acd310(31)
      acd310(55)=acd310(55)+acd310(56)
      acd310(55)=acd310(36)*acd310(55)
      acd310(56)=acd310(42)*acd310(47)
      acd310(57)=acd310(40)*acd310(46)
      acd310(58)=acd310(26)*acd310(25)
      acd310(59)=acd310(11)*acd310(13)
      acd310(61)=acd310(45)*acd310(38)
      acd310(63)=2.0_ki*acd310(43)
      acd310(65)=acd310(28)+acd310(63)
      acd310(65)=acd310(3)*acd310(65)
      acd310(62)=-acd310(44)*acd310(62)
      acd310(64)=-acd310(22)*acd310(64)
      acd310(55)=acd310(64)+acd310(62)+acd310(55)+acd310(65)+acd310(61)+acd310(&
      &59)+acd310(58)+acd310(56)+acd310(57)
      acd310(55)=acd310(12)*acd310(55)
      acd310(56)=acd310(51)*acd310(52)
      acd310(57)=-acd310(5)*acd310(63)
      acd310(58)=acd310(11)*acd310(15)
      acd310(59)=acd310(45)*acd310(49)
      acd310(61)=acd310(32)*acd310(2)
      acd310(62)=-acd310(44)*acd310(61)
      acd310(63)=acd310(22)*acd310(48)
      acd310(56)=2.0_ki*acd310(63)+acd310(62)+acd310(59)+acd310(58)+acd310(56)+&
      &acd310(57)
      acd310(56)=acd310(14)*acd310(56)
      acd310(57)=acd310(50)*acd310(51)
      acd310(58)=-acd310(5)*acd310(60)
      acd310(59)=acd310(20)*acd310(15)
      acd310(60)=acd310(37)*acd310(49)
      acd310(61)=-acd310(34)*acd310(61)
      acd310(57)=acd310(61)+acd310(60)+acd310(59)+acd310(57)+acd310(58)
      acd310(57)=acd310(22)*acd310(57)
      acd310(58)=acd310(9)*acd310(8)
      acd310(59)=-acd310(7)*acd310(6)
      acd310(60)=-acd310(4)*acd310(5)
      acd310(61)=acd310(2)*acd310(3)
      acd310(58)=acd310(61)+acd310(60)+acd310(59)+acd310(10)+acd310(58)
      acd310(58)=acd310(1)*acd310(58)
      acd310(59)=acd310(9)*acd310(18)
      acd310(60)=-acd310(7)*acd310(16)
      acd310(59)=acd310(59)+acd310(60)
      acd310(59)=acd310(43)*acd310(59)
      acd310(60)=acd310(9)*acd310(24)
      acd310(61)=-acd310(7)*acd310(23)
      acd310(60)=acd310(60)+acd310(61)
      acd310(60)=acd310(30)*acd310(60)
      acd310(58)=acd310(58)+acd310(59)+acd310(60)
      acd310(59)=acd310(45)*acd310(50)
      acd310(60)=acd310(37)*acd310(52)
      acd310(59)=acd310(60)+acd310(59)
      acd310(59)=acd310(53)*acd310(59)
      acd310(60)=acd310(19)*acd310(24)
      acd310(61)=acd310(17)*acd310(23)
      acd310(60)=acd310(60)+acd310(61)
      acd310(60)=acd310(20)*acd310(60)
      acd310(61)=acd310(18)*acd310(19)
      acd310(62)=acd310(16)*acd310(17)
      acd310(61)=acd310(61)+acd310(62)
      acd310(61)=acd310(11)*acd310(61)
      acd310(62)=-acd310(45)*acd310(34)
      acd310(63)=-acd310(37)*acd310(44)
      acd310(62)=acd310(62)+acd310(63)
      acd310(62)=acd310(36)*acd310(2)*acd310(62)
      brack=acd310(54)+acd310(55)+acd310(56)+acd310(57)+2.0_ki*acd310(58)+acd31&
      &0(59)+acd310(60)+acd310(61)+acd310(62)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd310h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(36) :: acd310
      complex(ki) :: brack
      acd310(1)=d(iv1,iv2)
      acd310(2)=e7(iv3)
      acd310(3)=abb310(75)
      acd310(4)=spvak2k1(iv3)
      acd310(5)=abb310(13)
      acd310(6)=spvae7k1(iv3)
      acd310(7)=abb310(28)
      acd310(8)=spvae7l6(iv3)
      acd310(9)=abb310(23)
      acd310(10)=d(iv1,iv3)
      acd310(11)=e7(iv2)
      acd310(12)=spvak2k1(iv2)
      acd310(13)=spvae7k1(iv2)
      acd310(14)=spvae7l6(iv2)
      acd310(15)=d(iv2,iv3)
      acd310(16)=e7(iv1)
      acd310(17)=spvak2k1(iv1)
      acd310(18)=spvae7k1(iv1)
      acd310(19)=spvae7l6(iv1)
      acd310(20)=spvak2l5(iv3)
      acd310(21)=abb310(25)
      acd310(22)=spvak2l5(iv2)
      acd310(23)=spvak4k1(iv3)
      acd310(24)=abb310(50)
      acd310(25)=spvak4k1(iv2)
      acd310(26)=spvak2l5(iv1)
      acd310(27)=spvak4k1(iv1)
      acd310(28)=acd310(22)*acd310(16)
      acd310(29)=acd310(26)*acd310(11)
      acd310(28)=acd310(28)+acd310(29)
      acd310(29)=-acd310(23)*acd310(28)
      acd310(30)=acd310(20)*acd310(16)
      acd310(31)=acd310(26)*acd310(2)
      acd310(30)=acd310(30)+acd310(31)
      acd310(31)=-acd310(25)*acd310(30)
      acd310(32)=acd310(20)*acd310(11)
      acd310(33)=acd310(22)*acd310(2)
      acd310(32)=acd310(32)+acd310(33)
      acd310(33)=-acd310(27)*acd310(32)
      acd310(29)=acd310(33)+acd310(31)+acd310(29)
      acd310(29)=acd310(24)*acd310(29)
      acd310(31)=acd310(8)*acd310(1)
      acd310(33)=acd310(14)*acd310(10)
      acd310(34)=acd310(19)*acd310(15)
      acd310(31)=acd310(34)+acd310(33)+acd310(31)
      acd310(33)=2.0_ki*acd310(9)
      acd310(31)=acd310(33)*acd310(31)
      acd310(33)=-acd310(6)*acd310(1)
      acd310(34)=-acd310(13)*acd310(10)
      acd310(35)=-acd310(18)*acd310(15)
      acd310(33)=acd310(35)+acd310(34)+acd310(33)
      acd310(34)=2.0_ki*acd310(7)
      acd310(33)=acd310(34)*acd310(33)
      acd310(34)=acd310(1)*acd310(2)
      acd310(35)=acd310(10)*acd310(11)
      acd310(36)=acd310(15)*acd310(16)
      acd310(34)=acd310(36)+acd310(34)+acd310(35)
      acd310(34)=acd310(3)*acd310(34)
      acd310(28)=-acd310(21)*acd310(28)
      acd310(35)=2.0_ki*acd310(5)
      acd310(36)=-acd310(1)*acd310(35)
      acd310(28)=acd310(36)+acd310(28)
      acd310(28)=acd310(4)*acd310(28)
      acd310(30)=-acd310(21)*acd310(30)
      acd310(36)=-acd310(10)*acd310(35)
      acd310(30)=acd310(36)+acd310(30)
      acd310(30)=acd310(12)*acd310(30)
      acd310(32)=-acd310(21)*acd310(32)
      acd310(35)=-acd310(15)*acd310(35)
      acd310(32)=acd310(35)+acd310(32)
      acd310(32)=acd310(17)*acd310(32)
      brack=acd310(28)+acd310(29)+acd310(30)+acd310(31)+acd310(32)+acd310(33)+2&
      &.0_ki*acd310(34)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd310h3
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
!---#[ subroutine reconstruct_d310:
   subroutine     reconstruct_d310(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_310:
      coeffs%coeffs_310%c0 = derivative(czip)
      coeffs%coeffs_310%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_310%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_310%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_310%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_310%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_310%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_310%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_310%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_310%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_310%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_310%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_310%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_310%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_310%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_310%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_310%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_310%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_310%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_310%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_310%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_310%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_310%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_310%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_310%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_310%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_310%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_310%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_310%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_310%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_310%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_310%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_310%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_310%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_310%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_310:
   end subroutine reconstruct_d310
!---#] subroutine reconstruct_d310:
end module     p5_usbar_epnebbbarg_d310h3l1d
