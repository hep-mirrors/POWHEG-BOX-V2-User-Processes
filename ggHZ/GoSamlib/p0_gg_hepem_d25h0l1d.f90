module     p0_gg_hepem_d25h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d25h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d25
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd25h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd25
      complex(ki) :: brack
      acd25(1)=dotproduct(qshift,qshift)
      acd25(2)=dotproduct(qshift,spvae2k4)
      acd25(3)=abb25(35)
      acd25(4)=dotproduct(qshift,spvak5e2)
      acd25(5)=abb25(39)
      acd25(6)=dotproduct(qshift,spvae1e2)
      acd25(7)=abb25(31)
      acd25(8)=dotproduct(qshift,spvae2e1)
      acd25(9)=abb25(36)
      acd25(10)=abb25(24)
      acd25(11)=dotproduct(qshift,spvak5e1)
      acd25(12)=abb25(13)
      acd25(13)=abb25(11)
      acd25(14)=dotproduct(qshift,spvak5k1)
      acd25(15)=abb25(29)
      acd25(16)=dotproduct(qshift,spvae1k1)
      acd25(17)=abb25(25)
      acd25(18)=dotproduct(qshift,spvae1k2)
      acd25(19)=abb25(6)
      acd25(20)=dotproduct(qshift,spvae1l3)
      acd25(21)=abb25(41)
      acd25(22)=abb25(28)
      acd25(23)=dotproduct(qshift,spvae1k4)
      acd25(24)=abb25(9)
      acd25(25)=dotproduct(qshift,spvak1k4)
      acd25(26)=abb25(38)
      acd25(27)=dotproduct(qshift,spvak1e1)
      acd25(28)=abb25(21)
      acd25(29)=dotproduct(qshift,spvak2e1)
      acd25(30)=abb25(7)
      acd25(31)=dotproduct(qshift,spval3e1)
      acd25(32)=abb25(43)
      acd25(33)=abb25(19)
      acd25(34)=abb25(37)
      acd25(35)=abb25(20)
      acd25(36)=abb25(30)
      acd25(37)=abb25(40)
      acd25(38)=abb25(16)
      acd25(39)=abb25(12)
      acd25(40)=abb25(33)
      acd25(41)=abb25(34)
      acd25(42)=abb25(44)
      acd25(43)=abb25(18)
      acd25(44)=abb25(14)
      acd25(45)=abb25(5)
      acd25(46)=abb25(23)
      acd25(47)=abb25(27)
      acd25(48)=abb25(22)
      acd25(49)=abb25(26)
      acd25(50)=abb25(45)
      acd25(51)=abb25(32)
      acd25(52)=abb25(42)
      acd25(53)=abb25(17)
      acd25(54)=abb25(8)
      acd25(55)=abb25(15)
      acd25(56)=abb25(10)
      acd25(57)=acd25(23)*acd25(44)
      acd25(58)=acd25(20)*acd25(43)
      acd25(59)=acd25(18)*acd25(42)
      acd25(60)=acd25(16)*acd25(41)
      acd25(61)=acd25(14)*acd25(40)
      acd25(62)=-acd25(1)*acd25(9)
      acd25(63)=-acd25(23)*acd25(12)
      acd25(63)=acd25(24)+acd25(63)
      acd25(63)=acd25(4)*acd25(63)
      acd25(57)=acd25(63)+acd25(62)+acd25(61)+acd25(60)+acd25(59)+acd25(58)-acd&
      &25(45)+acd25(57)
      acd25(57)=acd25(8)*acd25(57)
      acd25(58)=acd25(31)*acd25(37)
      acd25(59)=acd25(29)*acd25(36)
      acd25(60)=acd25(27)*acd25(35)
      acd25(61)=acd25(25)*acd25(34)
      acd25(62)=acd25(11)*acd25(38)
      acd25(63)=-acd25(1)*acd25(7)
      acd25(64)=acd25(11)*acd25(12)
      acd25(64)=acd25(13)+acd25(64)
      acd25(64)=acd25(2)*acd25(64)
      acd25(58)=acd25(64)+acd25(63)+acd25(62)+acd25(61)+acd25(60)+acd25(59)-acd&
      &25(39)+acd25(58)
      acd25(58)=acd25(6)*acd25(58)
      acd25(59)=acd25(31)*acd25(32)
      acd25(60)=acd25(29)*acd25(30)
      acd25(61)=acd25(27)*acd25(28)
      acd25(62)=-acd25(25)*acd25(26)
      acd25(63)=-acd25(1)*acd25(5)
      acd25(59)=acd25(63)+acd25(62)+acd25(61)+acd25(60)-acd25(33)+acd25(59)
      acd25(59)=acd25(4)*acd25(59)
      acd25(60)=-acd25(20)*acd25(21)
      acd25(61)=acd25(18)*acd25(19)
      acd25(62)=acd25(16)*acd25(17)
      acd25(63)=acd25(14)*acd25(15)
      acd25(64)=-acd25(1)*acd25(3)
      acd25(60)=acd25(64)+acd25(63)+acd25(62)+acd25(61)-acd25(22)+acd25(60)
      acd25(60)=acd25(2)*acd25(60)
      acd25(61)=-acd25(31)*acd25(52)
      acd25(62)=-acd25(29)*acd25(50)
      acd25(63)=-acd25(27)*acd25(48)
      acd25(64)=-acd25(25)*acd25(46)
      acd25(65)=-acd25(23)*acd25(54)
      acd25(66)=-acd25(20)*acd25(53)
      acd25(67)=-acd25(18)*acd25(51)
      acd25(68)=-acd25(16)*acd25(49)
      acd25(69)=acd25(14)*acd25(47)
      acd25(70)=-acd25(11)*acd25(55)
      acd25(71)=acd25(1)*acd25(10)
      brack=acd25(56)+acd25(57)+acd25(58)+acd25(59)+acd25(60)+acd25(61)+acd25(6&
      &2)+acd25(63)+acd25(64)+acd25(65)+acd25(66)+acd25(67)+acd25(68)+acd25(69)&
      &+acd25(70)+acd25(71)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd25h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd25
      complex(ki) :: brack
      acd25(1)=qshift(iv1)
      acd25(2)=dotproduct(qshift,spvae2k4)
      acd25(3)=abb25(35)
      acd25(4)=dotproduct(qshift,spvak5e2)
      acd25(5)=abb25(39)
      acd25(6)=dotproduct(qshift,spvae1e2)
      acd25(7)=abb25(31)
      acd25(8)=dotproduct(qshift,spvae2e1)
      acd25(9)=abb25(36)
      acd25(10)=abb25(24)
      acd25(11)=spvae2k4(iv1)
      acd25(12)=dotproduct(qshift,qshift)
      acd25(13)=dotproduct(qshift,spvak5e1)
      acd25(14)=abb25(13)
      acd25(15)=abb25(11)
      acd25(16)=dotproduct(qshift,spvak5k1)
      acd25(17)=abb25(29)
      acd25(18)=dotproduct(qshift,spvae1k1)
      acd25(19)=abb25(25)
      acd25(20)=dotproduct(qshift,spvae1k2)
      acd25(21)=abb25(6)
      acd25(22)=dotproduct(qshift,spvae1l3)
      acd25(23)=abb25(41)
      acd25(24)=abb25(28)
      acd25(25)=spvak5e2(iv1)
      acd25(26)=dotproduct(qshift,spvae1k4)
      acd25(27)=abb25(9)
      acd25(28)=dotproduct(qshift,spvak1k4)
      acd25(29)=abb25(38)
      acd25(30)=dotproduct(qshift,spvak1e1)
      acd25(31)=abb25(21)
      acd25(32)=dotproduct(qshift,spvak2e1)
      acd25(33)=abb25(7)
      acd25(34)=dotproduct(qshift,spval3e1)
      acd25(35)=abb25(43)
      acd25(36)=abb25(19)
      acd25(37)=spvae1e2(iv1)
      acd25(38)=abb25(37)
      acd25(39)=abb25(20)
      acd25(40)=abb25(30)
      acd25(41)=abb25(40)
      acd25(42)=abb25(16)
      acd25(43)=abb25(12)
      acd25(44)=spvae2e1(iv1)
      acd25(45)=abb25(33)
      acd25(46)=abb25(34)
      acd25(47)=abb25(44)
      acd25(48)=abb25(18)
      acd25(49)=abb25(14)
      acd25(50)=abb25(5)
      acd25(51)=spvak1k4(iv1)
      acd25(52)=abb25(23)
      acd25(53)=spvak5k1(iv1)
      acd25(54)=abb25(27)
      acd25(55)=spvak1e1(iv1)
      acd25(56)=abb25(22)
      acd25(57)=spvae1k1(iv1)
      acd25(58)=abb25(26)
      acd25(59)=spvak2e1(iv1)
      acd25(60)=abb25(45)
      acd25(61)=spvae1k2(iv1)
      acd25(62)=abb25(32)
      acd25(63)=spval3e1(iv1)
      acd25(64)=abb25(42)
      acd25(65)=spvae1l3(iv1)
      acd25(66)=abb25(17)
      acd25(67)=spvae1k4(iv1)
      acd25(68)=abb25(8)
      acd25(69)=spvak5e1(iv1)
      acd25(70)=abb25(15)
      acd25(71)=-acd25(22)*acd25(48)
      acd25(72)=-acd25(20)*acd25(47)
      acd25(73)=-acd25(18)*acd25(46)
      acd25(74)=-acd25(16)*acd25(45)
      acd25(75)=-acd25(26)*acd25(49)
      acd25(76)=acd25(12)*acd25(9)
      acd25(77)=acd25(14)*acd25(26)
      acd25(77)=acd25(77)-acd25(27)
      acd25(78)=acd25(4)*acd25(77)
      acd25(71)=acd25(78)+acd25(76)+acd25(75)+acd25(74)+acd25(73)+acd25(72)+acd&
      &25(50)+acd25(71)
      acd25(71)=acd25(44)*acd25(71)
      acd25(72)=-acd25(34)*acd25(41)
      acd25(73)=-acd25(32)*acd25(40)
      acd25(74)=-acd25(30)*acd25(39)
      acd25(75)=-acd25(28)*acd25(38)
      acd25(76)=-acd25(13)*acd25(42)
      acd25(78)=acd25(12)*acd25(7)
      acd25(79)=acd25(14)*acd25(13)
      acd25(79)=acd25(79)+acd25(15)
      acd25(80)=-acd25(2)*acd25(79)
      acd25(72)=acd25(80)+acd25(78)+acd25(76)+acd25(75)+acd25(74)+acd25(73)+acd&
      &25(43)+acd25(72)
      acd25(72)=acd25(37)*acd25(72)
      acd25(73)=acd25(4)*acd25(14)
      acd25(73)=acd25(73)-acd25(49)
      acd25(73)=acd25(67)*acd25(73)
      acd25(74)=-acd25(65)*acd25(48)
      acd25(75)=-acd25(61)*acd25(47)
      acd25(76)=-acd25(57)*acd25(46)
      acd25(78)=-acd25(53)*acd25(45)
      acd25(80)=2.0_ki*acd25(1)
      acd25(81)=acd25(9)*acd25(80)
      acd25(77)=acd25(25)*acd25(77)
      acd25(73)=acd25(77)+acd25(81)+acd25(78)+acd25(76)+acd25(75)+acd25(74)+acd&
      &25(73)
      acd25(73)=acd25(8)*acd25(73)
      acd25(74)=-acd25(2)*acd25(14)
      acd25(74)=acd25(74)-acd25(42)
      acd25(74)=acd25(69)*acd25(74)
      acd25(75)=-acd25(63)*acd25(41)
      acd25(76)=-acd25(59)*acd25(40)
      acd25(77)=-acd25(55)*acd25(39)
      acd25(78)=-acd25(51)*acd25(38)
      acd25(81)=acd25(7)*acd25(80)
      acd25(79)=-acd25(11)*acd25(79)
      acd25(74)=acd25(79)+acd25(81)+acd25(78)+acd25(77)+acd25(76)+acd25(75)+acd&
      &25(74)
      acd25(74)=acd25(6)*acd25(74)
      acd25(75)=-acd25(34)*acd25(35)
      acd25(76)=-acd25(32)*acd25(33)
      acd25(77)=-acd25(30)*acd25(31)
      acd25(78)=acd25(28)*acd25(29)
      acd25(79)=acd25(12)*acd25(5)
      acd25(75)=acd25(79)+acd25(78)+acd25(77)+acd25(76)+acd25(36)+acd25(75)
      acd25(75)=acd25(25)*acd25(75)
      acd25(76)=acd25(22)*acd25(23)
      acd25(77)=-acd25(20)*acd25(21)
      acd25(78)=-acd25(18)*acd25(19)
      acd25(79)=-acd25(16)*acd25(17)
      acd25(81)=acd25(12)*acd25(3)
      acd25(76)=acd25(81)+acd25(79)+acd25(78)+acd25(77)+acd25(24)+acd25(76)
      acd25(76)=acd25(11)*acd25(76)
      acd25(77)=-acd25(63)*acd25(35)
      acd25(78)=-acd25(59)*acd25(33)
      acd25(79)=-acd25(55)*acd25(31)
      acd25(81)=acd25(51)*acd25(29)
      acd25(82)=acd25(5)*acd25(80)
      acd25(77)=acd25(82)+acd25(81)+acd25(79)+acd25(77)+acd25(78)
      acd25(77)=acd25(4)*acd25(77)
      acd25(78)=acd25(65)*acd25(23)
      acd25(79)=-acd25(61)*acd25(21)
      acd25(81)=-acd25(57)*acd25(19)
      acd25(82)=-acd25(53)*acd25(17)
      acd25(83)=acd25(3)*acd25(80)
      acd25(78)=acd25(83)+acd25(82)+acd25(81)+acd25(78)+acd25(79)
      acd25(78)=acd25(2)*acd25(78)
      acd25(79)=acd25(69)*acd25(70)
      acd25(81)=acd25(67)*acd25(68)
      acd25(82)=acd25(65)*acd25(66)
      acd25(83)=acd25(63)*acd25(64)
      acd25(84)=acd25(61)*acd25(62)
      acd25(85)=acd25(59)*acd25(60)
      acd25(86)=acd25(57)*acd25(58)
      acd25(87)=acd25(55)*acd25(56)
      acd25(88)=-acd25(53)*acd25(54)
      acd25(89)=acd25(51)*acd25(52)
      acd25(80)=-acd25(10)*acd25(80)
      brack=acd25(71)+acd25(72)+acd25(73)+acd25(74)+acd25(75)+acd25(76)+acd25(7&
      &7)+acd25(78)+acd25(79)+acd25(80)+acd25(81)+acd25(82)+acd25(83)+acd25(84)&
      &+acd25(85)+acd25(86)+acd25(87)+acd25(88)+acd25(89)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd25h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=dotproduct(qshift,spvae2k4)
      acd25(3)=abb25(35)
      acd25(4)=dotproduct(qshift,spvak5e2)
      acd25(5)=abb25(39)
      acd25(6)=dotproduct(qshift,spvae1e2)
      acd25(7)=abb25(31)
      acd25(8)=dotproduct(qshift,spvae2e1)
      acd25(9)=abb25(36)
      acd25(10)=abb25(24)
      acd25(11)=qshift(iv1)
      acd25(12)=spvae2k4(iv2)
      acd25(13)=spvak5e2(iv2)
      acd25(14)=spvae1e2(iv2)
      acd25(15)=spvae2e1(iv2)
      acd25(16)=qshift(iv2)
      acd25(17)=spvae2k4(iv1)
      acd25(18)=spvak5e2(iv1)
      acd25(19)=spvae1e2(iv1)
      acd25(20)=spvae2e1(iv1)
      acd25(21)=dotproduct(qshift,spvak5e1)
      acd25(22)=abb25(13)
      acd25(23)=abb25(11)
      acd25(24)=spvak5k1(iv2)
      acd25(25)=abb25(29)
      acd25(26)=spvae1k1(iv2)
      acd25(27)=abb25(25)
      acd25(28)=spvae1k2(iv2)
      acd25(29)=abb25(6)
      acd25(30)=spvae1l3(iv2)
      acd25(31)=abb25(41)
      acd25(32)=spvak5e1(iv2)
      acd25(33)=spvak5k1(iv1)
      acd25(34)=spvae1k1(iv1)
      acd25(35)=spvae1k2(iv1)
      acd25(36)=spvae1l3(iv1)
      acd25(37)=spvak5e1(iv1)
      acd25(38)=dotproduct(qshift,spvae1k4)
      acd25(39)=abb25(9)
      acd25(40)=spvak1k4(iv2)
      acd25(41)=abb25(38)
      acd25(42)=spvak1e1(iv2)
      acd25(43)=abb25(21)
      acd25(44)=spvak2e1(iv2)
      acd25(45)=abb25(7)
      acd25(46)=spval3e1(iv2)
      acd25(47)=abb25(43)
      acd25(48)=spvae1k4(iv2)
      acd25(49)=spvak1k4(iv1)
      acd25(50)=spvak1e1(iv1)
      acd25(51)=spvak2e1(iv1)
      acd25(52)=spval3e1(iv1)
      acd25(53)=spvae1k4(iv1)
      acd25(54)=abb25(37)
      acd25(55)=abb25(20)
      acd25(56)=abb25(30)
      acd25(57)=abb25(40)
      acd25(58)=abb25(16)
      acd25(59)=abb25(33)
      acd25(60)=abb25(34)
      acd25(61)=abb25(44)
      acd25(62)=abb25(18)
      acd25(63)=abb25(14)
      acd25(64)=acd25(30)*acd25(62)
      acd25(65)=acd25(28)*acd25(61)
      acd25(66)=acd25(26)*acd25(60)
      acd25(67)=acd25(24)*acd25(59)
      acd25(68)=acd25(48)*acd25(63)
      acd25(69)=2.0_ki*acd25(16)
      acd25(70)=-acd25(9)*acd25(69)
      acd25(71)=acd25(13)*acd25(39)
      acd25(64)=acd25(71)+acd25(70)+acd25(68)+acd25(67)+acd25(66)+acd25(64)+acd&
      &25(65)
      acd25(64)=acd25(20)*acd25(64)
      acd25(65)=acd25(46)*acd25(57)
      acd25(66)=acd25(44)*acd25(56)
      acd25(67)=acd25(42)*acd25(55)
      acd25(68)=acd25(40)*acd25(54)
      acd25(70)=acd25(32)*acd25(58)
      acd25(71)=-acd25(7)*acd25(69)
      acd25(72)=acd25(12)*acd25(23)
      acd25(65)=acd25(72)+acd25(71)+acd25(70)+acd25(68)+acd25(67)+acd25(65)+acd&
      &25(66)
      acd25(65)=acd25(19)*acd25(65)
      acd25(66)=acd25(36)*acd25(62)
      acd25(67)=acd25(35)*acd25(61)
      acd25(68)=acd25(34)*acd25(60)
      acd25(70)=acd25(33)*acd25(59)
      acd25(71)=acd25(53)*acd25(63)
      acd25(72)=2.0_ki*acd25(11)
      acd25(73)=-acd25(9)*acd25(72)
      acd25(74)=acd25(18)*acd25(39)
      acd25(66)=acd25(74)+acd25(73)+acd25(71)+acd25(70)+acd25(68)+acd25(66)+acd&
      &25(67)
      acd25(66)=acd25(15)*acd25(66)
      acd25(67)=acd25(52)*acd25(57)
      acd25(68)=acd25(51)*acd25(56)
      acd25(70)=acd25(50)*acd25(55)
      acd25(71)=acd25(49)*acd25(54)
      acd25(73)=acd25(37)*acd25(58)
      acd25(74)=-acd25(7)*acd25(72)
      acd25(75)=acd25(17)*acd25(23)
      acd25(67)=acd25(75)+acd25(74)+acd25(73)+acd25(71)+acd25(70)+acd25(67)+acd&
      &25(68)
      acd25(67)=acd25(14)*acd25(67)
      acd25(68)=-acd25(18)*acd25(48)
      acd25(70)=-acd25(13)*acd25(53)
      acd25(68)=acd25(70)+acd25(68)
      acd25(68)=acd25(8)*acd25(68)
      acd25(70)=acd25(17)*acd25(32)
      acd25(71)=acd25(12)*acd25(37)
      acd25(70)=acd25(71)+acd25(70)
      acd25(70)=acd25(6)*acd25(70)
      acd25(71)=-acd25(4)*acd25(48)
      acd25(73)=-acd25(13)*acd25(38)
      acd25(71)=acd25(71)+acd25(73)
      acd25(71)=acd25(20)*acd25(71)
      acd25(73)=acd25(2)*acd25(32)
      acd25(74)=acd25(12)*acd25(21)
      acd25(73)=acd25(73)+acd25(74)
      acd25(73)=acd25(19)*acd25(73)
      acd25(74)=-acd25(4)*acd25(53)
      acd25(75)=-acd25(18)*acd25(38)
      acd25(74)=acd25(74)+acd25(75)
      acd25(74)=acd25(15)*acd25(74)
      acd25(75)=acd25(2)*acd25(37)
      acd25(76)=acd25(17)*acd25(21)
      acd25(75)=acd25(75)+acd25(76)
      acd25(75)=acd25(14)*acd25(75)
      acd25(68)=acd25(75)+acd25(74)+acd25(73)+acd25(71)+acd25(70)+acd25(68)
      acd25(68)=acd25(22)*acd25(68)
      acd25(70)=acd25(46)*acd25(47)
      acd25(71)=acd25(44)*acd25(45)
      acd25(73)=acd25(42)*acd25(43)
      acd25(74)=-acd25(40)*acd25(41)
      acd25(75)=-acd25(5)*acd25(69)
      acd25(70)=acd25(75)+acd25(74)+acd25(73)+acd25(70)+acd25(71)
      acd25(70)=acd25(18)*acd25(70)
      acd25(71)=-acd25(30)*acd25(31)
      acd25(73)=acd25(28)*acd25(29)
      acd25(74)=acd25(26)*acd25(27)
      acd25(75)=acd25(24)*acd25(25)
      acd25(69)=-acd25(3)*acd25(69)
      acd25(69)=acd25(69)+acd25(75)+acd25(74)+acd25(71)+acd25(73)
      acd25(69)=acd25(17)*acd25(69)
      acd25(71)=acd25(47)*acd25(52)
      acd25(73)=acd25(45)*acd25(51)
      acd25(74)=acd25(43)*acd25(50)
      acd25(75)=-acd25(41)*acd25(49)
      acd25(76)=-acd25(5)*acd25(72)
      acd25(71)=acd25(76)+acd25(75)+acd25(74)+acd25(71)+acd25(73)
      acd25(71)=acd25(13)*acd25(71)
      acd25(73)=-acd25(31)*acd25(36)
      acd25(74)=acd25(29)*acd25(35)
      acd25(75)=acd25(27)*acd25(34)
      acd25(76)=acd25(25)*acd25(33)
      acd25(72)=-acd25(3)*acd25(72)
      acd25(72)=acd25(72)+acd25(76)+acd25(75)+acd25(73)+acd25(74)
      acd25(72)=acd25(12)*acd25(72)
      acd25(73)=-acd25(8)*acd25(9)
      acd25(74)=-acd25(6)*acd25(7)
      acd25(75)=-acd25(4)*acd25(5)
      acd25(76)=-acd25(2)*acd25(3)
      acd25(73)=acd25(76)+acd25(75)+acd25(74)+acd25(10)+acd25(73)
      acd25(73)=acd25(1)*acd25(73)
      brack=acd25(64)+acd25(65)+acd25(66)+acd25(67)+acd25(68)+acd25(69)+acd25(7&
      &0)+acd25(71)+acd25(72)+2.0_ki*acd25(73)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd25h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=spvae2k4(iv3)
      acd25(3)=abb25(35)
      acd25(4)=spvak5e2(iv3)
      acd25(5)=abb25(39)
      acd25(6)=spvae1e2(iv3)
      acd25(7)=abb25(31)
      acd25(8)=spvae2e1(iv3)
      acd25(9)=abb25(36)
      acd25(10)=d(iv1,iv3)
      acd25(11)=spvae2k4(iv2)
      acd25(12)=spvak5e2(iv2)
      acd25(13)=spvae1e2(iv2)
      acd25(14)=spvae2e1(iv2)
      acd25(15)=d(iv2,iv3)
      acd25(16)=spvae2k4(iv1)
      acd25(17)=spvak5e2(iv1)
      acd25(18)=spvae1e2(iv1)
      acd25(19)=spvae2e1(iv1)
      acd25(20)=spvak5e1(iv3)
      acd25(21)=abb25(13)
      acd25(22)=spvak5e1(iv2)
      acd25(23)=spvak5e1(iv1)
      acd25(24)=spvae1k4(iv3)
      acd25(25)=spvae1k4(iv2)
      acd25(26)=spvae1k4(iv1)
      acd25(27)=acd25(14)*acd25(17)
      acd25(28)=acd25(12)*acd25(19)
      acd25(27)=acd25(28)+acd25(27)
      acd25(27)=acd25(24)*acd25(27)
      acd25(28)=-acd25(13)*acd25(16)
      acd25(29)=-acd25(11)*acd25(18)
      acd25(28)=acd25(29)+acd25(28)
      acd25(28)=acd25(20)*acd25(28)
      acd25(29)=acd25(17)*acd25(25)
      acd25(30)=acd25(12)*acd25(26)
      acd25(29)=acd25(29)+acd25(30)
      acd25(29)=acd25(8)*acd25(29)
      acd25(30)=-acd25(16)*acd25(22)
      acd25(31)=-acd25(11)*acd25(23)
      acd25(30)=acd25(30)+acd25(31)
      acd25(30)=acd25(6)*acd25(30)
      acd25(31)=acd25(19)*acd25(25)
      acd25(32)=acd25(14)*acd25(26)
      acd25(31)=acd25(31)+acd25(32)
      acd25(31)=acd25(4)*acd25(31)
      acd25(32)=-acd25(18)*acd25(22)
      acd25(33)=-acd25(13)*acd25(23)
      acd25(32)=acd25(32)+acd25(33)
      acd25(32)=acd25(2)*acd25(32)
      acd25(27)=acd25(32)+acd25(31)+acd25(30)+acd25(29)+acd25(28)+acd25(27)
      acd25(27)=acd25(21)*acd25(27)
      acd25(28)=acd25(9)*acd25(19)
      acd25(29)=acd25(7)*acd25(18)
      acd25(30)=acd25(5)*acd25(17)
      acd25(31)=acd25(3)*acd25(16)
      acd25(28)=acd25(31)+acd25(30)+acd25(28)+acd25(29)
      acd25(28)=acd25(15)*acd25(28)
      acd25(29)=acd25(9)*acd25(14)
      acd25(30)=acd25(7)*acd25(13)
      acd25(31)=acd25(5)*acd25(12)
      acd25(32)=acd25(3)*acd25(11)
      acd25(29)=acd25(32)+acd25(31)+acd25(29)+acd25(30)
      acd25(29)=acd25(10)*acd25(29)
      acd25(30)=acd25(8)*acd25(9)
      acd25(31)=acd25(6)*acd25(7)
      acd25(32)=acd25(4)*acd25(5)
      acd25(33)=acd25(2)*acd25(3)
      acd25(30)=acd25(33)+acd25(32)+acd25(30)+acd25(31)
      acd25(30)=acd25(1)*acd25(30)
      acd25(28)=acd25(30)+acd25(28)+acd25(29)
      brack=acd25(27)+2.0_ki*acd25(28)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd25h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd25
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd25h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d25:
   subroutine     reconstruct_d25(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_25:
      coeffs%coeffs_25%c0 = derivative(czip)
      coeffs%coeffs_25%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_25%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_25%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_25%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_25%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_25%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_25%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_25%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_25%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_25%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_25%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_25%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_25%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_25%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_25%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_25%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_25%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_25%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_25%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_25%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_25%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_25%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_25%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_25%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_25%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_25%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_25%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_25%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_25%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_25%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_25%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_25%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_25%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_25%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_25%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_25%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_25%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_25%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_25%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_25%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_25%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_25%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_25%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_25%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_25%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_25%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_25%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_25%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_25%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_25%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_25%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_25%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_25%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_25%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_25%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_25%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_25%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_25%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_25%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_25%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_25%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_25%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_25%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_25%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_25%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_25%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_25%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_25%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_25%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_25:
   end subroutine reconstruct_d25
!---#] subroutine reconstruct_d25:
end module     p0_gg_hepem_d25h0l1d
