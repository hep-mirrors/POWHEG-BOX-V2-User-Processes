module     p9_csbar_epnebbbarg_d125h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d125h1l1d.f90
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
   public :: derivative , reconstruct_d125
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd125h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd125
      complex(ki) :: brack
      acd125(1)=dotproduct(k1,qshift)
      acd125(2)=dotproduct(e7,qshift)
      acd125(3)=abb125(27)
      acd125(4)=dotproduct(qshift,spvak4k1)
      acd125(5)=abb125(22)
      acd125(6)=dotproduct(qshift,spvak4k3)
      acd125(7)=abb125(32)
      acd125(8)=dotproduct(qshift,spvae7k1)
      acd125(9)=abb125(19)
      acd125(10)=abb125(11)
      acd125(11)=dotproduct(k3,qshift)
      acd125(12)=abb125(29)
      acd125(13)=abb125(28)
      acd125(14)=dotproduct(k4,qshift)
      acd125(15)=dotproduct(k7,qshift)
      acd125(16)=abb125(30)
      acd125(17)=abb125(24)
      acd125(18)=dotproduct(qshift,qshift)
      acd125(19)=abb125(15)
      acd125(20)=abb125(16)
      acd125(21)=dotproduct(qshift,spvak2k1)
      acd125(22)=abb125(6)
      acd125(23)=dotproduct(qshift,spval6k1)
      acd125(24)=abb125(18)
      acd125(25)=abb125(25)
      acd125(26)=abb125(26)
      acd125(27)=dotproduct(qshift,spvak2k3)
      acd125(28)=abb125(34)
      acd125(29)=abb125(20)
      acd125(30)=dotproduct(qshift,spval6k3)
      acd125(31)=abb125(21)
      acd125(32)=abb125(23)
      acd125(33)=abb125(31)
      acd125(34)=abb125(33)
      acd125(35)=abb125(12)
      acd125(36)=abb125(10)
      acd125(37)=abb125(7)
      acd125(38)=dotproduct(qshift,spvak7k1)
      acd125(39)=abb125(8)
      acd125(40)=abb125(17)
      acd125(41)=abb125(9)
      acd125(42)=abb125(13)
      acd125(43)=abb125(14)
      acd125(44)=-acd125(22)*acd125(21)
      acd125(45)=-acd125(24)*acd125(23)
      acd125(44)=acd125(25)+acd125(45)+acd125(44)
      acd125(44)=acd125(44)*acd125(6)
      acd125(45)=acd125(14)+acd125(11)
      acd125(46)=acd125(12)*acd125(45)
      acd125(47)=acd125(3)*acd125(1)
      acd125(48)=-acd125(19)*acd125(18)
      acd125(49)=acd125(20)*acd125(4)
      acd125(50)=acd125(26)*acd125(21)
      acd125(51)=acd125(28)*acd125(27)
      acd125(52)=acd125(29)*acd125(23)
      acd125(53)=acd125(31)*acd125(30)
      acd125(44)=acd125(52)+acd125(50)+acd125(46)+acd125(44)-acd125(32)+acd125(&
      &53)+acd125(51)+acd125(49)+acd125(48)+acd125(47)
      acd125(44)=acd125(2)*acd125(44)
      acd125(46)=acd125(7)*acd125(1)
      acd125(47)=acd125(16)*acd125(15)
      acd125(48)=acd125(34)*acd125(18)
      acd125(49)=acd125(37)*acd125(8)
      acd125(50)=acd125(39)*acd125(38)
      acd125(46)=-acd125(40)+acd125(50)+acd125(49)+acd125(48)+acd125(47)+acd125&
      &(46)
      acd125(46)=acd125(6)*acd125(46)
      acd125(47)=-acd125(33)*acd125(4)
      acd125(48)=-acd125(35)*acd125(8)
      acd125(47)=acd125(36)+acd125(48)+acd125(47)
      acd125(47)=acd125(18)*acd125(47)
      acd125(48)=-acd125(1)+acd125(45)
      acd125(48)=acd125(48)*acd125(9)
      acd125(48)=-acd125(41)+acd125(48)
      acd125(48)=acd125(8)*acd125(48)
      acd125(49)=acd125(5)*acd125(4)
      acd125(49)=-acd125(10)+acd125(49)
      acd125(49)=acd125(1)*acd125(49)
      acd125(45)=acd125(13)*acd125(45)
      acd125(50)=-acd125(17)*acd125(15)
      acd125(51)=-acd125(42)*acd125(38)
      brack=acd125(43)+acd125(44)+acd125(45)+acd125(46)+acd125(47)+acd125(48)+a&
      &cd125(49)+acd125(50)+acd125(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd125h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd125
      complex(ki) :: brack
      acd125(1)=k1(iv1)
      acd125(2)=dotproduct(e7,qshift)
      acd125(3)=abb125(27)
      acd125(4)=dotproduct(qshift,spvak4k1)
      acd125(5)=abb125(22)
      acd125(6)=dotproduct(qshift,spvak4k3)
      acd125(7)=abb125(32)
      acd125(8)=dotproduct(qshift,spvae7k1)
      acd125(9)=abb125(19)
      acd125(10)=abb125(11)
      acd125(11)=k3(iv1)
      acd125(12)=abb125(29)
      acd125(13)=abb125(28)
      acd125(14)=k4(iv1)
      acd125(15)=k7(iv1)
      acd125(16)=abb125(30)
      acd125(17)=abb125(24)
      acd125(18)=e7(iv1)
      acd125(19)=dotproduct(k1,qshift)
      acd125(20)=dotproduct(k3,qshift)
      acd125(21)=dotproduct(k4,qshift)
      acd125(22)=dotproduct(qshift,qshift)
      acd125(23)=abb125(15)
      acd125(24)=abb125(16)
      acd125(25)=dotproduct(qshift,spvak2k1)
      acd125(26)=abb125(6)
      acd125(27)=dotproduct(qshift,spval6k1)
      acd125(28)=abb125(18)
      acd125(29)=abb125(25)
      acd125(30)=abb125(26)
      acd125(31)=dotproduct(qshift,spvak2k3)
      acd125(32)=abb125(34)
      acd125(33)=abb125(20)
      acd125(34)=dotproduct(qshift,spval6k3)
      acd125(35)=abb125(21)
      acd125(36)=abb125(23)
      acd125(37)=qshift(iv1)
      acd125(38)=abb125(31)
      acd125(39)=abb125(33)
      acd125(40)=abb125(12)
      acd125(41)=abb125(10)
      acd125(42)=spvak4k1(iv1)
      acd125(43)=spvak4k3(iv1)
      acd125(44)=dotproduct(k7,qshift)
      acd125(45)=abb125(7)
      acd125(46)=dotproduct(qshift,spvak7k1)
      acd125(47)=abb125(8)
      acd125(48)=abb125(17)
      acd125(49)=spvae7k1(iv1)
      acd125(50)=abb125(9)
      acd125(51)=spvak2k1(iv1)
      acd125(52)=spvak2k3(iv1)
      acd125(53)=spval6k1(iv1)
      acd125(54)=spval6k3(iv1)
      acd125(55)=spvak7k1(iv1)
      acd125(56)=abb125(13)
      acd125(57)=acd125(27)*acd125(28)
      acd125(58)=acd125(25)*acd125(26)
      acd125(57)=-acd125(29)+acd125(57)+acd125(58)
      acd125(58)=-acd125(43)*acd125(57)
      acd125(59)=-acd125(28)*acd125(53)
      acd125(60)=-acd125(26)*acd125(51)
      acd125(59)=acd125(59)+acd125(60)
      acd125(59)=acd125(6)*acd125(59)
      acd125(60)=acd125(35)*acd125(54)
      acd125(61)=acd125(33)*acd125(53)
      acd125(62)=acd125(32)*acd125(52)
      acd125(63)=acd125(30)*acd125(51)
      acd125(64)=acd125(42)*acd125(24)
      acd125(65)=acd125(11)+acd125(14)
      acd125(66)=acd125(12)*acd125(65)
      acd125(67)=2.0_ki*acd125(37)
      acd125(68)=-acd125(23)*acd125(67)
      acd125(69)=acd125(1)*acd125(3)
      acd125(58)=acd125(59)+acd125(58)+acd125(69)+acd125(68)+acd125(66)+acd125(&
      &64)+acd125(63)+acd125(62)+acd125(60)+acd125(61)
      acd125(58)=acd125(2)*acd125(58)
      acd125(57)=-acd125(6)*acd125(57)
      acd125(59)=acd125(35)*acd125(34)
      acd125(60)=acd125(32)*acd125(31)
      acd125(61)=acd125(27)*acd125(33)
      acd125(62)=acd125(25)*acd125(30)
      acd125(63)=acd125(4)*acd125(24)
      acd125(64)=-acd125(22)*acd125(23)
      acd125(66)=acd125(19)*acd125(3)
      acd125(68)=acd125(20)+acd125(21)
      acd125(69)=acd125(12)*acd125(68)
      acd125(57)=acd125(57)+acd125(69)+acd125(66)+acd125(64)+acd125(63)+acd125(&
      &62)+acd125(61)+acd125(60)-acd125(36)+acd125(59)
      acd125(57)=acd125(18)*acd125(57)
      acd125(59)=acd125(47)*acd125(46)
      acd125(60)=acd125(16)*acd125(44)
      acd125(61)=acd125(22)*acd125(39)
      acd125(62)=acd125(19)*acd125(7)
      acd125(63)=acd125(8)*acd125(45)
      acd125(59)=acd125(63)+acd125(62)+acd125(61)+acd125(60)-acd125(48)+acd125(&
      &59)
      acd125(59)=acd125(43)*acd125(59)
      acd125(60)=acd125(47)*acd125(55)
      acd125(61)=acd125(15)*acd125(16)
      acd125(62)=acd125(39)*acd125(67)
      acd125(63)=acd125(1)*acd125(7)
      acd125(64)=acd125(49)*acd125(45)
      acd125(60)=acd125(64)+acd125(63)+acd125(62)+acd125(60)+acd125(61)
      acd125(60)=acd125(6)*acd125(60)
      acd125(61)=-acd125(22)*acd125(38)
      acd125(62)=acd125(19)*acd125(5)
      acd125(61)=acd125(62)+acd125(61)
      acd125(61)=acd125(42)*acd125(61)
      acd125(62)=-acd125(4)*acd125(38)
      acd125(63)=-acd125(8)*acd125(40)
      acd125(62)=acd125(63)+acd125(41)+acd125(62)
      acd125(62)=acd125(67)*acd125(62)
      acd125(63)=acd125(65)-acd125(1)
      acd125(63)=acd125(8)*acd125(63)
      acd125(64)=-acd125(19)+acd125(68)
      acd125(64)=acd125(49)*acd125(64)
      acd125(63)=acd125(64)+acd125(63)
      acd125(63)=acd125(9)*acd125(63)
      acd125(64)=acd125(13)*acd125(65)
      acd125(65)=-acd125(55)*acd125(56)
      acd125(66)=-acd125(15)*acd125(17)
      acd125(67)=acd125(4)*acd125(5)
      acd125(67)=-acd125(10)+acd125(67)
      acd125(67)=acd125(1)*acd125(67)
      acd125(68)=-acd125(22)*acd125(40)
      acd125(68)=-acd125(50)+acd125(68)
      acd125(68)=acd125(49)*acd125(68)
      brack=acd125(57)+acd125(58)+acd125(59)+acd125(60)+acd125(61)+acd125(62)+a&
      &cd125(63)+acd125(64)+acd125(65)+acd125(66)+acd125(67)+acd125(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd125h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd125
      complex(ki) :: brack
      acd125(1)=d(iv1,iv2)
      acd125(2)=dotproduct(e7,qshift)
      acd125(3)=abb125(15)
      acd125(4)=dotproduct(qshift,spvak4k1)
      acd125(5)=abb125(31)
      acd125(6)=dotproduct(qshift,spvak4k3)
      acd125(7)=abb125(33)
      acd125(8)=dotproduct(qshift,spvae7k1)
      acd125(9)=abb125(12)
      acd125(10)=abb125(10)
      acd125(11)=k1(iv1)
      acd125(12)=e7(iv2)
      acd125(13)=abb125(27)
      acd125(14)=spvak4k1(iv2)
      acd125(15)=abb125(22)
      acd125(16)=spvak4k3(iv2)
      acd125(17)=abb125(32)
      acd125(18)=spvae7k1(iv2)
      acd125(19)=abb125(19)
      acd125(20)=k1(iv2)
      acd125(21)=e7(iv1)
      acd125(22)=spvak4k1(iv1)
      acd125(23)=spvak4k3(iv1)
      acd125(24)=spvae7k1(iv1)
      acd125(25)=k3(iv1)
      acd125(26)=abb125(29)
      acd125(27)=k3(iv2)
      acd125(28)=k4(iv1)
      acd125(29)=k4(iv2)
      acd125(30)=k7(iv1)
      acd125(31)=abb125(30)
      acd125(32)=k7(iv2)
      acd125(33)=qshift(iv2)
      acd125(34)=abb125(16)
      acd125(35)=dotproduct(qshift,spvak2k1)
      acd125(36)=abb125(6)
      acd125(37)=dotproduct(qshift,spval6k1)
      acd125(38)=abb125(18)
      acd125(39)=abb125(25)
      acd125(40)=spvak2k1(iv2)
      acd125(41)=abb125(26)
      acd125(42)=spvak2k3(iv2)
      acd125(43)=abb125(34)
      acd125(44)=spval6k1(iv2)
      acd125(45)=abb125(20)
      acd125(46)=spval6k3(iv2)
      acd125(47)=abb125(21)
      acd125(48)=qshift(iv1)
      acd125(49)=spvak2k1(iv1)
      acd125(50)=spvak2k3(iv1)
      acd125(51)=spval6k1(iv1)
      acd125(52)=spval6k3(iv1)
      acd125(53)=abb125(7)
      acd125(54)=spvak7k1(iv2)
      acd125(55)=abb125(8)
      acd125(56)=spvak7k1(iv1)
      acd125(57)=acd125(38)*acd125(37)
      acd125(58)=acd125(36)*acd125(35)
      acd125(57)=acd125(57)+acd125(58)-acd125(39)
      acd125(58)=-acd125(16)*acd125(57)
      acd125(59)=acd125(38)*acd125(6)
      acd125(59)=acd125(59)-acd125(45)
      acd125(60)=-acd125(44)*acd125(59)
      acd125(61)=acd125(36)*acd125(6)
      acd125(61)=acd125(61)-acd125(41)
      acd125(62)=-acd125(40)*acd125(61)
      acd125(63)=acd125(47)*acd125(46)
      acd125(64)=acd125(43)*acd125(42)
      acd125(65)=acd125(14)*acd125(34)
      acd125(66)=2.0_ki*acd125(33)
      acd125(67)=-acd125(3)*acd125(66)
      acd125(68)=acd125(27)+acd125(29)
      acd125(69)=acd125(26)*acd125(68)
      acd125(70)=acd125(20)*acd125(13)
      acd125(58)=acd125(58)+acd125(70)+acd125(69)+acd125(67)+acd125(65)+acd125(&
      &63)+acd125(64)+acd125(62)+acd125(60)
      acd125(58)=acd125(21)*acd125(58)
      acd125(57)=-acd125(23)*acd125(57)
      acd125(59)=-acd125(51)*acd125(59)
      acd125(60)=-acd125(49)*acd125(61)
      acd125(61)=acd125(47)*acd125(52)
      acd125(62)=acd125(43)*acd125(50)
      acd125(63)=acd125(22)*acd125(34)
      acd125(64)=2.0_ki*acd125(48)
      acd125(65)=-acd125(3)*acd125(64)
      acd125(67)=acd125(25)+acd125(28)
      acd125(69)=acd125(26)*acd125(67)
      acd125(70)=acd125(11)*acd125(13)
      acd125(57)=acd125(57)+acd125(70)+acd125(69)+acd125(65)+acd125(63)+acd125(&
      &61)+acd125(62)+acd125(60)+acd125(59)
      acd125(57)=acd125(12)*acd125(57)
      acd125(59)=acd125(55)*acd125(54)
      acd125(60)=acd125(31)*acd125(32)
      acd125(61)=acd125(7)*acd125(66)
      acd125(62)=acd125(20)*acd125(17)
      acd125(63)=acd125(18)*acd125(53)
      acd125(65)=acd125(38)*acd125(2)
      acd125(69)=-acd125(44)*acd125(65)
      acd125(70)=acd125(36)*acd125(2)
      acd125(71)=-acd125(40)*acd125(70)
      acd125(59)=acd125(71)+acd125(69)+acd125(63)+acd125(62)+acd125(61)+acd125(&
      &59)+acd125(60)
      acd125(59)=acd125(23)*acd125(59)
      acd125(60)=acd125(55)*acd125(56)
      acd125(61)=acd125(31)*acd125(30)
      acd125(62)=acd125(7)*acd125(64)
      acd125(63)=acd125(11)*acd125(17)
      acd125(69)=acd125(24)*acd125(53)
      acd125(65)=-acd125(51)*acd125(65)
      acd125(70)=-acd125(49)*acd125(70)
      acd125(60)=acd125(70)+acd125(65)+acd125(69)+acd125(63)+acd125(62)+acd125(&
      &60)+acd125(61)
      acd125(60)=acd125(16)*acd125(60)
      acd125(61)=-acd125(9)*acd125(8)
      acd125(62)=-acd125(5)*acd125(4)
      acd125(63)=acd125(6)*acd125(7)
      acd125(65)=-acd125(2)*acd125(3)
      acd125(61)=acd125(65)+acd125(63)+acd125(62)+acd125(10)+acd125(61)
      acd125(61)=acd125(1)*acd125(61)
      acd125(62)=-acd125(48)*acd125(14)
      acd125(63)=-acd125(33)*acd125(22)
      acd125(62)=acd125(62)+acd125(63)
      acd125(62)=acd125(5)*acd125(62)
      acd125(61)=acd125(62)+acd125(61)
      acd125(62)=acd125(20)*acd125(22)
      acd125(63)=acd125(11)*acd125(14)
      acd125(62)=acd125(63)+acd125(62)
      acd125(62)=acd125(15)*acd125(62)
      acd125(63)=-acd125(24)*acd125(66)
      acd125(64)=-acd125(18)*acd125(64)
      acd125(63)=acd125(64)+acd125(63)
      acd125(63)=acd125(9)*acd125(63)
      acd125(64)=-acd125(20)+acd125(68)
      acd125(64)=acd125(24)*acd125(64)
      acd125(65)=-acd125(11)+acd125(67)
      acd125(65)=acd125(18)*acd125(65)
      acd125(64)=acd125(64)+acd125(65)
      acd125(64)=acd125(19)*acd125(64)
      brack=acd125(57)+acd125(58)+acd125(59)+acd125(60)+2.0_ki*acd125(61)+acd12&
      &5(62)+acd125(63)+acd125(64)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd125h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd125
      complex(ki) :: brack
      acd125(1)=d(iv1,iv2)
      acd125(2)=e7(iv3)
      acd125(3)=abb125(15)
      acd125(4)=spvak4k1(iv3)
      acd125(5)=abb125(31)
      acd125(6)=spvak4k3(iv3)
      acd125(7)=abb125(33)
      acd125(8)=spvae7k1(iv3)
      acd125(9)=abb125(12)
      acd125(10)=d(iv1,iv3)
      acd125(11)=e7(iv2)
      acd125(12)=spvak4k1(iv2)
      acd125(13)=spvak4k3(iv2)
      acd125(14)=spvae7k1(iv2)
      acd125(15)=d(iv2,iv3)
      acd125(16)=e7(iv1)
      acd125(17)=spvak4k1(iv1)
      acd125(18)=spvak4k3(iv1)
      acd125(19)=spvae7k1(iv1)
      acd125(20)=spvak2k1(iv3)
      acd125(21)=abb125(6)
      acd125(22)=spval6k1(iv3)
      acd125(23)=abb125(18)
      acd125(24)=spvak2k1(iv2)
      acd125(25)=spval6k1(iv2)
      acd125(26)=spvak2k1(iv1)
      acd125(27)=spval6k1(iv1)
      acd125(28)=acd125(16)*acd125(13)
      acd125(29)=acd125(18)*acd125(11)
      acd125(28)=acd125(28)+acd125(29)
      acd125(29)=-acd125(20)*acd125(28)
      acd125(30)=acd125(16)*acd125(6)
      acd125(31)=acd125(18)*acd125(2)
      acd125(30)=acd125(30)+acd125(31)
      acd125(31)=-acd125(24)*acd125(30)
      acd125(32)=acd125(11)*acd125(6)
      acd125(33)=acd125(13)*acd125(2)
      acd125(32)=acd125(32)+acd125(33)
      acd125(33)=-acd125(26)*acd125(32)
      acd125(29)=acd125(33)+acd125(31)+acd125(29)
      acd125(29)=acd125(21)*acd125(29)
      acd125(28)=-acd125(22)*acd125(28)
      acd125(30)=-acd125(25)*acd125(30)
      acd125(31)=-acd125(27)*acd125(32)
      acd125(28)=acd125(31)+acd125(30)+acd125(28)
      acd125(28)=acd125(23)*acd125(28)
      acd125(30)=-acd125(1)*acd125(2)
      acd125(31)=-acd125(10)*acd125(11)
      acd125(32)=-acd125(15)*acd125(16)
      acd125(30)=acd125(32)+acd125(30)+acd125(31)
      acd125(30)=acd125(3)*acd125(30)
      acd125(31)=acd125(1)*acd125(6)
      acd125(32)=acd125(10)*acd125(13)
      acd125(33)=acd125(15)*acd125(18)
      acd125(31)=acd125(33)+acd125(31)+acd125(32)
      acd125(31)=acd125(7)*acd125(31)
      acd125(30)=acd125(30)+acd125(31)
      acd125(31)=-acd125(8)*acd125(1)
      acd125(32)=-acd125(14)*acd125(10)
      acd125(33)=-acd125(19)*acd125(15)
      acd125(31)=acd125(33)+acd125(32)+acd125(31)
      acd125(32)=2.0_ki*acd125(9)
      acd125(31)=acd125(32)*acd125(31)
      acd125(32)=-acd125(4)*acd125(1)
      acd125(33)=-acd125(12)*acd125(10)
      acd125(34)=-acd125(17)*acd125(15)
      acd125(32)=acd125(34)+acd125(33)+acd125(32)
      acd125(33)=2.0_ki*acd125(5)
      acd125(32)=acd125(33)*acd125(32)
      brack=acd125(28)+acd125(29)+2.0_ki*acd125(30)+acd125(31)+acd125(32)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd125h1
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
!---#[ subroutine reconstruct_d125:
   subroutine     reconstruct_d125(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_125:
      coeffs%coeffs_125%c0 = derivative(czip)
      coeffs%coeffs_125%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_125%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_125%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_125%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_125%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_125%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_125%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_125%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_125%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_125%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_125%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_125%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_125%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_125%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_125%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_125%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_125%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_125%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_125%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_125%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_125%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_125%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_125%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_125%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_125%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_125%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_125%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_125%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_125%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_125%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_125%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_125%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_125%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_125%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_125:
   end subroutine reconstruct_d125
!---#] subroutine reconstruct_d125:
end module     p9_csbar_epnebbbarg_d125h1l1d
