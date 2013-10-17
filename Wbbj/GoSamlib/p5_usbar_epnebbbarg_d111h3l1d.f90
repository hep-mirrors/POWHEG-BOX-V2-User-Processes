module     p5_usbar_epnebbbarg_d111h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d111h3l1d.f90
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
   public :: derivative , reconstruct_d111
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd111
      complex(ki) :: brack
      acd111(1)=dotproduct(k1,qshift)
      acd111(2)=dotproduct(k2,qshift)
      acd111(3)=abb111(39)
      acd111(4)=dotproduct(l5,qshift)
      acd111(5)=abb111(37)
      acd111(6)=dotproduct(l6,qshift)
      acd111(7)=dotproduct(qshift,spvak2l5)
      acd111(8)=abb111(14)
      acd111(9)=dotproduct(qshift,spvak2l6)
      acd111(10)=abb111(44)
      acd111(11)=abb111(33)
      acd111(12)=dotproduct(k3,qshift)
      acd111(13)=dotproduct(k4,qshift)
      acd111(14)=dotproduct(qshift,spvak4k1)
      acd111(15)=abb111(12)
      acd111(16)=dotproduct(qshift,spvak4k3)
      acd111(17)=abb111(28)
      acd111(18)=abb111(24)
      acd111(19)=abb111(17)
      acd111(20)=abb111(36)
      acd111(21)=abb111(22)
      acd111(22)=dotproduct(k7,qshift)
      acd111(23)=abb111(11)
      acd111(24)=abb111(23)
      acd111(25)=abb111(13)
      acd111(26)=dotproduct(e7,qshift)
      acd111(27)=abb111(10)
      acd111(28)=abb111(8)
      acd111(29)=dotproduct(qshift,qshift)
      acd111(30)=abb111(9)
      acd111(31)=abb111(16)
      acd111(32)=abb111(19)
      acd111(33)=dotproduct(qshift,spvak2e7)
      acd111(34)=abb111(18)
      acd111(35)=abb111(15)
      acd111(36)=abb111(38)
      acd111(37)=abb111(51)
      acd111(38)=abb111(47)
      acd111(39)=abb111(32)
      acd111(40)=abb111(30)
      acd111(41)=abb111(27)
      acd111(42)=acd111(6)+acd111(4)
      acd111(43)=acd111(5)*acd111(42)
      acd111(44)=-acd111(3)*acd111(2)
      acd111(45)=acd111(8)*acd111(7)
      acd111(46)=acd111(10)*acd111(9)
      acd111(43)=acd111(46)+acd111(45)+acd111(44)-acd111(11)-acd111(43)
      acd111(44)=-acd111(1)+acd111(13)+acd111(12)
      acd111(43)=acd111(44)*acd111(43)
      acd111(44)=acd111(19)*acd111(42)
      acd111(45)=acd111(15)*acd111(2)
      acd111(46)=acd111(31)*acd111(7)
      acd111(47)=acd111(36)*acd111(9)
      acd111(44)=-acd111(40)+acd111(47)+acd111(46)+acd111(45)+acd111(44)
      acd111(44)=acd111(14)*acd111(44)
      acd111(45)=acd111(20)*acd111(42)
      acd111(46)=acd111(17)*acd111(2)
      acd111(47)=acd111(32)*acd111(7)
      acd111(48)=acd111(37)*acd111(9)
      acd111(45)=-acd111(41)+acd111(48)+acd111(47)+acd111(46)+acd111(45)
      acd111(45)=acd111(16)*acd111(45)
      acd111(46)=acd111(23)*acd111(7)
      acd111(47)=acd111(24)*acd111(9)
      acd111(46)=acd111(47)+acd111(46)
      acd111(47)=acd111(29)+acd111(22)
      acd111(46)=acd111(47)*acd111(46)
      acd111(47)=acd111(27)*acd111(26)
      acd111(48)=acd111(34)*acd111(33)
      acd111(47)=-acd111(35)+acd111(48)+acd111(47)
      acd111(47)=acd111(7)*acd111(47)
      acd111(48)=acd111(28)*acd111(26)
      acd111(49)=acd111(38)*acd111(33)
      acd111(48)=-acd111(39)+acd111(49)+acd111(48)
      acd111(48)=acd111(9)*acd111(48)
      acd111(42)=-acd111(21)*acd111(42)
      acd111(49)=-acd111(18)*acd111(2)
      acd111(50)=-acd111(25)*acd111(22)
      acd111(51)=acd111(30)*acd111(29)
      brack=acd111(42)+acd111(43)+acd111(44)+acd111(45)+acd111(46)+acd111(47)+a&
      &cd111(48)+acd111(49)+acd111(50)+acd111(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd111
      complex(ki) :: brack
      acd111(1)=k1(iv1)
      acd111(2)=dotproduct(k2,qshift)
      acd111(3)=abb111(39)
      acd111(4)=dotproduct(l5,qshift)
      acd111(5)=abb111(37)
      acd111(6)=dotproduct(l6,qshift)
      acd111(7)=dotproduct(qshift,spvak2l5)
      acd111(8)=abb111(14)
      acd111(9)=dotproduct(qshift,spvak2l6)
      acd111(10)=abb111(44)
      acd111(11)=abb111(33)
      acd111(12)=k2(iv1)
      acd111(13)=dotproduct(k1,qshift)
      acd111(14)=dotproduct(k3,qshift)
      acd111(15)=dotproduct(k4,qshift)
      acd111(16)=dotproduct(qshift,spvak4k1)
      acd111(17)=abb111(12)
      acd111(18)=dotproduct(qshift,spvak4k3)
      acd111(19)=abb111(28)
      acd111(20)=abb111(24)
      acd111(21)=k3(iv1)
      acd111(22)=k4(iv1)
      acd111(23)=l5(iv1)
      acd111(24)=abb111(17)
      acd111(25)=abb111(36)
      acd111(26)=abb111(22)
      acd111(27)=l6(iv1)
      acd111(28)=k7(iv1)
      acd111(29)=abb111(11)
      acd111(30)=abb111(23)
      acd111(31)=abb111(13)
      acd111(32)=e7(iv1)
      acd111(33)=abb111(10)
      acd111(34)=abb111(8)
      acd111(35)=qshift(iv1)
      acd111(36)=abb111(9)
      acd111(37)=spvak2l5(iv1)
      acd111(38)=dotproduct(k7,qshift)
      acd111(39)=dotproduct(e7,qshift)
      acd111(40)=dotproduct(qshift,qshift)
      acd111(41)=abb111(16)
      acd111(42)=abb111(19)
      acd111(43)=dotproduct(qshift,spvak2e7)
      acd111(44)=abb111(18)
      acd111(45)=abb111(15)
      acd111(46)=spvak2l6(iv1)
      acd111(47)=abb111(38)
      acd111(48)=abb111(51)
      acd111(49)=abb111(47)
      acd111(50)=abb111(32)
      acd111(51)=spvak4k1(iv1)
      acd111(52)=abb111(30)
      acd111(53)=spvak4k3(iv1)
      acd111(54)=abb111(27)
      acd111(55)=spvak2e7(iv1)
      acd111(56)=acd111(21)+acd111(22)
      acd111(57)=acd111(56)-acd111(1)
      acd111(58)=acd111(10)*acd111(57)
      acd111(59)=acd111(49)*acd111(55)
      acd111(60)=acd111(32)*acd111(34)
      acd111(61)=2.0_ki*acd111(35)
      acd111(62)=acd111(61)+acd111(28)
      acd111(63)=acd111(30)*acd111(62)
      acd111(64)=acd111(53)*acd111(48)
      acd111(65)=acd111(51)*acd111(47)
      acd111(58)=acd111(65)+acd111(64)+acd111(63)+acd111(59)+acd111(60)+acd111(&
      &58)
      acd111(58)=acd111(9)*acd111(58)
      acd111(59)=acd111(8)*acd111(57)
      acd111(60)=acd111(44)*acd111(55)
      acd111(63)=acd111(32)*acd111(33)
      acd111(62)=acd111(29)*acd111(62)
      acd111(64)=acd111(53)*acd111(42)
      acd111(65)=acd111(51)*acd111(41)
      acd111(59)=acd111(65)+acd111(64)+acd111(62)+acd111(60)+acd111(63)+acd111(&
      &59)
      acd111(59)=acd111(7)*acd111(59)
      acd111(60)=acd111(43)*acd111(49)
      acd111(62)=acd111(34)*acd111(39)
      acd111(63)=acd111(38)+acd111(40)
      acd111(64)=acd111(30)*acd111(63)
      acd111(65)=acd111(18)*acd111(48)
      acd111(66)=acd111(16)*acd111(47)
      acd111(67)=-acd111(15)+acd111(13)-acd111(14)
      acd111(68)=-acd111(10)*acd111(67)
      acd111(60)=acd111(68)+acd111(66)+acd111(65)+acd111(64)+acd111(62)-acd111(&
      &50)+acd111(60)
      acd111(60)=acd111(46)*acd111(60)
      acd111(62)=acd111(43)*acd111(44)
      acd111(64)=acd111(33)*acd111(39)
      acd111(63)=acd111(29)*acd111(63)
      acd111(65)=acd111(18)*acd111(42)
      acd111(66)=acd111(16)*acd111(41)
      acd111(68)=-acd111(8)*acd111(67)
      acd111(62)=acd111(68)+acd111(66)+acd111(65)+acd111(63)+acd111(64)-acd111(&
      &45)+acd111(62)
      acd111(62)=acd111(37)*acd111(62)
      acd111(63)=acd111(23)+acd111(27)
      acd111(64)=acd111(67)*acd111(63)
      acd111(65)=acd111(4)+acd111(6)
      acd111(57)=-acd111(65)*acd111(57)
      acd111(57)=acd111(57)+acd111(64)
      acd111(57)=acd111(5)*acd111(57)
      acd111(64)=acd111(18)*acd111(25)
      acd111(66)=acd111(16)*acd111(24)
      acd111(64)=-acd111(26)+acd111(64)+acd111(66)
      acd111(63)=acd111(64)*acd111(63)
      acd111(64)=acd111(25)*acd111(65)
      acd111(66)=acd111(2)*acd111(19)
      acd111(64)=acd111(66)-acd111(54)+acd111(64)
      acd111(64)=acd111(53)*acd111(64)
      acd111(65)=acd111(24)*acd111(65)
      acd111(66)=acd111(2)*acd111(17)
      acd111(65)=acd111(66)-acd111(52)+acd111(65)
      acd111(65)=acd111(51)*acd111(65)
      acd111(66)=acd111(18)*acd111(19)
      acd111(68)=acd111(16)*acd111(17)
      acd111(66)=acd111(68)-acd111(20)+acd111(66)
      acd111(66)=acd111(12)*acd111(66)
      acd111(68)=-acd111(2)*acd111(56)
      acd111(67)=acd111(12)*acd111(67)
      acd111(67)=acd111(67)+acd111(68)
      acd111(67)=acd111(3)*acd111(67)
      acd111(56)=-acd111(11)*acd111(56)
      acd111(61)=acd111(36)*acd111(61)
      acd111(68)=-acd111(28)*acd111(31)
      acd111(69)=acd111(3)*acd111(2)
      acd111(69)=acd111(11)+acd111(69)
      acd111(69)=acd111(1)*acd111(69)
      brack=acd111(56)+acd111(57)+acd111(58)+acd111(59)+acd111(60)+acd111(61)+a&
      &cd111(62)+acd111(63)+acd111(64)+acd111(65)+acd111(66)+acd111(67)+acd111(&
      &68)+acd111(69)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd111
      complex(ki) :: brack
      acd111(1)=d(iv1,iv2)
      acd111(2)=dotproduct(qshift,spvak2l5)
      acd111(3)=abb111(11)
      acd111(4)=dotproduct(qshift,spvak2l6)
      acd111(5)=abb111(23)
      acd111(6)=abb111(9)
      acd111(7)=k1(iv1)
      acd111(8)=k2(iv2)
      acd111(9)=abb111(39)
      acd111(10)=l5(iv2)
      acd111(11)=abb111(37)
      acd111(12)=l6(iv2)
      acd111(13)=spvak2l5(iv2)
      acd111(14)=abb111(14)
      acd111(15)=spvak2l6(iv2)
      acd111(16)=abb111(44)
      acd111(17)=k1(iv2)
      acd111(18)=k2(iv1)
      acd111(19)=l5(iv1)
      acd111(20)=l6(iv1)
      acd111(21)=spvak2l5(iv1)
      acd111(22)=spvak2l6(iv1)
      acd111(23)=k3(iv2)
      acd111(24)=k4(iv2)
      acd111(25)=spvak4k1(iv2)
      acd111(26)=abb111(12)
      acd111(27)=spvak4k3(iv2)
      acd111(28)=abb111(28)
      acd111(29)=k3(iv1)
      acd111(30)=k4(iv1)
      acd111(31)=spvak4k1(iv1)
      acd111(32)=spvak4k3(iv1)
      acd111(33)=abb111(17)
      acd111(34)=abb111(36)
      acd111(35)=k7(iv1)
      acd111(36)=k7(iv2)
      acd111(37)=e7(iv1)
      acd111(38)=abb111(10)
      acd111(39)=abb111(8)
      acd111(40)=e7(iv2)
      acd111(41)=qshift(iv1)
      acd111(42)=qshift(iv2)
      acd111(43)=abb111(16)
      acd111(44)=abb111(19)
      acd111(45)=spvak2e7(iv2)
      acd111(46)=abb111(18)
      acd111(47)=spvak2e7(iv1)
      acd111(48)=abb111(38)
      acd111(49)=abb111(51)
      acd111(50)=abb111(47)
      acd111(51)=acd111(45)*acd111(50)
      acd111(52)=acd111(39)*acd111(40)
      acd111(53)=acd111(27)*acd111(49)
      acd111(54)=acd111(25)*acd111(48)
      acd111(55)=acd111(36)+2.0_ki*acd111(42)
      acd111(56)=acd111(5)*acd111(55)
      acd111(57)=-acd111(17)+acd111(23)+acd111(24)
      acd111(58)=acd111(16)*acd111(57)
      acd111(51)=acd111(58)+acd111(56)+acd111(54)+acd111(53)+acd111(51)+acd111(&
      &52)
      acd111(51)=acd111(22)*acd111(51)
      acd111(52)=acd111(45)*acd111(46)
      acd111(53)=acd111(38)*acd111(40)
      acd111(54)=acd111(27)*acd111(44)
      acd111(56)=acd111(25)*acd111(43)
      acd111(55)=acd111(3)*acd111(55)
      acd111(58)=acd111(14)*acd111(57)
      acd111(52)=acd111(58)+acd111(55)+acd111(56)+acd111(54)+acd111(52)+acd111(&
      &53)
      acd111(52)=acd111(21)*acd111(52)
      acd111(53)=acd111(47)*acd111(50)
      acd111(54)=acd111(37)*acd111(39)
      acd111(55)=acd111(32)*acd111(49)
      acd111(56)=acd111(31)*acd111(48)
      acd111(58)=acd111(35)+2.0_ki*acd111(41)
      acd111(59)=acd111(5)*acd111(58)
      acd111(60)=-acd111(7)+acd111(29)+acd111(30)
      acd111(61)=acd111(16)*acd111(60)
      acd111(53)=acd111(61)+acd111(59)+acd111(56)+acd111(55)+acd111(53)+acd111(&
      &54)
      acd111(53)=acd111(15)*acd111(53)
      acd111(54)=acd111(46)*acd111(47)
      acd111(55)=acd111(37)*acd111(38)
      acd111(56)=acd111(32)*acd111(44)
      acd111(59)=acd111(31)*acd111(43)
      acd111(58)=acd111(3)*acd111(58)
      acd111(61)=acd111(14)*acd111(60)
      acd111(54)=acd111(61)+acd111(58)+acd111(59)+acd111(56)+acd111(54)+acd111(&
      &55)
      acd111(54)=acd111(13)*acd111(54)
      acd111(55)=acd111(10)+acd111(12)
      acd111(56)=-acd111(55)*acd111(60)
      acd111(58)=acd111(19)+acd111(20)
      acd111(59)=-acd111(58)*acd111(57)
      acd111(56)=acd111(59)+acd111(56)
      acd111(56)=acd111(11)*acd111(56)
      acd111(59)=acd111(32)*acd111(34)
      acd111(61)=acd111(31)*acd111(33)
      acd111(59)=acd111(59)+acd111(61)
      acd111(55)=acd111(59)*acd111(55)
      acd111(59)=acd111(27)*acd111(34)
      acd111(61)=acd111(25)*acd111(33)
      acd111(59)=acd111(59)+acd111(61)
      acd111(58)=acd111(59)*acd111(58)
      acd111(59)=acd111(5)*acd111(4)
      acd111(61)=acd111(3)*acd111(2)
      acd111(59)=acd111(61)+acd111(59)+acd111(6)
      acd111(61)=2.0_ki*acd111(1)
      acd111(59)=acd111(61)*acd111(59)
      acd111(61)=acd111(27)*acd111(28)
      acd111(62)=acd111(25)*acd111(26)
      acd111(61)=acd111(61)+acd111(62)
      acd111(61)=acd111(18)*acd111(61)
      acd111(62)=acd111(32)*acd111(28)
      acd111(63)=acd111(31)*acd111(26)
      acd111(62)=acd111(62)+acd111(63)
      acd111(62)=acd111(8)*acd111(62)
      acd111(57)=-acd111(18)*acd111(57)
      acd111(60)=-acd111(8)*acd111(60)
      acd111(57)=acd111(60)+acd111(57)
      acd111(57)=acd111(9)*acd111(57)
      brack=acd111(51)+acd111(52)+acd111(53)+acd111(54)+acd111(55)+acd111(56)+a&
      &cd111(57)+acd111(58)+acd111(59)+acd111(61)+acd111(62)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd111h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(15) :: acd111
      complex(ki) :: brack
      acd111(1)=d(iv1,iv2)
      acd111(2)=spvak2l5(iv3)
      acd111(3)=abb111(11)
      acd111(4)=spvak2l6(iv3)
      acd111(5)=abb111(23)
      acd111(6)=d(iv1,iv3)
      acd111(7)=spvak2l5(iv2)
      acd111(8)=spvak2l6(iv2)
      acd111(9)=d(iv2,iv3)
      acd111(10)=spvak2l5(iv1)
      acd111(11)=spvak2l6(iv1)
      acd111(12)=acd111(2)*acd111(1)
      acd111(13)=acd111(7)*acd111(6)
      acd111(14)=acd111(10)*acd111(9)
      acd111(12)=acd111(14)+acd111(13)+acd111(12)
      acd111(12)=acd111(3)*acd111(12)
      acd111(13)=acd111(4)*acd111(1)
      acd111(14)=acd111(8)*acd111(6)
      acd111(15)=acd111(11)*acd111(9)
      acd111(13)=acd111(15)+acd111(14)+acd111(13)
      acd111(13)=acd111(5)*acd111(13)
      acd111(12)=acd111(13)+acd111(12)
      brack=2.0_ki*acd111(12)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd111h3
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d111:
   subroutine     reconstruct_d111(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_111:
      coeffs%coeffs_111%c0 = derivative(czip)
      coeffs%coeffs_111%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_111%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_111%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_111%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_111%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_111%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_111%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_111%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_111%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_111%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_111%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_111%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_111%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_111%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_111%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_111%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_111%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_111%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_111%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_111%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_111%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_111%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_111%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_111%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_111%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_111%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_111%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_111%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_111%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_111%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_111%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_111%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_111%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_111%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_111:
   end subroutine reconstruct_d111
!---#] subroutine reconstruct_d111:
end module     p5_usbar_epnebbbarg_d111h3l1d