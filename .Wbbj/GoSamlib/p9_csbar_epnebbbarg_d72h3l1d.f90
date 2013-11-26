module     p9_csbar_epnebbbarg_d72h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d72h3l1d.f90
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
   public :: derivative , reconstruct_d72
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd72h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd72
      complex(ki) :: brack
      acd72(1)=dotproduct(k1,qshift)
      acd72(2)=dotproduct(qshift,spvak2k1)
      acd72(3)=abb72(31)
      acd72(4)=dotproduct(qshift,spvak4k1)
      acd72(5)=abb72(21)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(18)
      acd72(8)=dotproduct(qshift,spvak4l6)
      acd72(9)=abb72(66)
      acd72(10)=abb72(23)
      acd72(11)=dotproduct(k2,qshift)
      acd72(12)=abb72(10)
      acd72(13)=dotproduct(l6,qshift)
      acd72(14)=abb72(64)
      acd72(15)=dotproduct(qshift,qshift)
      acd72(16)=abb72(19)
      acd72(17)=abb72(13)
      acd72(18)=abb72(42)
      acd72(19)=abb72(12)
      acd72(20)=abb72(15)
      acd72(21)=dotproduct(qshift,spvak2l5)
      acd72(22)=abb72(16)
      acd72(23)=dotproduct(qshift,spvak2k7)
      acd72(24)=abb72(29)
      acd72(25)=dotproduct(qshift,spvak2e7)
      acd72(26)=abb72(11)
      acd72(27)=abb72(9)
      acd72(28)=dotproduct(qshift,spvak2k3)
      acd72(29)=abb72(14)
      acd72(30)=abb72(17)
      acd72(31)=dotproduct(qshift,spvak2l6)
      acd72(32)=abb72(52)
      acd72(33)=abb72(26)
      acd72(34)=dotproduct(qshift,spvak1l6)
      acd72(35)=abb72(20)
      acd72(36)=abb72(27)
      acd72(37)=abb72(28)
      acd72(38)=dotproduct(qshift,spval6k1)
      acd72(39)=abb72(49)
      acd72(40)=abb72(24)
      acd72(41)=-acd72(25)*acd72(26)
      acd72(42)=-acd72(23)*acd72(24)
      acd72(43)=-acd72(21)*acd72(22)
      acd72(44)=-acd72(11)*acd72(12)
      acd72(41)=acd72(44)+acd72(43)+acd72(42)+acd72(27)+acd72(41)
      acd72(41)=acd72(6)*acd72(41)
      acd72(42)=acd72(28)*acd72(29)
      acd72(43)=-acd72(15)*acd72(16)
      acd72(44)=acd72(1)*acd72(3)
      acd72(45)=acd72(2)*acd72(20)
      acd72(41)=acd72(45)+acd72(41)+acd72(44)+acd72(43)-acd72(30)+acd72(42)
      acd72(41)=acd72(2)*acd72(41)
      acd72(42)=-acd72(8)*acd72(18)
      acd72(43)=-acd72(4)*acd72(17)
      acd72(42)=acd72(43)+acd72(19)+acd72(42)
      acd72(42)=acd72(15)*acd72(42)
      acd72(43)=acd72(8)*acd72(9)
      acd72(44)=acd72(4)*acd72(5)
      acd72(43)=acd72(44)-acd72(10)+acd72(43)
      acd72(43)=acd72(1)*acd72(43)
      acd72(44)=-acd72(1)-acd72(15)-acd72(13)
      acd72(44)=acd72(7)*acd72(44)
      acd72(45)=acd72(31)*acd72(32)
      acd72(44)=-acd72(33)+acd72(45)+acd72(44)
      acd72(44)=acd72(6)*acd72(44)
      acd72(45)=-acd72(38)*acd72(39)
      acd72(46)=-acd72(34)*acd72(35)
      acd72(47)=-acd72(31)*acd72(37)
      acd72(48)=-acd72(28)*acd72(36)
      acd72(49)=-acd72(13)*acd72(14)
      brack=acd72(40)+acd72(41)+acd72(42)+acd72(43)+acd72(44)+acd72(45)+acd72(4&
      &6)+acd72(47)+acd72(48)+acd72(49)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd72h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(65) :: acd72
      complex(ki) :: brack
      acd72(1)=k1(iv1)
      acd72(2)=dotproduct(qshift,spvak2k1)
      acd72(3)=abb72(31)
      acd72(4)=dotproduct(qshift,spvak4k1)
      acd72(5)=abb72(21)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(18)
      acd72(8)=dotproduct(qshift,spvak4l6)
      acd72(9)=abb72(66)
      acd72(10)=abb72(23)
      acd72(11)=k2(iv1)
      acd72(12)=abb72(10)
      acd72(13)=l6(iv1)
      acd72(14)=abb72(64)
      acd72(15)=qshift(iv1)
      acd72(16)=abb72(19)
      acd72(17)=abb72(13)
      acd72(18)=abb72(42)
      acd72(19)=abb72(12)
      acd72(20)=spvak2k1(iv1)
      acd72(21)=dotproduct(k1,qshift)
      acd72(22)=dotproduct(k2,qshift)
      acd72(23)=dotproduct(qshift,qshift)
      acd72(24)=abb72(15)
      acd72(25)=dotproduct(qshift,spvak2l5)
      acd72(26)=abb72(16)
      acd72(27)=dotproduct(qshift,spvak2k7)
      acd72(28)=abb72(29)
      acd72(29)=dotproduct(qshift,spvak2e7)
      acd72(30)=abb72(11)
      acd72(31)=abb72(9)
      acd72(32)=dotproduct(qshift,spvak2k3)
      acd72(33)=abb72(14)
      acd72(34)=abb72(17)
      acd72(35)=spvak4k1(iv1)
      acd72(36)=spvak4k3(iv1)
      acd72(37)=dotproduct(l6,qshift)
      acd72(38)=dotproduct(qshift,spvak2l6)
      acd72(39)=abb72(52)
      acd72(40)=abb72(26)
      acd72(41)=spvak4l6(iv1)
      acd72(42)=spvak1l6(iv1)
      acd72(43)=abb72(20)
      acd72(44)=spvak2k3(iv1)
      acd72(45)=abb72(27)
      acd72(46)=spvak2l5(iv1)
      acd72(47)=spvak2k7(iv1)
      acd72(48)=spvak2e7(iv1)
      acd72(49)=spvak2l6(iv1)
      acd72(50)=abb72(28)
      acd72(51)=spval6k1(iv1)
      acd72(52)=abb72(49)
      acd72(53)=acd72(30)*acd72(29)
      acd72(54)=acd72(28)*acd72(27)
      acd72(55)=acd72(26)*acd72(25)
      acd72(56)=acd72(12)*acd72(22)
      acd72(53)=-acd72(31)+acd72(53)+acd72(54)+acd72(55)+acd72(56)
      acd72(54)=-acd72(36)*acd72(53)
      acd72(55)=-acd72(30)*acd72(48)
      acd72(56)=-acd72(28)*acd72(47)
      acd72(57)=-acd72(26)*acd72(46)
      acd72(58)=-acd72(12)*acd72(11)
      acd72(55)=acd72(58)+acd72(57)+acd72(55)+acd72(56)
      acd72(55)=acd72(6)*acd72(55)
      acd72(56)=acd72(33)*acd72(44)
      acd72(57)=2.0_ki*acd72(15)
      acd72(58)=-acd72(16)*acd72(57)
      acd72(59)=acd72(1)*acd72(3)
      acd72(60)=acd72(20)*acd72(24)
      acd72(54)=acd72(55)+2.0_ki*acd72(60)+acd72(54)+acd72(59)+acd72(56)+acd72(&
      &58)
      acd72(54)=acd72(2)*acd72(54)
      acd72(53)=-acd72(20)*acd72(53)
      acd72(55)=acd72(39)*acd72(49)
      acd72(56)=-acd72(1)-acd72(13)-acd72(57)
      acd72(56)=acd72(7)*acd72(56)
      acd72(53)=acd72(53)+acd72(55)+acd72(56)
      acd72(53)=acd72(6)*acd72(53)
      acd72(55)=acd72(33)*acd72(32)
      acd72(56)=-acd72(23)*acd72(16)
      acd72(58)=acd72(21)*acd72(3)
      acd72(55)=acd72(58)+acd72(56)-acd72(34)+acd72(55)
      acd72(55)=acd72(20)*acd72(55)
      acd72(56)=-acd72(18)*acd72(41)
      acd72(58)=-acd72(17)*acd72(35)
      acd72(56)=acd72(56)+acd72(58)
      acd72(56)=acd72(23)*acd72(56)
      acd72(58)=acd72(9)*acd72(41)
      acd72(59)=acd72(5)*acd72(35)
      acd72(58)=acd72(58)+acd72(59)
      acd72(58)=acd72(21)*acd72(58)
      acd72(59)=-acd72(8)*acd72(18)
      acd72(60)=-acd72(4)*acd72(17)
      acd72(59)=acd72(60)+acd72(19)+acd72(59)
      acd72(57)=acd72(59)*acd72(57)
      acd72(59)=acd72(8)*acd72(9)
      acd72(60)=acd72(4)*acd72(5)
      acd72(59)=acd72(60)-acd72(10)+acd72(59)
      acd72(59)=acd72(1)*acd72(59)
      acd72(60)=acd72(39)*acd72(38)
      acd72(61)=-acd72(21)-acd72(37)-acd72(23)
      acd72(61)=acd72(7)*acd72(61)
      acd72(60)=acd72(61)-acd72(40)+acd72(60)
      acd72(60)=acd72(36)*acd72(60)
      acd72(61)=-acd72(51)*acd72(52)
      acd72(62)=-acd72(42)*acd72(43)
      acd72(63)=-acd72(49)*acd72(50)
      acd72(64)=-acd72(44)*acd72(45)
      acd72(65)=-acd72(13)*acd72(14)
      brack=acd72(53)+acd72(54)+acd72(55)+acd72(56)+acd72(57)+acd72(58)+acd72(5&
      &9)+acd72(60)+acd72(61)+acd72(62)+acd72(63)+acd72(64)+acd72(65)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd72h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=dotproduct(qshift,spvak2k1)
      acd72(3)=abb72(19)
      acd72(4)=dotproduct(qshift,spvak4k1)
      acd72(5)=abb72(13)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(18)
      acd72(8)=dotproduct(qshift,spvak4l6)
      acd72(9)=abb72(42)
      acd72(10)=abb72(12)
      acd72(11)=k1(iv1)
      acd72(12)=spvak2k1(iv2)
      acd72(13)=abb72(31)
      acd72(14)=spvak4k1(iv2)
      acd72(15)=abb72(21)
      acd72(16)=spvak4k3(iv2)
      acd72(17)=spvak4l6(iv2)
      acd72(18)=abb72(66)
      acd72(19)=k1(iv2)
      acd72(20)=spvak2k1(iv1)
      acd72(21)=spvak4k1(iv1)
      acd72(22)=spvak4k3(iv1)
      acd72(23)=spvak4l6(iv1)
      acd72(24)=k2(iv1)
      acd72(25)=abb72(10)
      acd72(26)=k2(iv2)
      acd72(27)=l6(iv1)
      acd72(28)=l6(iv2)
      acd72(29)=qshift(iv1)
      acd72(30)=qshift(iv2)
      acd72(31)=abb72(15)
      acd72(32)=dotproduct(k2,qshift)
      acd72(33)=dotproduct(qshift,spvak2l5)
      acd72(34)=abb72(16)
      acd72(35)=dotproduct(qshift,spvak2k7)
      acd72(36)=abb72(29)
      acd72(37)=dotproduct(qshift,spvak2e7)
      acd72(38)=abb72(11)
      acd72(39)=abb72(9)
      acd72(40)=spvak2k3(iv2)
      acd72(41)=abb72(14)
      acd72(42)=spvak2l5(iv2)
      acd72(43)=spvak2k7(iv2)
      acd72(44)=spvak2e7(iv2)
      acd72(45)=spvak2k3(iv1)
      acd72(46)=spvak2l5(iv1)
      acd72(47)=spvak2k7(iv1)
      acd72(48)=spvak2e7(iv1)
      acd72(49)=spvak2l6(iv2)
      acd72(50)=abb72(52)
      acd72(51)=spvak2l6(iv1)
      acd72(52)=acd72(38)*acd72(48)
      acd72(53)=acd72(36)*acd72(47)
      acd72(54)=acd72(34)*acd72(46)
      acd72(55)=acd72(25)*acd72(24)
      acd72(52)=acd72(53)+acd72(52)+acd72(54)+acd72(55)
      acd72(53)=-acd72(6)*acd72(52)
      acd72(54)=acd72(38)*acd72(37)
      acd72(55)=acd72(36)*acd72(35)
      acd72(56)=acd72(34)*acd72(33)
      acd72(57)=acd72(25)*acd72(32)
      acd72(54)=acd72(54)+acd72(55)+acd72(56)+acd72(57)-acd72(39)
      acd72(55)=-acd72(22)*acd72(54)
      acd72(56)=acd72(41)*acd72(45)
      acd72(57)=2.0_ki*acd72(3)
      acd72(58)=-acd72(29)*acd72(57)
      acd72(59)=acd72(11)*acd72(13)
      acd72(60)=acd72(20)*acd72(31)
      acd72(53)=2.0_ki*acd72(60)+acd72(55)+acd72(53)+acd72(59)+acd72(56)+acd72(&
      &58)
      acd72(53)=acd72(12)*acd72(53)
      acd72(52)=-acd72(2)*acd72(52)
      acd72(54)=-acd72(20)*acd72(54)
      acd72(55)=acd72(50)*acd72(51)
      acd72(56)=-acd72(11)-acd72(27)-2.0_ki*acd72(29)
      acd72(56)=acd72(7)*acd72(56)
      acd72(52)=acd72(54)+acd72(52)+acd72(55)+acd72(56)
      acd72(52)=acd72(16)*acd72(52)
      acd72(54)=-acd72(9)*acd72(8)
      acd72(55)=-acd72(5)*acd72(4)
      acd72(56)=-acd72(6)*acd72(7)
      acd72(58)=-acd72(2)*acd72(3)
      acd72(54)=acd72(58)+acd72(56)+acd72(55)+acd72(10)+acd72(54)
      acd72(55)=2.0_ki*acd72(1)
      acd72(54)=acd72(55)*acd72(54)
      acd72(55)=acd72(38)*acd72(44)
      acd72(56)=acd72(36)*acd72(43)
      acd72(58)=acd72(34)*acd72(42)
      acd72(59)=acd72(25)*acd72(26)
      acd72(55)=acd72(59)+acd72(55)+acd72(56)+acd72(58)
      acd72(56)=-acd72(2)*acd72(55)
      acd72(58)=acd72(50)*acd72(49)
      acd72(59)=-acd72(19)-acd72(28)-2.0_ki*acd72(30)
      acd72(59)=acd72(7)*acd72(59)
      acd72(56)=acd72(56)+acd72(58)+acd72(59)
      acd72(56)=acd72(22)*acd72(56)
      acd72(55)=-acd72(6)*acd72(55)
      acd72(58)=acd72(41)*acd72(40)
      acd72(57)=-acd72(30)*acd72(57)
      acd72(59)=acd72(19)*acd72(13)
      acd72(55)=acd72(55)+acd72(59)+acd72(58)+acd72(57)
      acd72(55)=acd72(20)*acd72(55)
      acd72(57)=-acd72(9)*acd72(23)
      acd72(58)=-acd72(5)*acd72(21)
      acd72(57)=acd72(57)+acd72(58)
      acd72(57)=acd72(30)*acd72(57)
      acd72(58)=-acd72(9)*acd72(17)
      acd72(59)=-acd72(5)*acd72(14)
      acd72(58)=acd72(58)+acd72(59)
      acd72(58)=acd72(29)*acd72(58)
      acd72(57)=acd72(57)+acd72(58)
      acd72(58)=acd72(18)*acd72(23)
      acd72(59)=acd72(15)*acd72(21)
      acd72(58)=acd72(58)+acd72(59)
      acd72(58)=acd72(19)*acd72(58)
      acd72(59)=acd72(17)*acd72(18)
      acd72(60)=acd72(14)*acd72(15)
      acd72(59)=acd72(59)+acd72(60)
      acd72(59)=acd72(11)*acd72(59)
      brack=acd72(52)+acd72(53)+acd72(54)+acd72(55)+acd72(56)+2.0_ki*acd72(57)+&
      &acd72(58)+acd72(59)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd72h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=spvak2k1(iv3)
      acd72(3)=abb72(19)
      acd72(4)=spvak4k1(iv3)
      acd72(5)=abb72(13)
      acd72(6)=spvak4k3(iv3)
      acd72(7)=abb72(18)
      acd72(8)=spvak4l6(iv3)
      acd72(9)=abb72(42)
      acd72(10)=d(iv1,iv3)
      acd72(11)=spvak2k1(iv2)
      acd72(12)=spvak4k1(iv2)
      acd72(13)=spvak4k3(iv2)
      acd72(14)=spvak4l6(iv2)
      acd72(15)=d(iv2,iv3)
      acd72(16)=spvak2k1(iv1)
      acd72(17)=spvak4k1(iv1)
      acd72(18)=spvak4k3(iv1)
      acd72(19)=spvak4l6(iv1)
      acd72(20)=k2(iv1)
      acd72(21)=abb72(10)
      acd72(22)=k2(iv2)
      acd72(23)=k2(iv3)
      acd72(24)=spvak2l5(iv3)
      acd72(25)=abb72(16)
      acd72(26)=spvak2k7(iv3)
      acd72(27)=abb72(29)
      acd72(28)=spvak2e7(iv3)
      acd72(29)=abb72(11)
      acd72(30)=spvak2l5(iv2)
      acd72(31)=spvak2k7(iv2)
      acd72(32)=spvak2e7(iv2)
      acd72(33)=spvak2l5(iv1)
      acd72(34)=spvak2k7(iv1)
      acd72(35)=spvak2e7(iv1)
      acd72(36)=acd72(29)*acd72(32)
      acd72(37)=acd72(27)*acd72(31)
      acd72(38)=acd72(25)*acd72(30)
      acd72(39)=acd72(21)*acd72(22)
      acd72(36)=acd72(36)+acd72(37)+acd72(38)+acd72(39)
      acd72(37)=-acd72(16)*acd72(36)
      acd72(38)=acd72(29)*acd72(35)
      acd72(39)=acd72(27)*acd72(34)
      acd72(40)=acd72(25)*acd72(33)
      acd72(41)=acd72(21)*acd72(20)
      acd72(38)=acd72(38)+acd72(39)+acd72(40)+acd72(41)
      acd72(39)=-acd72(11)*acd72(38)
      acd72(40)=2.0_ki*acd72(1)
      acd72(41)=-acd72(7)*acd72(40)
      acd72(37)=acd72(39)+acd72(41)+acd72(37)
      acd72(37)=acd72(6)*acd72(37)
      acd72(36)=-acd72(18)*acd72(36)
      acd72(38)=-acd72(13)*acd72(38)
      acd72(39)=-acd72(3)*acd72(40)
      acd72(36)=acd72(38)+acd72(39)+acd72(36)
      acd72(36)=acd72(2)*acd72(36)
      acd72(38)=-acd72(9)*acd72(19)
      acd72(39)=-acd72(5)*acd72(17)
      acd72(40)=-acd72(18)*acd72(7)
      acd72(41)=-acd72(16)*acd72(3)
      acd72(38)=acd72(41)+acd72(40)+acd72(38)+acd72(39)
      acd72(38)=acd72(15)*acd72(38)
      acd72(39)=-acd72(9)*acd72(14)
      acd72(40)=-acd72(5)*acd72(12)
      acd72(39)=acd72(39)+acd72(40)
      acd72(39)=acd72(10)*acd72(39)
      acd72(40)=-acd72(9)*acd72(8)
      acd72(41)=-acd72(5)*acd72(4)
      acd72(40)=acd72(40)+acd72(41)
      acd72(40)=acd72(1)*acd72(40)
      acd72(38)=acd72(40)+acd72(39)+acd72(38)
      acd72(39)=acd72(29)*acd72(28)
      acd72(40)=acd72(27)*acd72(26)
      acd72(41)=acd72(25)*acd72(24)
      acd72(42)=acd72(21)*acd72(23)
      acd72(39)=acd72(39)+acd72(40)+acd72(41)+acd72(42)
      acd72(40)=-acd72(16)*acd72(39)
      acd72(41)=2.0_ki*acd72(10)
      acd72(42)=-acd72(7)*acd72(41)
      acd72(40)=acd72(42)+acd72(40)
      acd72(40)=acd72(13)*acd72(40)
      acd72(39)=-acd72(18)*acd72(39)
      acd72(41)=-acd72(3)*acd72(41)
      acd72(39)=acd72(41)+acd72(39)
      acd72(39)=acd72(11)*acd72(39)
      brack=acd72(36)+acd72(37)+2.0_ki*acd72(38)+acd72(39)+acd72(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd72h3
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
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group14
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
end module     p9_csbar_epnebbbarg_d72h3l1d
