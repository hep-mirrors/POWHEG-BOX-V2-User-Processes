module     p5_usbar_epnebbbarg_d72h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d72h0l1d.f90
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
   public :: derivative , reconstruct_d72
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd72
      complex(ki) :: brack
      acd72(1)=dotproduct(k1,qshift)
      acd72(2)=dotproduct(qshift,spvak4k1)
      acd72(3)=abb72(46)
      acd72(4)=dotproduct(qshift,spvak4k2)
      acd72(5)=abb72(15)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(27)
      acd72(8)=dotproduct(qshift,spval6k1)
      acd72(9)=abb72(31)
      acd72(10)=abb72(11)
      acd72(11)=dotproduct(k2,qshift)
      acd72(12)=abb72(33)
      acd72(13)=abb72(17)
      acd72(14)=dotproduct(l6,qshift)
      acd72(15)=abb72(40)
      acd72(16)=abb72(49)
      acd72(17)=dotproduct(qshift,qshift)
      acd72(18)=abb72(36)
      acd72(19)=abb72(35)
      acd72(20)=abb72(48)
      acd72(21)=abb72(30)
      acd72(22)=abb72(18)
      acd72(23)=abb72(12)
      acd72(24)=dotproduct(qshift,spvak2k1)
      acd72(25)=dotproduct(qshift,spval6l5)
      acd72(26)=abb72(8)
      acd72(27)=dotproduct(qshift,spval6k7)
      acd72(28)=abb72(14)
      acd72(29)=dotproduct(qshift,spval6e7)
      acd72(30)=abb72(13)
      acd72(31)=abb72(10)
      acd72(32)=dotproduct(qshift,spval6k2)
      acd72(33)=abb72(28)
      acd72(34)=abb72(24)
      acd72(35)=abb72(23)
      acd72(36)=abb72(21)
      acd72(37)=dotproduct(qshift,spvak1k2)
      acd72(38)=abb72(19)
      acd72(39)=dotproduct(qshift,spval6k3)
      acd72(40)=abb72(16)
      acd72(41)=abb72(9)
      acd72(42)=abb72(22)
      acd72(43)=abb72(20)
      acd72(44)=abb72(25)
      acd72(45)=acd72(7)*acd72(1)
      acd72(46)=acd72(12)*acd72(11)
      acd72(47)=acd72(15)*acd72(14)
      acd72(48)=-acd72(20)*acd72(17)
      acd72(49)=acd72(23)*acd72(8)
      acd72(50)=acd72(33)*acd72(32)
      acd72(45)=-acd72(34)+acd72(50)+acd72(49)+acd72(48)+acd72(47)+acd72(46)+ac&
      &d72(45)
      acd72(45)=acd72(6)*acd72(45)
      acd72(46)=-acd72(26)*acd72(25)
      acd72(47)=-acd72(28)*acd72(27)
      acd72(48)=-acd72(30)*acd72(29)
      acd72(46)=acd72(31)+acd72(48)+acd72(47)+acd72(46)
      acd72(46)=acd72(46)*acd72(6)
      acd72(47)=acd72(35)*acd72(8)
      acd72(48)=acd72(40)*acd72(39)
      acd72(46)=acd72(46)-acd72(41)+acd72(48)+acd72(47)
      acd72(46)=acd72(24)*acd72(46)
      acd72(47)=acd72(3)*acd72(2)
      acd72(48)=acd72(5)*acd72(4)
      acd72(49)=acd72(9)*acd72(8)
      acd72(47)=-acd72(10)+acd72(49)+acd72(47)+acd72(48)
      acd72(47)=acd72(1)*acd72(47)
      acd72(48)=-acd72(18)*acd72(2)
      acd72(49)=-acd72(19)*acd72(4)
      acd72(50)=-acd72(21)*acd72(8)
      acd72(48)=acd72(22)+acd72(50)+acd72(49)+acd72(48)
      acd72(48)=acd72(17)*acd72(48)
      acd72(49)=-acd72(13)*acd72(11)
      acd72(50)=-acd72(16)*acd72(14)
      acd72(51)=-acd72(36)*acd72(8)
      acd72(52)=-acd72(38)*acd72(37)
      acd72(53)=-acd72(42)*acd72(39)
      acd72(54)=-acd72(43)*acd72(32)
      brack=acd72(44)+acd72(45)+acd72(46)+acd72(47)+acd72(48)+acd72(49)+acd72(5&
      &0)+acd72(51)+acd72(52)+acd72(53)+acd72(54)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd72
      complex(ki) :: brack
      acd72(1)=k1(iv1)
      acd72(2)=dotproduct(qshift,spvak4k1)
      acd72(3)=abb72(46)
      acd72(4)=dotproduct(qshift,spvak4k2)
      acd72(5)=abb72(15)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(27)
      acd72(8)=dotproduct(qshift,spval6k1)
      acd72(9)=abb72(31)
      acd72(10)=abb72(11)
      acd72(11)=k2(iv1)
      acd72(12)=abb72(33)
      acd72(13)=abb72(17)
      acd72(14)=l6(iv1)
      acd72(15)=abb72(40)
      acd72(16)=abb72(49)
      acd72(17)=qshift(iv1)
      acd72(18)=abb72(36)
      acd72(19)=abb72(35)
      acd72(20)=abb72(48)
      acd72(21)=abb72(30)
      acd72(22)=abb72(18)
      acd72(23)=spvak4k1(iv1)
      acd72(24)=dotproduct(k1,qshift)
      acd72(25)=dotproduct(qshift,qshift)
      acd72(26)=spvak4k2(iv1)
      acd72(27)=spvak4k3(iv1)
      acd72(28)=dotproduct(k2,qshift)
      acd72(29)=dotproduct(l6,qshift)
      acd72(30)=abb72(12)
      acd72(31)=dotproduct(qshift,spvak2k1)
      acd72(32)=dotproduct(qshift,spval6l5)
      acd72(33)=abb72(8)
      acd72(34)=dotproduct(qshift,spval6k7)
      acd72(35)=abb72(14)
      acd72(36)=dotproduct(qshift,spval6e7)
      acd72(37)=abb72(13)
      acd72(38)=abb72(10)
      acd72(39)=dotproduct(qshift,spval6k2)
      acd72(40)=abb72(28)
      acd72(41)=abb72(24)
      acd72(42)=spval6k1(iv1)
      acd72(43)=abb72(23)
      acd72(44)=abb72(21)
      acd72(45)=spvak1k2(iv1)
      acd72(46)=abb72(19)
      acd72(47)=spvak2k1(iv1)
      acd72(48)=dotproduct(qshift,spval6k3)
      acd72(49)=abb72(16)
      acd72(50)=abb72(9)
      acd72(51)=spval6l5(iv1)
      acd72(52)=spval6k7(iv1)
      acd72(53)=spval6e7(iv1)
      acd72(54)=spval6k3(iv1)
      acd72(55)=abb72(22)
      acd72(56)=spval6k2(iv1)
      acd72(57)=abb72(20)
      acd72(58)=acd72(37)*acd72(36)
      acd72(59)=acd72(35)*acd72(34)
      acd72(60)=acd72(33)*acd72(32)
      acd72(58)=acd72(58)+acd72(59)+acd72(60)-acd72(38)
      acd72(59)=-acd72(47)*acd72(58)
      acd72(60)=-acd72(37)*acd72(53)
      acd72(61)=-acd72(35)*acd72(52)
      acd72(62)=-acd72(33)*acd72(51)
      acd72(60)=acd72(62)+acd72(60)+acd72(61)
      acd72(60)=acd72(31)*acd72(60)
      acd72(61)=acd72(40)*acd72(56)
      acd72(62)=acd72(14)*acd72(15)
      acd72(63)=acd72(11)*acd72(12)
      acd72(64)=acd72(42)*acd72(30)
      acd72(65)=2.0_ki*acd72(17)
      acd72(66)=-acd72(20)*acd72(65)
      acd72(67)=acd72(1)*acd72(7)
      acd72(59)=acd72(60)+acd72(59)+acd72(67)+acd72(66)+acd72(64)+acd72(63)+acd&
      &72(61)+acd72(62)
      acd72(59)=acd72(6)*acd72(59)
      acd72(58)=-acd72(31)*acd72(58)
      acd72(60)=acd72(40)*acd72(39)
      acd72(61)=acd72(15)*acd72(29)
      acd72(62)=acd72(12)*acd72(28)
      acd72(63)=-acd72(25)*acd72(20)
      acd72(64)=acd72(24)*acd72(7)
      acd72(66)=acd72(8)*acd72(30)
      acd72(58)=acd72(58)+acd72(66)+acd72(64)+acd72(63)+acd72(62)+acd72(61)-acd&
      &72(41)+acd72(60)
      acd72(58)=acd72(27)*acd72(58)
      acd72(60)=-acd72(4)*acd72(19)
      acd72(61)=-acd72(2)*acd72(18)
      acd72(62)=-acd72(8)*acd72(21)
      acd72(60)=acd72(62)+acd72(61)+acd72(22)+acd72(60)
      acd72(60)=acd72(60)*acd72(65)
      acd72(61)=acd72(4)*acd72(5)
      acd72(62)=acd72(2)*acd72(3)
      acd72(63)=acd72(8)*acd72(9)
      acd72(61)=acd72(63)+acd72(62)-acd72(10)+acd72(61)
      acd72(61)=acd72(1)*acd72(61)
      acd72(62)=-acd72(19)*acd72(26)
      acd72(63)=-acd72(18)*acd72(23)
      acd72(62)=acd72(62)+acd72(63)
      acd72(62)=acd72(25)*acd72(62)
      acd72(63)=acd72(5)*acd72(26)
      acd72(64)=acd72(3)*acd72(23)
      acd72(63)=acd72(63)+acd72(64)
      acd72(63)=acd72(24)*acd72(63)
      acd72(64)=-acd72(25)*acd72(21)
      acd72(65)=acd72(24)*acd72(9)
      acd72(64)=acd72(65)-acd72(44)+acd72(64)
      acd72(64)=acd72(42)*acd72(64)
      acd72(65)=acd72(49)*acd72(48)
      acd72(66)=acd72(8)*acd72(43)
      acd72(65)=acd72(66)-acd72(50)+acd72(65)
      acd72(65)=acd72(47)*acd72(65)
      acd72(66)=acd72(49)*acd72(54)
      acd72(67)=acd72(42)*acd72(43)
      acd72(66)=acd72(66)+acd72(67)
      acd72(66)=acd72(31)*acd72(66)
      acd72(67)=-acd72(45)*acd72(46)
      acd72(68)=-acd72(56)*acd72(57)
      acd72(69)=-acd72(54)*acd72(55)
      acd72(70)=-acd72(14)*acd72(16)
      acd72(71)=-acd72(11)*acd72(13)
      brack=acd72(58)+acd72(59)+acd72(60)+acd72(61)+acd72(62)+acd72(63)+acd72(6&
      &4)+acd72(65)+acd72(66)+acd72(67)+acd72(68)+acd72(69)+acd72(70)+acd72(71)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(72) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=dotproduct(qshift,spvak4k1)
      acd72(3)=abb72(36)
      acd72(4)=dotproduct(qshift,spvak4k2)
      acd72(5)=abb72(35)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(48)
      acd72(8)=dotproduct(qshift,spval6k1)
      acd72(9)=abb72(30)
      acd72(10)=abb72(18)
      acd72(11)=k1(iv1)
      acd72(12)=spvak4k1(iv2)
      acd72(13)=abb72(46)
      acd72(14)=spvak4k2(iv2)
      acd72(15)=abb72(15)
      acd72(16)=spvak4k3(iv2)
      acd72(17)=abb72(27)
      acd72(18)=spval6k1(iv2)
      acd72(19)=abb72(31)
      acd72(20)=k1(iv2)
      acd72(21)=spvak4k1(iv1)
      acd72(22)=spvak4k2(iv1)
      acd72(23)=spvak4k3(iv1)
      acd72(24)=spval6k1(iv1)
      acd72(25)=k2(iv1)
      acd72(26)=abb72(33)
      acd72(27)=k2(iv2)
      acd72(28)=l6(iv1)
      acd72(29)=abb72(40)
      acd72(30)=l6(iv2)
      acd72(31)=qshift(iv1)
      acd72(32)=qshift(iv2)
      acd72(33)=abb72(12)
      acd72(34)=spvak2k1(iv2)
      acd72(35)=dotproduct(qshift,spval6l5)
      acd72(36)=abb72(8)
      acd72(37)=dotproduct(qshift,spval6k7)
      acd72(38)=abb72(14)
      acd72(39)=dotproduct(qshift,spval6e7)
      acd72(40)=abb72(13)
      acd72(41)=abb72(10)
      acd72(42)=spval6l5(iv2)
      acd72(43)=dotproduct(qshift,spvak2k1)
      acd72(44)=spval6k7(iv2)
      acd72(45)=spval6e7(iv2)
      acd72(46)=spval6k2(iv2)
      acd72(47)=abb72(28)
      acd72(48)=spvak2k1(iv1)
      acd72(49)=spval6l5(iv1)
      acd72(50)=spval6k7(iv1)
      acd72(51)=spval6e7(iv1)
      acd72(52)=spval6k2(iv1)
      acd72(53)=abb72(23)
      acd72(54)=spval6k3(iv2)
      acd72(55)=abb72(16)
      acd72(56)=spval6k3(iv1)
      acd72(57)=-acd72(49)*acd72(36)
      acd72(58)=-acd72(50)*acd72(38)
      acd72(59)=-acd72(51)*acd72(40)
      acd72(57)=acd72(59)+acd72(58)+acd72(57)
      acd72(58)=acd72(6)*acd72(34)
      acd72(59)=acd72(43)*acd72(16)
      acd72(58)=acd72(58)+acd72(59)
      acd72(57)=acd72(58)*acd72(57)
      acd72(58)=-acd72(42)*acd72(36)
      acd72(59)=-acd72(44)*acd72(38)
      acd72(60)=-acd72(45)*acd72(40)
      acd72(58)=acd72(60)+acd72(59)+acd72(58)
      acd72(59)=acd72(6)*acd72(48)
      acd72(60)=acd72(43)*acd72(23)
      acd72(59)=acd72(59)+acd72(60)
      acd72(58)=acd72(59)*acd72(58)
      acd72(59)=-acd72(35)*acd72(36)
      acd72(60)=-acd72(37)*acd72(38)
      acd72(61)=-acd72(39)*acd72(40)
      acd72(59)=acd72(41)+acd72(61)+acd72(60)+acd72(59)
      acd72(60)=acd72(34)*acd72(23)
      acd72(61)=acd72(48)*acd72(16)
      acd72(60)=acd72(60)+acd72(61)
      acd72(59)=acd72(60)*acd72(59)
      acd72(60)=acd72(25)*acd72(26)
      acd72(61)=acd72(28)*acd72(29)
      acd72(62)=acd72(52)*acd72(47)
      acd72(60)=acd72(62)+acd72(61)+acd72(60)
      acd72(60)=acd72(16)*acd72(60)
      acd72(61)=acd72(27)*acd72(26)
      acd72(62)=acd72(30)*acd72(29)
      acd72(63)=acd72(46)*acd72(47)
      acd72(61)=acd72(63)+acd72(62)+acd72(61)
      acd72(61)=acd72(23)*acd72(61)
      acd72(62)=-acd72(2)*acd72(3)
      acd72(63)=-acd72(4)*acd72(5)
      acd72(64)=-acd72(8)*acd72(9)
      acd72(62)=acd72(10)+acd72(64)+acd72(63)+acd72(62)
      acd72(63)=2.0_ki*acd72(1)
      acd72(62)=acd72(63)*acd72(62)
      acd72(63)=-acd72(1)*acd72(6)
      acd72(64)=-acd72(31)*acd72(16)
      acd72(65)=-acd72(32)*acd72(23)
      acd72(63)=acd72(65)+acd72(63)+acd72(64)
      acd72(63)=acd72(7)*acd72(63)
      acd72(64)=-acd72(31)*acd72(18)
      acd72(65)=-acd72(32)*acd72(24)
      acd72(64)=acd72(64)+acd72(65)
      acd72(64)=acd72(9)*acd72(64)
      acd72(65)=-acd72(12)*acd72(3)*acd72(31)
      acd72(63)=acd72(65)+acd72(63)+acd72(64)
      acd72(64)=2.0_ki*acd72(5)
      acd72(65)=-acd72(31)*acd72(64)
      acd72(66)=acd72(15)*acd72(11)
      acd72(65)=acd72(66)+acd72(65)
      acd72(65)=acd72(14)*acd72(65)
      acd72(66)=acd72(54)*acd72(48)
      acd72(67)=acd72(56)*acd72(34)
      acd72(66)=acd72(67)+acd72(66)
      acd72(66)=acd72(55)*acd72(66)
      acd72(67)=acd72(11)*acd72(16)
      acd72(68)=acd72(20)*acd72(23)
      acd72(67)=acd72(67)+acd72(68)
      acd72(67)=acd72(17)*acd72(67)
      acd72(68)=acd72(18)*acd72(11)
      acd72(69)=acd72(24)*acd72(20)
      acd72(68)=acd72(68)+acd72(69)
      acd72(68)=acd72(19)*acd72(68)
      acd72(69)=acd72(3)*acd72(32)
      acd72(70)=acd72(13)*acd72(20)
      acd72(69)=-2.0_ki*acd72(69)+acd72(70)
      acd72(69)=acd72(21)*acd72(69)
      acd72(64)=-acd72(32)*acd72(64)
      acd72(70)=acd72(15)*acd72(20)
      acd72(64)=acd72(64)+acd72(70)
      acd72(64)=acd72(22)*acd72(64)
      acd72(70)=acd72(18)*acd72(23)
      acd72(71)=acd72(24)*acd72(16)
      acd72(70)=acd72(70)+acd72(71)
      acd72(70)=acd72(33)*acd72(70)
      acd72(71)=acd72(18)*acd72(48)
      acd72(72)=acd72(24)*acd72(34)
      acd72(71)=acd72(71)+acd72(72)
      acd72(71)=acd72(53)*acd72(71)
      acd72(72)=acd72(13)*acd72(12)*acd72(11)
      brack=acd72(57)+acd72(58)+acd72(59)+acd72(60)+acd72(61)+acd72(62)+2.0_ki*&
      &acd72(63)+acd72(64)+acd72(65)+acd72(66)+acd72(67)+acd72(68)+acd72(69)+ac&
      &d72(70)+acd72(71)+acd72(72)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=spvak4k1(iv3)
      acd72(3)=abb72(36)
      acd72(4)=spvak4k2(iv3)
      acd72(5)=abb72(35)
      acd72(6)=spvak4k3(iv3)
      acd72(7)=abb72(48)
      acd72(8)=spval6k1(iv3)
      acd72(9)=abb72(30)
      acd72(10)=d(iv1,iv3)
      acd72(11)=spvak4k1(iv2)
      acd72(12)=spvak4k2(iv2)
      acd72(13)=spvak4k3(iv2)
      acd72(14)=spval6k1(iv2)
      acd72(15)=d(iv2,iv3)
      acd72(16)=spvak4k1(iv1)
      acd72(17)=spvak4k2(iv1)
      acd72(18)=spvak4k3(iv1)
      acd72(19)=spval6k1(iv1)
      acd72(20)=spvak2k1(iv2)
      acd72(21)=spval6l5(iv3)
      acd72(22)=abb72(8)
      acd72(23)=spval6k7(iv3)
      acd72(24)=abb72(14)
      acd72(25)=spval6e7(iv3)
      acd72(26)=abb72(13)
      acd72(27)=spvak2k1(iv3)
      acd72(28)=spval6l5(iv2)
      acd72(29)=spval6k7(iv2)
      acd72(30)=spval6e7(iv2)
      acd72(31)=spvak2k1(iv1)
      acd72(32)=spval6l5(iv1)
      acd72(33)=spval6k7(iv1)
      acd72(34)=spval6e7(iv1)
      acd72(35)=-acd72(32)*acd72(22)
      acd72(36)=-acd72(33)*acd72(24)
      acd72(37)=-acd72(34)*acd72(26)
      acd72(35)=acd72(37)+acd72(36)+acd72(35)
      acd72(36)=acd72(20)*acd72(6)
      acd72(37)=acd72(27)*acd72(13)
      acd72(36)=acd72(36)+acd72(37)
      acd72(35)=acd72(36)*acd72(35)
      acd72(36)=-acd72(21)*acd72(22)
      acd72(37)=-acd72(23)*acd72(24)
      acd72(38)=-acd72(25)*acd72(26)
      acd72(36)=acd72(38)+acd72(37)+acd72(36)
      acd72(37)=acd72(20)*acd72(18)
      acd72(38)=acd72(31)*acd72(13)
      acd72(37)=acd72(37)+acd72(38)
      acd72(36)=acd72(37)*acd72(36)
      acd72(37)=-acd72(28)*acd72(22)
      acd72(38)=-acd72(29)*acd72(24)
      acd72(39)=-acd72(30)*acd72(26)
      acd72(37)=acd72(39)+acd72(38)+acd72(37)
      acd72(38)=acd72(27)*acd72(18)
      acd72(39)=acd72(31)*acd72(6)
      acd72(38)=acd72(38)+acd72(39)
      acd72(37)=acd72(38)*acd72(37)
      acd72(38)=-acd72(8)*acd72(1)
      acd72(39)=-acd72(14)*acd72(10)
      acd72(40)=-acd72(19)*acd72(15)
      acd72(38)=acd72(40)+acd72(39)+acd72(38)
      acd72(39)=2.0_ki*acd72(9)
      acd72(38)=acd72(39)*acd72(38)
      acd72(39)=-acd72(4)*acd72(1)
      acd72(40)=-acd72(12)*acd72(10)
      acd72(41)=-acd72(17)*acd72(15)
      acd72(39)=acd72(41)+acd72(40)+acd72(39)
      acd72(40)=2.0_ki*acd72(5)
      acd72(39)=acd72(40)*acd72(39)
      acd72(40)=-acd72(2)*acd72(1)
      acd72(41)=-acd72(11)*acd72(10)
      acd72(42)=-acd72(16)*acd72(15)
      acd72(40)=acd72(42)+acd72(41)+acd72(40)
      acd72(41)=2.0_ki*acd72(3)
      acd72(40)=acd72(41)*acd72(40)
      acd72(41)=-acd72(1)*acd72(6)
      acd72(42)=-acd72(10)*acd72(13)
      acd72(43)=-acd72(15)*acd72(18)
      acd72(41)=acd72(43)+acd72(41)+acd72(42)
      acd72(41)=acd72(7)*acd72(41)
      brack=acd72(35)+acd72(36)+acd72(37)+acd72(38)+acd72(39)+acd72(40)+2.0_ki*&
      &acd72(41)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd72h0
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d72:
   subroutine     reconstruct_d72(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_72:
      coeffs%coeffs_72%c0 = derivative(czip)
      coeffs%coeffs_72%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_72%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_72%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_72%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_72%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_72%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_72%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_72%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_72%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_72%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_72%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_72%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_72%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_72%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_72%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_72%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_72%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_72%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_72%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_72%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_72%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_72%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_72%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_72%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_72%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_72%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_72%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_72%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_72%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_72%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_72%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_72%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_72%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_72%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_72:
   end subroutine reconstruct_d72
!---#] subroutine reconstruct_d72:
end module     p5_usbar_epnebbbarg_d72h0l1d
