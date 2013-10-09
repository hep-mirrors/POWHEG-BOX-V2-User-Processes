module     p9_csbar_epnebbbarg_d124h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d124h3l1d.f90
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
   public :: derivative , reconstruct_d124
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd124h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd124
      complex(ki) :: brack
      acd124(1)=dotproduct(k3,qshift)
      acd124(2)=dotproduct(e7,qshift)
      acd124(3)=abb124(41)
      acd124(4)=abb124(17)
      acd124(5)=dotproduct(k4,qshift)
      acd124(6)=dotproduct(k7,qshift)
      acd124(7)=dotproduct(qshift,spvak2k1)
      acd124(8)=abb124(30)
      acd124(9)=dotproduct(qshift,spvak2l5)
      acd124(10)=abb124(29)
      acd124(11)=dotproduct(qshift,spvak2l6)
      acd124(12)=abb124(34)
      acd124(13)=dotproduct(qshift,spvak2e7)
      acd124(14)=abb124(38)
      acd124(15)=abb124(23)
      acd124(16)=dotproduct(qshift,qshift)
      acd124(17)=abb124(18)
      acd124(18)=dotproduct(qshift,spvak4k3)
      acd124(19)=abb124(11)
      acd124(20)=abb124(13)
      acd124(21)=abb124(20)
      acd124(22)=abb124(52)
      acd124(23)=abb124(12)
      acd124(24)=abb124(44)
      acd124(25)=abb124(15)
      acd124(26)=dotproduct(qshift,spvak2k3)
      acd124(27)=abb124(9)
      acd124(28)=dotproduct(qshift,spvak2k7)
      acd124(29)=abb124(24)
      acd124(30)=abb124(14)
      acd124(31)=abb124(22)
      acd124(32)=abb124(27)
      acd124(33)=abb124(28)
      acd124(34)=abb124(35)
      acd124(35)=abb124(16)
      acd124(36)=abb124(7)
      acd124(37)=abb124(10)
      acd124(38)=abb124(19)
      acd124(39)=abb124(37)
      acd124(40)=abb124(8)
      acd124(41)=abb124(33)
      acd124(42)=abb124(31)
      acd124(43)=abb124(25)
      acd124(44)=abb124(32)
      acd124(45)=acd124(20)*acd124(7)
      acd124(46)=acd124(22)*acd124(9)
      acd124(47)=acd124(24)*acd124(11)
      acd124(48)=acd124(27)*acd124(26)
      acd124(49)=acd124(29)*acd124(28)
      acd124(45)=acd124(47)+acd124(46)+acd124(45)-acd124(30)+acd124(49)+acd124(&
      &48)
      acd124(45)=acd124(2)*acd124(45)
      acd124(46)=acd124(3)*acd124(2)
      acd124(47)=acd124(8)*acd124(7)
      acd124(48)=acd124(10)*acd124(9)
      acd124(49)=acd124(12)*acd124(11)
      acd124(50)=acd124(14)*acd124(13)
      acd124(47)=-acd124(15)+acd124(50)+acd124(49)+acd124(48)+acd124(47)-acd124&
      &(46)
      acd124(47)=acd124(6)*acd124(47)
      acd124(48)=-acd124(17)*acd124(2)
      acd124(49)=-acd124(31)*acd124(7)
      acd124(50)=-acd124(32)*acd124(9)
      acd124(51)=-acd124(33)*acd124(11)
      acd124(52)=-acd124(34)*acd124(13)
      acd124(48)=acd124(35)+acd124(52)+acd124(51)+acd124(50)+acd124(49)+acd124(&
      &48)
      acd124(48)=acd124(16)*acd124(48)
      acd124(49)=-acd124(19)*acd124(7)
      acd124(50)=-acd124(21)*acd124(9)
      acd124(51)=-acd124(23)*acd124(11)
      acd124(49)=acd124(25)+acd124(51)+acd124(50)+acd124(49)
      acd124(49)=acd124(49)*acd124(2)
      acd124(50)=acd124(36)*acd124(7)
      acd124(51)=acd124(38)*acd124(9)
      acd124(52)=acd124(40)*acd124(11)
      acd124(49)=-acd124(44)+acd124(52)+acd124(51)+acd124(50)+acd124(49)
      acd124(49)=acd124(18)*acd124(49)
      acd124(50)=-acd124(5)-acd124(1)
      acd124(46)=acd124(46)-acd124(4)
      acd124(46)=acd124(46)*acd124(50)
      acd124(50)=acd124(42)*acd124(18)
      acd124(50)=-acd124(43)+acd124(50)
      acd124(50)=acd124(13)*acd124(50)
      acd124(51)=-acd124(37)*acd124(7)
      acd124(52)=-acd124(39)*acd124(9)
      acd124(53)=-acd124(41)*acd124(11)
      brack=acd124(45)+acd124(46)+acd124(47)+acd124(48)+acd124(49)+acd124(50)+a&
      &cd124(51)+acd124(52)+acd124(53)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd124h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd124
      complex(ki) :: brack
      acd124(1)=k3(iv1)
      acd124(2)=dotproduct(e7,qshift)
      acd124(3)=abb124(41)
      acd124(4)=abb124(17)
      acd124(5)=k4(iv1)
      acd124(6)=k7(iv1)
      acd124(7)=dotproduct(qshift,spvak2k1)
      acd124(8)=abb124(30)
      acd124(9)=dotproduct(qshift,spvak2l5)
      acd124(10)=abb124(29)
      acd124(11)=dotproduct(qshift,spvak2l6)
      acd124(12)=abb124(34)
      acd124(13)=dotproduct(qshift,spvak2e7)
      acd124(14)=abb124(38)
      acd124(15)=abb124(23)
      acd124(16)=e7(iv1)
      acd124(17)=dotproduct(k3,qshift)
      acd124(18)=dotproduct(k4,qshift)
      acd124(19)=dotproduct(k7,qshift)
      acd124(20)=dotproduct(qshift,qshift)
      acd124(21)=abb124(18)
      acd124(22)=dotproduct(qshift,spvak4k3)
      acd124(23)=abb124(11)
      acd124(24)=abb124(13)
      acd124(25)=abb124(20)
      acd124(26)=abb124(52)
      acd124(27)=abb124(12)
      acd124(28)=abb124(44)
      acd124(29)=abb124(15)
      acd124(30)=dotproduct(qshift,spvak2k3)
      acd124(31)=abb124(9)
      acd124(32)=dotproduct(qshift,spvak2k7)
      acd124(33)=abb124(24)
      acd124(34)=abb124(14)
      acd124(35)=qshift(iv1)
      acd124(36)=abb124(22)
      acd124(37)=abb124(27)
      acd124(38)=abb124(28)
      acd124(39)=abb124(35)
      acd124(40)=abb124(16)
      acd124(41)=spvak2k1(iv1)
      acd124(42)=abb124(7)
      acd124(43)=abb124(10)
      acd124(44)=spvak2l5(iv1)
      acd124(45)=abb124(19)
      acd124(46)=abb124(37)
      acd124(47)=spvak2l6(iv1)
      acd124(48)=abb124(8)
      acd124(49)=abb124(33)
      acd124(50)=spvak2e7(iv1)
      acd124(51)=abb124(31)
      acd124(52)=abb124(25)
      acd124(53)=spvak4k3(iv1)
      acd124(54)=abb124(32)
      acd124(55)=spvak2k3(iv1)
      acd124(56)=spvak2k7(iv1)
      acd124(57)=acd124(11)*acd124(27)
      acd124(58)=acd124(9)*acd124(25)
      acd124(59)=acd124(7)*acd124(23)
      acd124(57)=acd124(57)+acd124(58)+acd124(59)-acd124(29)
      acd124(58)=acd124(53)*acd124(57)
      acd124(59)=acd124(47)*acd124(27)
      acd124(60)=acd124(44)*acd124(25)
      acd124(61)=acd124(41)*acd124(23)
      acd124(59)=acd124(61)+acd124(59)+acd124(60)
      acd124(59)=acd124(22)*acd124(59)
      acd124(60)=-acd124(33)*acd124(56)
      acd124(61)=-acd124(31)*acd124(55)
      acd124(62)=-acd124(47)*acd124(28)
      acd124(63)=-acd124(44)*acd124(26)
      acd124(64)=-acd124(41)*acd124(24)
      acd124(65)=2.0_ki*acd124(35)
      acd124(66)=acd124(21)*acd124(65)
      acd124(67)=acd124(1)+acd124(5)
      acd124(68)=acd124(6)+acd124(67)
      acd124(68)=acd124(3)*acd124(68)
      acd124(58)=acd124(59)+acd124(58)+acd124(68)+acd124(66)+acd124(64)+acd124(&
      &63)+acd124(62)+acd124(60)+acd124(61)
      acd124(58)=acd124(2)*acd124(58)
      acd124(57)=acd124(22)*acd124(57)
      acd124(59)=-acd124(33)*acd124(32)
      acd124(60)=-acd124(31)*acd124(30)
      acd124(61)=acd124(20)*acd124(21)
      acd124(62)=-acd124(11)*acd124(28)
      acd124(63)=-acd124(9)*acd124(26)
      acd124(64)=-acd124(7)*acd124(24)
      acd124(66)=acd124(19)+acd124(18)+acd124(17)
      acd124(66)=acd124(3)*acd124(66)
      acd124(57)=acd124(57)+acd124(66)+acd124(64)+acd124(63)+acd124(62)+acd124(&
      &61)+acd124(60)+acd124(34)+acd124(59)
      acd124(57)=acd124(16)*acd124(57)
      acd124(59)=acd124(13)*acd124(39)
      acd124(60)=acd124(11)*acd124(38)
      acd124(61)=acd124(9)*acd124(37)
      acd124(62)=acd124(7)*acd124(36)
      acd124(59)=acd124(62)+acd124(61)+acd124(60)-acd124(40)+acd124(59)
      acd124(59)=acd124(65)*acd124(59)
      acd124(60)=-acd124(13)*acd124(14)
      acd124(61)=-acd124(11)*acd124(12)
      acd124(62)=-acd124(9)*acd124(10)
      acd124(63)=-acd124(7)*acd124(8)
      acd124(60)=acd124(63)+acd124(62)+acd124(61)+acd124(15)+acd124(60)
      acd124(60)=acd124(6)*acd124(60)
      acd124(61)=-acd124(13)*acd124(51)
      acd124(62)=-acd124(11)*acd124(48)
      acd124(63)=-acd124(9)*acd124(45)
      acd124(64)=-acd124(7)*acd124(42)
      acd124(61)=acd124(64)+acd124(63)+acd124(62)+acd124(54)+acd124(61)
      acd124(61)=acd124(53)*acd124(61)
      acd124(62)=-acd124(50)*acd124(51)
      acd124(63)=-acd124(47)*acd124(48)
      acd124(64)=-acd124(44)*acd124(45)
      acd124(65)=-acd124(41)*acd124(42)
      acd124(62)=acd124(65)+acd124(64)+acd124(62)+acd124(63)
      acd124(62)=acd124(22)*acd124(62)
      acd124(63)=acd124(20)*acd124(39)
      acd124(64)=-acd124(19)*acd124(14)
      acd124(63)=acd124(64)+acd124(63)+acd124(52)
      acd124(63)=acd124(50)*acd124(63)
      acd124(64)=acd124(20)*acd124(38)
      acd124(65)=-acd124(19)*acd124(12)
      acd124(64)=acd124(65)+acd124(49)+acd124(64)
      acd124(64)=acd124(47)*acd124(64)
      acd124(65)=acd124(20)*acd124(37)
      acd124(66)=-acd124(19)*acd124(10)
      acd124(65)=acd124(66)+acd124(46)+acd124(65)
      acd124(65)=acd124(44)*acd124(65)
      acd124(66)=acd124(20)*acd124(36)
      acd124(68)=-acd124(19)*acd124(8)
      acd124(66)=acd124(68)+acd124(43)+acd124(66)
      acd124(66)=acd124(41)*acd124(66)
      acd124(67)=-acd124(4)*acd124(67)
      brack=acd124(57)+acd124(58)+acd124(59)+acd124(60)+acd124(61)+acd124(62)+a&
      &cd124(63)+acd124(64)+acd124(65)+acd124(66)+acd124(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd124h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=dotproduct(e7,qshift)
      acd124(3)=abb124(18)
      acd124(4)=dotproduct(qshift,spvak2k1)
      acd124(5)=abb124(22)
      acd124(6)=dotproduct(qshift,spvak2l5)
      acd124(7)=abb124(27)
      acd124(8)=dotproduct(qshift,spvak2l6)
      acd124(9)=abb124(28)
      acd124(10)=dotproduct(qshift,spvak2e7)
      acd124(11)=abb124(35)
      acd124(12)=abb124(16)
      acd124(13)=k3(iv1)
      acd124(14)=e7(iv2)
      acd124(15)=abb124(41)
      acd124(16)=k3(iv2)
      acd124(17)=e7(iv1)
      acd124(18)=k4(iv1)
      acd124(19)=k4(iv2)
      acd124(20)=k7(iv1)
      acd124(21)=spvak2k1(iv2)
      acd124(22)=abb124(30)
      acd124(23)=spvak2l5(iv2)
      acd124(24)=abb124(29)
      acd124(25)=spvak2l6(iv2)
      acd124(26)=abb124(34)
      acd124(27)=spvak2e7(iv2)
      acd124(28)=abb124(38)
      acd124(29)=k7(iv2)
      acd124(30)=spvak2k1(iv1)
      acd124(31)=spvak2l5(iv1)
      acd124(32)=spvak2l6(iv1)
      acd124(33)=spvak2e7(iv1)
      acd124(34)=qshift(iv2)
      acd124(35)=dotproduct(qshift,spvak4k3)
      acd124(36)=abb124(11)
      acd124(37)=abb124(13)
      acd124(38)=abb124(20)
      acd124(39)=abb124(52)
      acd124(40)=abb124(12)
      acd124(41)=abb124(44)
      acd124(42)=spvak4k3(iv2)
      acd124(43)=abb124(15)
      acd124(44)=spvak2k3(iv2)
      acd124(45)=abb124(9)
      acd124(46)=spvak2k7(iv2)
      acd124(47)=abb124(24)
      acd124(48)=qshift(iv1)
      acd124(49)=spvak4k3(iv1)
      acd124(50)=spvak2k3(iv1)
      acd124(51)=spvak2k7(iv1)
      acd124(52)=abb124(7)
      acd124(53)=abb124(19)
      acd124(54)=abb124(8)
      acd124(55)=abb124(31)
      acd124(56)=acd124(40)*acd124(8)
      acd124(57)=acd124(38)*acd124(6)
      acd124(58)=acd124(36)*acd124(4)
      acd124(56)=acd124(56)+acd124(57)+acd124(58)-acd124(43)
      acd124(57)=-acd124(42)*acd124(56)
      acd124(58)=acd124(47)*acd124(46)
      acd124(59)=acd124(45)*acd124(44)
      acd124(60)=2.0_ki*acd124(34)
      acd124(61)=-acd124(3)*acd124(60)
      acd124(62)=acd124(35)*acd124(40)
      acd124(62)=acd124(62)-acd124(41)
      acd124(63)=-acd124(25)*acd124(62)
      acd124(64)=acd124(35)*acd124(38)
      acd124(64)=acd124(64)-acd124(39)
      acd124(65)=-acd124(23)*acd124(64)
      acd124(66)=acd124(35)*acd124(36)
      acd124(66)=acd124(66)-acd124(37)
      acd124(67)=-acd124(21)*acd124(66)
      acd124(68)=-acd124(29)-acd124(19)-acd124(16)
      acd124(68)=acd124(15)*acd124(68)
      acd124(57)=acd124(57)+acd124(68)+acd124(67)+acd124(65)+acd124(63)+acd124(&
      &61)+acd124(58)+acd124(59)
      acd124(57)=acd124(17)*acd124(57)
      acd124(56)=-acd124(49)*acd124(56)
      acd124(58)=acd124(47)*acd124(51)
      acd124(59)=acd124(45)*acd124(50)
      acd124(61)=2.0_ki*acd124(48)
      acd124(63)=-acd124(3)*acd124(61)
      acd124(62)=-acd124(32)*acd124(62)
      acd124(64)=-acd124(31)*acd124(64)
      acd124(65)=-acd124(30)*acd124(66)
      acd124(66)=-acd124(20)-acd124(18)-acd124(13)
      acd124(66)=acd124(15)*acd124(66)
      acd124(56)=acd124(56)+acd124(66)+acd124(65)+acd124(64)+acd124(62)+acd124(&
      &63)+acd124(58)+acd124(59)
      acd124(56)=acd124(14)*acd124(56)
      acd124(58)=-acd124(25)*acd124(40)
      acd124(59)=-acd124(23)*acd124(38)
      acd124(62)=-acd124(21)*acd124(36)
      acd124(58)=acd124(62)+acd124(58)+acd124(59)
      acd124(58)=acd124(2)*acd124(58)
      acd124(59)=acd124(27)*acd124(55)
      acd124(62)=acd124(25)*acd124(54)
      acd124(63)=acd124(23)*acd124(53)
      acd124(64)=acd124(21)*acd124(52)
      acd124(58)=acd124(58)+acd124(64)+acd124(63)+acd124(59)+acd124(62)
      acd124(58)=acd124(49)*acd124(58)
      acd124(59)=-acd124(32)*acd124(40)
      acd124(62)=-acd124(31)*acd124(38)
      acd124(63)=-acd124(30)*acd124(36)
      acd124(59)=acd124(63)+acd124(59)+acd124(62)
      acd124(59)=acd124(2)*acd124(59)
      acd124(62)=acd124(33)*acd124(55)
      acd124(63)=acd124(32)*acd124(54)
      acd124(64)=acd124(31)*acd124(53)
      acd124(65)=acd124(30)*acd124(52)
      acd124(59)=acd124(59)+acd124(65)+acd124(64)+acd124(62)+acd124(63)
      acd124(59)=acd124(42)*acd124(59)
      acd124(62)=-acd124(11)*acd124(10)
      acd124(63)=-acd124(8)*acd124(9)
      acd124(64)=-acd124(6)*acd124(7)
      acd124(65)=-acd124(4)*acd124(5)
      acd124(62)=acd124(65)+acd124(64)+acd124(63)+acd124(12)+acd124(62)
      acd124(63)=2.0_ki*acd124(1)
      acd124(62)=acd124(62)*acd124(63)
      acd124(63)=acd124(29)*acd124(33)
      acd124(64)=acd124(20)*acd124(27)
      acd124(63)=acd124(64)+acd124(63)
      acd124(63)=acd124(28)*acd124(63)
      acd124(64)=-acd124(48)*acd124(27)
      acd124(65)=-acd124(34)*acd124(33)
      acd124(64)=acd124(64)+acd124(65)
      acd124(64)=acd124(11)*acd124(64)
      acd124(65)=-acd124(9)*acd124(60)
      acd124(66)=acd124(29)*acd124(26)
      acd124(65)=acd124(65)+acd124(66)
      acd124(65)=acd124(32)*acd124(65)
      acd124(66)=-acd124(7)*acd124(60)
      acd124(67)=acd124(29)*acd124(24)
      acd124(66)=acd124(66)+acd124(67)
      acd124(66)=acd124(31)*acd124(66)
      acd124(60)=-acd124(5)*acd124(60)
      acd124(67)=acd124(29)*acd124(22)
      acd124(60)=acd124(60)+acd124(67)
      acd124(60)=acd124(30)*acd124(60)
      acd124(67)=-acd124(9)*acd124(61)
      acd124(68)=acd124(20)*acd124(26)
      acd124(67)=acd124(67)+acd124(68)
      acd124(67)=acd124(25)*acd124(67)
      acd124(68)=-acd124(7)*acd124(61)
      acd124(69)=acd124(20)*acd124(24)
      acd124(68)=acd124(68)+acd124(69)
      acd124(68)=acd124(23)*acd124(68)
      acd124(61)=-acd124(5)*acd124(61)
      acd124(69)=acd124(20)*acd124(22)
      acd124(61)=acd124(61)+acd124(69)
      acd124(61)=acd124(21)*acd124(61)
      acd124(69)=2.0_ki*acd124(3)
      acd124(69)=-acd124(2)*acd124(1)*acd124(69)
      brack=acd124(56)+acd124(57)+acd124(58)+acd124(59)+acd124(60)+acd124(61)+a&
      &cd124(62)+acd124(63)+2.0_ki*acd124(64)+acd124(65)+acd124(66)+acd124(67)+&
      &acd124(68)+acd124(69)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd124h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd124
      complex(ki) :: brack
      acd124(1)=d(iv1,iv2)
      acd124(2)=e7(iv3)
      acd124(3)=abb124(18)
      acd124(4)=spvak2k1(iv3)
      acd124(5)=abb124(22)
      acd124(6)=spvak2l5(iv3)
      acd124(7)=abb124(27)
      acd124(8)=spvak2l6(iv3)
      acd124(9)=abb124(28)
      acd124(10)=spvak2e7(iv3)
      acd124(11)=abb124(35)
      acd124(12)=d(iv1,iv3)
      acd124(13)=e7(iv2)
      acd124(14)=spvak2k1(iv2)
      acd124(15)=spvak2l5(iv2)
      acd124(16)=spvak2l6(iv2)
      acd124(17)=spvak2e7(iv2)
      acd124(18)=d(iv2,iv3)
      acd124(19)=e7(iv1)
      acd124(20)=spvak2k1(iv1)
      acd124(21)=spvak2l5(iv1)
      acd124(22)=spvak2l6(iv1)
      acd124(23)=spvak2e7(iv1)
      acd124(24)=spvak4k3(iv3)
      acd124(25)=abb124(11)
      acd124(26)=spvak4k3(iv2)
      acd124(27)=abb124(20)
      acd124(28)=abb124(12)
      acd124(29)=spvak4k3(iv1)
      acd124(30)=acd124(5)*acd124(4)
      acd124(31)=acd124(7)*acd124(6)
      acd124(32)=acd124(9)*acd124(8)
      acd124(33)=acd124(10)*acd124(11)
      acd124(30)=acd124(33)+acd124(32)+acd124(31)+acd124(30)
      acd124(31)=2.0_ki*acd124(1)
      acd124(30)=acd124(31)*acd124(30)
      acd124(31)=acd124(4)*acd124(25)
      acd124(32)=acd124(6)*acd124(27)
      acd124(33)=acd124(8)*acd124(28)
      acd124(31)=acd124(33)+acd124(32)+acd124(31)
      acd124(32)=acd124(26)*acd124(19)
      acd124(33)=acd124(29)*acd124(13)
      acd124(32)=acd124(32)+acd124(33)
      acd124(31)=acd124(32)*acd124(31)
      acd124(32)=acd124(1)*acd124(2)
      acd124(33)=acd124(12)*acd124(13)
      acd124(34)=acd124(18)*acd124(19)
      acd124(32)=acd124(34)+acd124(32)+acd124(33)
      acd124(32)=acd124(3)*acd124(32)
      acd124(33)=2.0_ki*acd124(12)
      acd124(34)=acd124(17)*acd124(33)
      acd124(35)=2.0_ki*acd124(18)
      acd124(36)=acd124(23)*acd124(35)
      acd124(34)=acd124(36)+acd124(34)
      acd124(34)=acd124(11)*acd124(34)
      acd124(36)=acd124(24)*acd124(19)
      acd124(37)=acd124(29)*acd124(2)
      acd124(36)=acd124(36)+acd124(37)
      acd124(37)=acd124(25)*acd124(36)
      acd124(38)=acd124(5)*acd124(33)
      acd124(37)=acd124(38)+acd124(37)
      acd124(37)=acd124(14)*acd124(37)
      acd124(38)=acd124(27)*acd124(36)
      acd124(39)=acd124(7)*acd124(33)
      acd124(38)=acd124(39)+acd124(38)
      acd124(38)=acd124(15)*acd124(38)
      acd124(36)=acd124(28)*acd124(36)
      acd124(33)=acd124(9)*acd124(33)
      acd124(33)=acd124(33)+acd124(36)
      acd124(33)=acd124(16)*acd124(33)
      acd124(36)=acd124(24)*acd124(13)
      acd124(39)=acd124(26)*acd124(2)
      acd124(36)=acd124(36)+acd124(39)
      acd124(39)=acd124(25)*acd124(36)
      acd124(40)=acd124(5)*acd124(35)
      acd124(39)=acd124(40)+acd124(39)
      acd124(39)=acd124(20)*acd124(39)
      acd124(40)=acd124(27)*acd124(36)
      acd124(41)=acd124(7)*acd124(35)
      acd124(40)=acd124(40)+acd124(41)
      acd124(40)=acd124(21)*acd124(40)
      acd124(36)=acd124(28)*acd124(36)
      acd124(35)=acd124(9)*acd124(35)
      acd124(35)=acd124(36)+acd124(35)
      acd124(35)=acd124(22)*acd124(35)
      brack=acd124(30)+acd124(31)+2.0_ki*acd124(32)+acd124(33)+acd124(34)+acd12&
      &4(35)+acd124(37)+acd124(38)+acd124(39)+acd124(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd124h3
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
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
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
end module     p9_csbar_epnebbbarg_d124h3l1d
