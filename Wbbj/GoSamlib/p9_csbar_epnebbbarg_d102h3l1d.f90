module     p9_csbar_epnebbbarg_d102h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d102h3l1d.f90
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
   public :: derivative , reconstruct_d102
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd102
      complex(ki) :: brack
      acd102(1)=dotproduct(k3,qshift)
      acd102(2)=dotproduct(qshift,spvak2k1)
      acd102(3)=abb102(27)
      acd102(4)=dotproduct(qshift,spvak2k3)
      acd102(5)=abb102(23)
      acd102(6)=dotproduct(qshift,spvak2l5)
      acd102(7)=abb102(46)
      acd102(8)=dotproduct(qshift,spvak2l6)
      acd102(9)=abb102(58)
      acd102(10)=dotproduct(qshift,spvak4k3)
      acd102(11)=abb102(55)
      acd102(12)=abb102(41)
      acd102(13)=dotproduct(k4,qshift)
      acd102(14)=dotproduct(k7,qshift)
      acd102(15)=abb102(9)
      acd102(16)=dotproduct(e7,qshift)
      acd102(17)=abb102(17)
      acd102(18)=abb102(11)
      acd102(19)=abb102(15)
      acd102(20)=abb102(16)
      acd102(21)=abb102(48)
      acd102(22)=abb102(14)
      acd102(23)=dotproduct(qshift,qshift)
      acd102(24)=abb102(13)
      acd102(25)=abb102(28)
      acd102(26)=abb102(21)
      acd102(27)=abb102(22)
      acd102(28)=abb102(53)
      acd102(29)=abb102(33)
      acd102(30)=abb102(12)
      acd102(31)=abb102(26)
      acd102(32)=abb102(24)
      acd102(33)=abb102(8)
      acd102(34)=abb102(7)
      acd102(35)=abb102(25)
      acd102(36)=abb102(10)
      acd102(37)=abb102(43)
      acd102(38)=dotproduct(qshift,spvak2k4)
      acd102(39)=dotproduct(qshift,spvak2e7)
      acd102(40)=abb102(19)
      acd102(41)=abb102(20)
      acd102(42)=-acd102(17)*acd102(2)
      acd102(43)=-acd102(19)*acd102(6)
      acd102(44)=-acd102(20)*acd102(8)
      acd102(42)=acd102(21)+acd102(44)+acd102(43)+acd102(42)
      acd102(42)=acd102(42)*acd102(16)
      acd102(43)=acd102(14)*acd102(11)
      acd102(44)=acd102(30)*acd102(2)
      acd102(45)=acd102(32)*acd102(4)
      acd102(46)=acd102(34)*acd102(6)
      acd102(47)=acd102(36)*acd102(8)
      acd102(48)=acd102(38)*acd102(25)
      acd102(49)=acd102(40)*acd102(39)
      acd102(42)=acd102(47)+acd102(46)+acd102(44)+acd102(42)-acd102(41)+acd102(&
      &49)+acd102(48)+acd102(45)+acd102(43)
      acd102(42)=acd102(10)*acd102(42)
      acd102(43)=acd102(11)*acd102(10)
      acd102(44)=acd102(3)*acd102(2)
      acd102(45)=-acd102(5)*acd102(4)
      acd102(46)=acd102(7)*acd102(6)
      acd102(47)=acd102(9)*acd102(8)
      acd102(43)=-acd102(12)+acd102(47)+acd102(46)+acd102(45)+acd102(43)+acd102&
      &(44)
      acd102(44)=acd102(13)+acd102(1)
      acd102(43)=acd102(44)*acd102(43)
      acd102(44)=-acd102(25)*acd102(4)
      acd102(45)=-acd102(24)*acd102(2)
      acd102(46)=-acd102(26)*acd102(6)
      acd102(47)=-acd102(27)*acd102(8)
      acd102(48)=-acd102(28)*acd102(10)
      acd102(44)=acd102(29)+acd102(48)+acd102(47)+acd102(46)+acd102(45)+acd102(&
      &44)
      acd102(44)=acd102(23)*acd102(44)
      acd102(45)=acd102(18)*acd102(4)
      acd102(45)=-acd102(22)+acd102(45)
      acd102(45)=acd102(16)*acd102(45)
      acd102(46)=-acd102(15)*acd102(14)
      acd102(47)=-acd102(31)*acd102(2)
      acd102(48)=-acd102(33)*acd102(4)
      acd102(49)=-acd102(35)*acd102(6)
      acd102(50)=-acd102(37)*acd102(8)
      brack=acd102(42)+acd102(43)+acd102(44)+acd102(45)+acd102(46)+acd102(47)+a&
      &cd102(48)+acd102(49)+acd102(50)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd102
      complex(ki) :: brack
      acd102(1)=k3(iv1)
      acd102(2)=dotproduct(qshift,spvak2k1)
      acd102(3)=abb102(27)
      acd102(4)=dotproduct(qshift,spvak2k3)
      acd102(5)=abb102(23)
      acd102(6)=dotproduct(qshift,spvak2l5)
      acd102(7)=abb102(46)
      acd102(8)=dotproduct(qshift,spvak2l6)
      acd102(9)=abb102(58)
      acd102(10)=dotproduct(qshift,spvak4k3)
      acd102(11)=abb102(55)
      acd102(12)=abb102(41)
      acd102(13)=k4(iv1)
      acd102(14)=k7(iv1)
      acd102(15)=abb102(9)
      acd102(16)=e7(iv1)
      acd102(17)=abb102(17)
      acd102(18)=abb102(11)
      acd102(19)=abb102(15)
      acd102(20)=abb102(16)
      acd102(21)=abb102(48)
      acd102(22)=abb102(14)
      acd102(23)=qshift(iv1)
      acd102(24)=abb102(13)
      acd102(25)=abb102(28)
      acd102(26)=abb102(21)
      acd102(27)=abb102(22)
      acd102(28)=abb102(53)
      acd102(29)=abb102(33)
      acd102(30)=spvak2k1(iv1)
      acd102(31)=dotproduct(k3,qshift)
      acd102(32)=dotproduct(k4,qshift)
      acd102(33)=dotproduct(e7,qshift)
      acd102(34)=dotproduct(qshift,qshift)
      acd102(35)=abb102(12)
      acd102(36)=abb102(26)
      acd102(37)=spvak2k3(iv1)
      acd102(38)=abb102(24)
      acd102(39)=abb102(8)
      acd102(40)=spvak2l5(iv1)
      acd102(41)=abb102(7)
      acd102(42)=abb102(25)
      acd102(43)=spvak2l6(iv1)
      acd102(44)=abb102(10)
      acd102(45)=abb102(43)
      acd102(46)=spvak4k3(iv1)
      acd102(47)=dotproduct(k7,qshift)
      acd102(48)=dotproduct(qshift,spvak2k4)
      acd102(49)=dotproduct(qshift,spvak2e7)
      acd102(50)=abb102(19)
      acd102(51)=abb102(20)
      acd102(52)=spvak2k4(iv1)
      acd102(53)=spvak2e7(iv1)
      acd102(54)=acd102(8)*acd102(20)
      acd102(55)=acd102(6)*acd102(19)
      acd102(56)=acd102(2)*acd102(17)
      acd102(54)=acd102(54)+acd102(55)+acd102(56)-acd102(21)
      acd102(55)=-acd102(16)*acd102(54)
      acd102(56)=-acd102(43)*acd102(20)
      acd102(57)=-acd102(40)*acd102(19)
      acd102(58)=-acd102(30)*acd102(17)
      acd102(56)=acd102(58)+acd102(56)+acd102(57)
      acd102(56)=acd102(33)*acd102(56)
      acd102(57)=acd102(1)+acd102(14)+acd102(13)
      acd102(57)=acd102(11)*acd102(57)
      acd102(58)=acd102(50)*acd102(53)
      acd102(59)=acd102(25)*acd102(52)
      acd102(60)=acd102(43)*acd102(44)
      acd102(61)=acd102(40)*acd102(41)
      acd102(62)=acd102(37)*acd102(38)
      acd102(63)=acd102(30)*acd102(35)
      acd102(64)=2.0_ki*acd102(23)
      acd102(65)=-acd102(28)*acd102(64)
      acd102(55)=acd102(56)+acd102(65)+acd102(63)+acd102(62)+acd102(61)+acd102(&
      &60)+acd102(58)+acd102(59)+acd102(55)+acd102(57)
      acd102(55)=acd102(10)*acd102(55)
      acd102(54)=-acd102(33)*acd102(54)
      acd102(56)=acd102(50)*acd102(49)
      acd102(57)=acd102(25)*acd102(48)
      acd102(58)=-acd102(34)*acd102(28)
      acd102(59)=acd102(4)*acd102(38)
      acd102(60)=acd102(31)+acd102(32)
      acd102(61)=acd102(47)+acd102(60)
      acd102(61)=acd102(11)*acd102(61)
      acd102(62)=acd102(8)*acd102(44)
      acd102(63)=acd102(6)*acd102(41)
      acd102(65)=acd102(2)*acd102(35)
      acd102(54)=acd102(54)+acd102(65)+acd102(63)+acd102(62)+acd102(61)+acd102(&
      &59)+acd102(58)+acd102(57)-acd102(51)+acd102(56)
      acd102(54)=acd102(46)*acd102(54)
      acd102(56)=acd102(4)*acd102(5)
      acd102(56)=acd102(56)+acd102(12)
      acd102(57)=acd102(8)*acd102(9)
      acd102(58)=acd102(6)*acd102(7)
      acd102(59)=acd102(2)*acd102(3)
      acd102(57)=acd102(59)+acd102(58)+acd102(57)-acd102(56)
      acd102(57)=acd102(1)*acd102(57)
      acd102(58)=-acd102(5)*acd102(60)
      acd102(59)=-acd102(34)*acd102(25)
      acd102(61)=acd102(33)*acd102(18)
      acd102(58)=acd102(61)-acd102(39)+acd102(59)+acd102(58)
      acd102(58)=acd102(37)*acd102(58)
      acd102(59)=acd102(9)*acd102(60)
      acd102(61)=-acd102(34)*acd102(27)
      acd102(59)=-acd102(45)+acd102(61)+acd102(59)
      acd102(59)=acd102(43)*acd102(59)
      acd102(61)=acd102(7)*acd102(60)
      acd102(62)=-acd102(34)*acd102(26)
      acd102(61)=-acd102(42)+acd102(62)+acd102(61)
      acd102(61)=acd102(40)*acd102(61)
      acd102(60)=acd102(3)*acd102(60)
      acd102(62)=-acd102(34)*acd102(24)
      acd102(60)=-acd102(36)+acd102(62)+acd102(60)
      acd102(60)=acd102(30)*acd102(60)
      acd102(62)=-acd102(4)*acd102(25)
      acd102(62)=acd102(29)+acd102(62)
      acd102(62)=acd102(62)*acd102(64)
      acd102(63)=-acd102(27)*acd102(64)
      acd102(65)=acd102(13)*acd102(9)
      acd102(63)=acd102(63)+acd102(65)
      acd102(63)=acd102(8)*acd102(63)
      acd102(65)=-acd102(26)*acd102(64)
      acd102(66)=acd102(13)*acd102(7)
      acd102(65)=acd102(65)+acd102(66)
      acd102(65)=acd102(6)*acd102(65)
      acd102(64)=-acd102(24)*acd102(64)
      acd102(66)=acd102(13)*acd102(3)
      acd102(64)=acd102(64)+acd102(66)
      acd102(64)=acd102(2)*acd102(64)
      acd102(66)=-acd102(14)*acd102(15)
      acd102(67)=acd102(4)*acd102(18)
      acd102(67)=-acd102(22)+acd102(67)
      acd102(67)=acd102(16)*acd102(67)
      acd102(56)=-acd102(13)*acd102(56)
      brack=acd102(54)+acd102(55)+acd102(56)+acd102(57)+acd102(58)+acd102(59)+a&
      &cd102(60)+acd102(61)+acd102(62)+acd102(63)+acd102(64)+acd102(65)+acd102(&
      &66)+acd102(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd102
      complex(ki) :: brack
      acd102(1)=d(iv1,iv2)
      acd102(2)=dotproduct(qshift,spvak2k1)
      acd102(3)=abb102(13)
      acd102(4)=dotproduct(qshift,spvak2k3)
      acd102(5)=abb102(28)
      acd102(6)=dotproduct(qshift,spvak2l5)
      acd102(7)=abb102(21)
      acd102(8)=dotproduct(qshift,spvak2l6)
      acd102(9)=abb102(22)
      acd102(10)=dotproduct(qshift,spvak4k3)
      acd102(11)=abb102(53)
      acd102(12)=abb102(33)
      acd102(13)=k3(iv1)
      acd102(14)=spvak2k1(iv2)
      acd102(15)=abb102(27)
      acd102(16)=spvak2k3(iv2)
      acd102(17)=abb102(23)
      acd102(18)=spvak2l5(iv2)
      acd102(19)=abb102(46)
      acd102(20)=spvak2l6(iv2)
      acd102(21)=abb102(58)
      acd102(22)=spvak4k3(iv2)
      acd102(23)=abb102(55)
      acd102(24)=k3(iv2)
      acd102(25)=spvak2k1(iv1)
      acd102(26)=spvak2k3(iv1)
      acd102(27)=spvak2l5(iv1)
      acd102(28)=spvak2l6(iv1)
      acd102(29)=spvak4k3(iv1)
      acd102(30)=k4(iv1)
      acd102(31)=k4(iv2)
      acd102(32)=k7(iv1)
      acd102(33)=k7(iv2)
      acd102(34)=e7(iv1)
      acd102(35)=abb102(17)
      acd102(36)=abb102(11)
      acd102(37)=abb102(15)
      acd102(38)=abb102(16)
      acd102(39)=abb102(48)
      acd102(40)=e7(iv2)
      acd102(41)=qshift(iv1)
      acd102(42)=qshift(iv2)
      acd102(43)=dotproduct(e7,qshift)
      acd102(44)=abb102(12)
      acd102(45)=abb102(24)
      acd102(46)=abb102(7)
      acd102(47)=abb102(10)
      acd102(48)=spvak2k4(iv2)
      acd102(49)=spvak2e7(iv2)
      acd102(50)=abb102(19)
      acd102(51)=spvak2k4(iv1)
      acd102(52)=spvak2e7(iv1)
      acd102(53)=acd102(38)*acd102(8)
      acd102(54)=acd102(37)*acd102(6)
      acd102(55)=acd102(35)*acd102(2)
      acd102(53)=acd102(53)+acd102(54)+acd102(55)-acd102(39)
      acd102(54)=-acd102(40)*acd102(53)
      acd102(55)=acd102(50)*acd102(49)
      acd102(56)=2.0_ki*acd102(42)
      acd102(57)=-acd102(11)*acd102(56)
      acd102(58)=acd102(16)*acd102(45)
      acd102(59)=acd102(5)*acd102(48)
      acd102(60)=acd102(24)+acd102(31)
      acd102(61)=acd102(33)+acd102(60)
      acd102(61)=acd102(23)*acd102(61)
      acd102(62)=acd102(38)*acd102(43)
      acd102(62)=acd102(62)-acd102(47)
      acd102(63)=-acd102(20)*acd102(62)
      acd102(64)=acd102(37)*acd102(43)
      acd102(64)=acd102(64)-acd102(46)
      acd102(65)=-acd102(18)*acd102(64)
      acd102(66)=acd102(35)*acd102(43)
      acd102(66)=acd102(66)-acd102(44)
      acd102(67)=-acd102(14)*acd102(66)
      acd102(54)=acd102(54)+acd102(67)+acd102(65)+acd102(63)+acd102(61)+acd102(&
      &59)+acd102(58)+acd102(55)+acd102(57)
      acd102(54)=acd102(29)*acd102(54)
      acd102(53)=-acd102(34)*acd102(53)
      acd102(55)=acd102(50)*acd102(52)
      acd102(57)=2.0_ki*acd102(41)
      acd102(58)=-acd102(11)*acd102(57)
      acd102(59)=acd102(26)*acd102(45)
      acd102(61)=acd102(5)*acd102(51)
      acd102(62)=-acd102(28)*acd102(62)
      acd102(63)=-acd102(27)*acd102(64)
      acd102(64)=-acd102(25)*acd102(66)
      acd102(65)=acd102(13)+acd102(30)
      acd102(66)=acd102(32)+acd102(65)
      acd102(66)=acd102(23)*acd102(66)
      acd102(53)=acd102(53)+acd102(66)+acd102(64)+acd102(63)+acd102(62)+acd102(&
      &61)+acd102(59)+acd102(55)+acd102(58)
      acd102(53)=acd102(22)*acd102(53)
      acd102(55)=-acd102(8)*acd102(9)
      acd102(58)=-acd102(6)*acd102(7)
      acd102(59)=-acd102(2)*acd102(3)
      acd102(61)=-acd102(5)*acd102(4)
      acd102(55)=acd102(61)+acd102(59)+acd102(58)+acd102(12)+acd102(55)
      acd102(58)=2.0_ki*acd102(11)
      acd102(58)=-acd102(10)*acd102(58)
      acd102(55)=acd102(58)+2.0_ki*acd102(55)
      acd102(55)=acd102(1)*acd102(55)
      acd102(58)=-acd102(28)*acd102(38)
      acd102(59)=-acd102(27)*acd102(37)
      acd102(61)=-acd102(25)*acd102(35)
      acd102(58)=acd102(61)+acd102(58)+acd102(59)
      acd102(58)=acd102(10)*acd102(58)
      acd102(59)=acd102(26)*acd102(36)
      acd102(58)=acd102(59)+acd102(58)
      acd102(58)=acd102(40)*acd102(58)
      acd102(59)=-acd102(20)*acd102(38)
      acd102(61)=-acd102(18)*acd102(37)
      acd102(62)=-acd102(14)*acd102(35)
      acd102(59)=acd102(62)+acd102(59)+acd102(61)
      acd102(59)=acd102(10)*acd102(59)
      acd102(61)=acd102(16)*acd102(36)
      acd102(59)=acd102(61)+acd102(59)
      acd102(59)=acd102(34)*acd102(59)
      acd102(61)=-acd102(26)*acd102(60)
      acd102(62)=-acd102(65)*acd102(16)
      acd102(61)=acd102(62)+acd102(61)
      acd102(61)=acd102(17)*acd102(61)
      acd102(62)=-acd102(26)*acd102(42)
      acd102(63)=-acd102(16)*acd102(41)
      acd102(62)=acd102(62)+acd102(63)
      acd102(62)=acd102(5)*acd102(62)
      acd102(63)=acd102(21)*acd102(60)
      acd102(64)=-acd102(9)*acd102(56)
      acd102(63)=acd102(64)+acd102(63)
      acd102(63)=acd102(28)*acd102(63)
      acd102(64)=acd102(19)*acd102(60)
      acd102(66)=-acd102(7)*acd102(56)
      acd102(64)=acd102(66)+acd102(64)
      acd102(64)=acd102(27)*acd102(64)
      acd102(60)=acd102(15)*acd102(60)
      acd102(56)=-acd102(3)*acd102(56)
      acd102(56)=acd102(56)+acd102(60)
      acd102(56)=acd102(25)*acd102(56)
      acd102(60)=acd102(21)*acd102(65)
      acd102(66)=-acd102(9)*acd102(57)
      acd102(60)=acd102(66)+acd102(60)
      acd102(60)=acd102(20)*acd102(60)
      acd102(66)=acd102(19)*acd102(65)
      acd102(67)=-acd102(7)*acd102(57)
      acd102(66)=acd102(67)+acd102(66)
      acd102(66)=acd102(18)*acd102(66)
      acd102(65)=acd102(15)*acd102(65)
      acd102(57)=-acd102(3)*acd102(57)
      acd102(57)=acd102(57)+acd102(65)
      acd102(57)=acd102(14)*acd102(57)
      brack=acd102(53)+acd102(54)+acd102(55)+acd102(56)+acd102(57)+acd102(58)+a&
      &cd102(59)+acd102(60)+acd102(61)+2.0_ki*acd102(62)+acd102(63)+acd102(64)+&
      &acd102(66)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd102h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd102
      complex(ki) :: brack
      acd102(1)=d(iv1,iv2)
      acd102(2)=spvak2k1(iv3)
      acd102(3)=abb102(13)
      acd102(4)=spvak2k3(iv3)
      acd102(5)=abb102(28)
      acd102(6)=spvak2l5(iv3)
      acd102(7)=abb102(21)
      acd102(8)=spvak2l6(iv3)
      acd102(9)=abb102(22)
      acd102(10)=spvak4k3(iv3)
      acd102(11)=abb102(53)
      acd102(12)=d(iv1,iv3)
      acd102(13)=spvak2k1(iv2)
      acd102(14)=spvak2k3(iv2)
      acd102(15)=spvak2l5(iv2)
      acd102(16)=spvak2l6(iv2)
      acd102(17)=spvak4k3(iv2)
      acd102(18)=d(iv2,iv3)
      acd102(19)=spvak2k1(iv1)
      acd102(20)=spvak2k3(iv1)
      acd102(21)=spvak2l5(iv1)
      acd102(22)=spvak2l6(iv1)
      acd102(23)=spvak4k3(iv1)
      acd102(24)=e7(iv1)
      acd102(25)=abb102(17)
      acd102(26)=abb102(15)
      acd102(27)=abb102(16)
      acd102(28)=e7(iv2)
      acd102(29)=e7(iv3)
      acd102(30)=-acd102(3)*acd102(2)
      acd102(31)=-acd102(7)*acd102(6)
      acd102(32)=-acd102(9)*acd102(8)
      acd102(33)=-acd102(4)*acd102(5)
      acd102(30)=acd102(33)+acd102(32)+acd102(31)+acd102(30)
      acd102(31)=2.0_ki*acd102(1)
      acd102(30)=acd102(31)*acd102(30)
      acd102(31)=-acd102(2)*acd102(25)
      acd102(32)=-acd102(6)*acd102(26)
      acd102(33)=-acd102(8)*acd102(27)
      acd102(31)=acd102(33)+acd102(32)+acd102(31)
      acd102(32)=acd102(24)*acd102(17)
      acd102(33)=acd102(28)*acd102(23)
      acd102(32)=acd102(32)+acd102(33)
      acd102(31)=acd102(32)*acd102(31)
      acd102(32)=-acd102(1)*acd102(10)
      acd102(33)=-acd102(12)*acd102(17)
      acd102(34)=-acd102(18)*acd102(23)
      acd102(32)=acd102(34)+acd102(32)+acd102(33)
      acd102(32)=acd102(11)*acd102(32)
      acd102(33)=2.0_ki*acd102(12)
      acd102(34)=-acd102(14)*acd102(33)
      acd102(35)=2.0_ki*acd102(18)
      acd102(36)=-acd102(20)*acd102(35)
      acd102(34)=acd102(36)+acd102(34)
      acd102(34)=acd102(5)*acd102(34)
      acd102(36)=acd102(24)*acd102(10)
      acd102(37)=acd102(29)*acd102(23)
      acd102(36)=acd102(36)+acd102(37)
      acd102(37)=-acd102(25)*acd102(36)
      acd102(38)=-acd102(3)*acd102(33)
      acd102(37)=acd102(38)+acd102(37)
      acd102(37)=acd102(13)*acd102(37)
      acd102(38)=-acd102(26)*acd102(36)
      acd102(39)=-acd102(7)*acd102(33)
      acd102(38)=acd102(39)+acd102(38)
      acd102(38)=acd102(15)*acd102(38)
      acd102(36)=-acd102(27)*acd102(36)
      acd102(33)=-acd102(9)*acd102(33)
      acd102(33)=acd102(33)+acd102(36)
      acd102(33)=acd102(16)*acd102(33)
      acd102(36)=acd102(28)*acd102(10)
      acd102(39)=acd102(29)*acd102(17)
      acd102(36)=acd102(36)+acd102(39)
      acd102(39)=-acd102(25)*acd102(36)
      acd102(40)=-acd102(3)*acd102(35)
      acd102(39)=acd102(40)+acd102(39)
      acd102(39)=acd102(19)*acd102(39)
      acd102(40)=-acd102(26)*acd102(36)
      acd102(41)=-acd102(7)*acd102(35)
      acd102(40)=acd102(41)+acd102(40)
      acd102(40)=acd102(21)*acd102(40)
      acd102(36)=-acd102(27)*acd102(36)
      acd102(35)=-acd102(9)*acd102(35)
      acd102(35)=acd102(35)+acd102(36)
      acd102(35)=acd102(22)*acd102(35)
      brack=acd102(30)+acd102(31)+2.0_ki*acd102(32)+acd102(33)+acd102(34)+acd10&
      &2(35)+acd102(37)+acd102(38)+acd102(39)+acd102(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd102h3
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
!---#[ subroutine reconstruct_d102:
   subroutine     reconstruct_d102(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_102:
      coeffs%coeffs_102%c0 = derivative(czip)
      coeffs%coeffs_102%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_102%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_102%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_102%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_102%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_102%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_102%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_102%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_102%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_102%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_102%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_102%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_102%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_102%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_102%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_102%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_102%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_102%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_102%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_102%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_102%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_102%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_102%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_102%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_102%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_102%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_102%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_102%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_102%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_102%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_102%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_102%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_102%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_102%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_102:
   end subroutine reconstruct_d102
!---#] subroutine reconstruct_d102:
end module     p9_csbar_epnebbbarg_d102h3l1d
