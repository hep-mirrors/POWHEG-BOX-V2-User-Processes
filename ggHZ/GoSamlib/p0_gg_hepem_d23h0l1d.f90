module     p0_gg_hepem_d23h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d23h0l1d.f90
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
   public :: derivative , reconstruct_d23
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(71) :: acd23
      complex(ki) :: brack
      acd23(1)=dotproduct(qshift,qshift)
      acd23(2)=dotproduct(qshift,spvae2k4)
      acd23(3)=abb23(35)
      acd23(4)=dotproduct(qshift,spvak5e2)
      acd23(5)=abb23(39)
      acd23(6)=dotproduct(qshift,spvae1e2)
      acd23(7)=abb23(31)
      acd23(8)=dotproduct(qshift,spvae2e1)
      acd23(9)=abb23(36)
      acd23(10)=abb23(24)
      acd23(11)=dotproduct(qshift,spvak5e1)
      acd23(12)=abb23(13)
      acd23(13)=abb23(11)
      acd23(14)=dotproduct(qshift,spvak5k1)
      acd23(15)=abb23(29)
      acd23(16)=dotproduct(qshift,spvae1k1)
      acd23(17)=abb23(25)
      acd23(18)=dotproduct(qshift,spvae1k2)
      acd23(19)=abb23(6)
      acd23(20)=dotproduct(qshift,spvae1l3)
      acd23(21)=abb23(41)
      acd23(22)=abb23(28)
      acd23(23)=dotproduct(qshift,spvae1k4)
      acd23(24)=abb23(9)
      acd23(25)=dotproduct(qshift,spvak1k4)
      acd23(26)=abb23(38)
      acd23(27)=dotproduct(qshift,spvak1e1)
      acd23(28)=abb23(21)
      acd23(29)=dotproduct(qshift,spvak2e1)
      acd23(30)=abb23(7)
      acd23(31)=dotproduct(qshift,spval3e1)
      acd23(32)=abb23(43)
      acd23(33)=abb23(19)
      acd23(34)=abb23(37)
      acd23(35)=abb23(20)
      acd23(36)=abb23(30)
      acd23(37)=abb23(40)
      acd23(38)=abb23(16)
      acd23(39)=abb23(12)
      acd23(40)=abb23(33)
      acd23(41)=abb23(34)
      acd23(42)=abb23(44)
      acd23(43)=abb23(18)
      acd23(44)=abb23(14)
      acd23(45)=abb23(5)
      acd23(46)=abb23(23)
      acd23(47)=abb23(27)
      acd23(48)=abb23(22)
      acd23(49)=abb23(26)
      acd23(50)=abb23(45)
      acd23(51)=abb23(32)
      acd23(52)=abb23(42)
      acd23(53)=abb23(17)
      acd23(54)=abb23(8)
      acd23(55)=abb23(15)
      acd23(56)=abb23(10)
      acd23(57)=acd23(23)*acd23(44)
      acd23(58)=acd23(20)*acd23(43)
      acd23(59)=acd23(18)*acd23(42)
      acd23(60)=acd23(16)*acd23(41)
      acd23(61)=acd23(14)*acd23(40)
      acd23(62)=-acd23(1)*acd23(9)
      acd23(63)=-acd23(23)*acd23(12)
      acd23(63)=acd23(24)+acd23(63)
      acd23(63)=acd23(4)*acd23(63)
      acd23(57)=acd23(63)+acd23(62)+acd23(61)+acd23(60)+acd23(59)+acd23(58)-acd&
      &23(45)+acd23(57)
      acd23(57)=acd23(8)*acd23(57)
      acd23(58)=acd23(31)*acd23(37)
      acd23(59)=acd23(29)*acd23(36)
      acd23(60)=acd23(27)*acd23(35)
      acd23(61)=acd23(25)*acd23(34)
      acd23(62)=acd23(11)*acd23(38)
      acd23(63)=-acd23(1)*acd23(7)
      acd23(64)=acd23(11)*acd23(12)
      acd23(64)=acd23(13)+acd23(64)
      acd23(64)=acd23(2)*acd23(64)
      acd23(58)=acd23(64)+acd23(63)+acd23(62)+acd23(61)+acd23(60)+acd23(59)-acd&
      &23(39)+acd23(58)
      acd23(58)=acd23(6)*acd23(58)
      acd23(59)=acd23(31)*acd23(32)
      acd23(60)=acd23(29)*acd23(30)
      acd23(61)=acd23(27)*acd23(28)
      acd23(62)=-acd23(25)*acd23(26)
      acd23(63)=-acd23(1)*acd23(5)
      acd23(59)=acd23(63)+acd23(62)+acd23(61)+acd23(60)-acd23(33)+acd23(59)
      acd23(59)=acd23(4)*acd23(59)
      acd23(60)=-acd23(20)*acd23(21)
      acd23(61)=acd23(18)*acd23(19)
      acd23(62)=acd23(16)*acd23(17)
      acd23(63)=acd23(14)*acd23(15)
      acd23(64)=-acd23(1)*acd23(3)
      acd23(60)=acd23(64)+acd23(63)+acd23(62)+acd23(61)-acd23(22)+acd23(60)
      acd23(60)=acd23(2)*acd23(60)
      acd23(61)=-acd23(31)*acd23(52)
      acd23(62)=-acd23(29)*acd23(50)
      acd23(63)=-acd23(27)*acd23(48)
      acd23(64)=-acd23(25)*acd23(46)
      acd23(65)=-acd23(23)*acd23(54)
      acd23(66)=-acd23(20)*acd23(53)
      acd23(67)=-acd23(18)*acd23(51)
      acd23(68)=-acd23(16)*acd23(49)
      acd23(69)=acd23(14)*acd23(47)
      acd23(70)=-acd23(11)*acd23(55)
      acd23(71)=acd23(1)*acd23(10)
      brack=acd23(56)+acd23(57)+acd23(58)+acd23(59)+acd23(60)+acd23(61)+acd23(6&
      &2)+acd23(63)+acd23(64)+acd23(65)+acd23(66)+acd23(67)+acd23(68)+acd23(69)&
      &+acd23(70)+acd23(71)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(89) :: acd23
      complex(ki) :: brack
      acd23(1)=qshift(iv1)
      acd23(2)=dotproduct(qshift,spvae2k4)
      acd23(3)=abb23(35)
      acd23(4)=dotproduct(qshift,spvak5e2)
      acd23(5)=abb23(39)
      acd23(6)=dotproduct(qshift,spvae1e2)
      acd23(7)=abb23(31)
      acd23(8)=dotproduct(qshift,spvae2e1)
      acd23(9)=abb23(36)
      acd23(10)=abb23(24)
      acd23(11)=spvae2k4(iv1)
      acd23(12)=dotproduct(qshift,qshift)
      acd23(13)=dotproduct(qshift,spvak5e1)
      acd23(14)=abb23(13)
      acd23(15)=abb23(11)
      acd23(16)=dotproduct(qshift,spvak5k1)
      acd23(17)=abb23(29)
      acd23(18)=dotproduct(qshift,spvae1k1)
      acd23(19)=abb23(25)
      acd23(20)=dotproduct(qshift,spvae1k2)
      acd23(21)=abb23(6)
      acd23(22)=dotproduct(qshift,spvae1l3)
      acd23(23)=abb23(41)
      acd23(24)=abb23(28)
      acd23(25)=spvak5e2(iv1)
      acd23(26)=dotproduct(qshift,spvae1k4)
      acd23(27)=abb23(9)
      acd23(28)=dotproduct(qshift,spvak1k4)
      acd23(29)=abb23(38)
      acd23(30)=dotproduct(qshift,spvak1e1)
      acd23(31)=abb23(21)
      acd23(32)=dotproduct(qshift,spvak2e1)
      acd23(33)=abb23(7)
      acd23(34)=dotproduct(qshift,spval3e1)
      acd23(35)=abb23(43)
      acd23(36)=abb23(19)
      acd23(37)=spvae1e2(iv1)
      acd23(38)=abb23(37)
      acd23(39)=abb23(20)
      acd23(40)=abb23(30)
      acd23(41)=abb23(40)
      acd23(42)=abb23(16)
      acd23(43)=abb23(12)
      acd23(44)=spvae2e1(iv1)
      acd23(45)=abb23(33)
      acd23(46)=abb23(34)
      acd23(47)=abb23(44)
      acd23(48)=abb23(18)
      acd23(49)=abb23(14)
      acd23(50)=abb23(5)
      acd23(51)=spvak1k4(iv1)
      acd23(52)=abb23(23)
      acd23(53)=spvak5k1(iv1)
      acd23(54)=abb23(27)
      acd23(55)=spvak1e1(iv1)
      acd23(56)=abb23(22)
      acd23(57)=spvae1k1(iv1)
      acd23(58)=abb23(26)
      acd23(59)=spvak2e1(iv1)
      acd23(60)=abb23(45)
      acd23(61)=spvae1k2(iv1)
      acd23(62)=abb23(32)
      acd23(63)=spval3e1(iv1)
      acd23(64)=abb23(42)
      acd23(65)=spvae1l3(iv1)
      acd23(66)=abb23(17)
      acd23(67)=spvae1k4(iv1)
      acd23(68)=abb23(8)
      acd23(69)=spvak5e1(iv1)
      acd23(70)=abb23(15)
      acd23(71)=-acd23(22)*acd23(48)
      acd23(72)=-acd23(20)*acd23(47)
      acd23(73)=-acd23(18)*acd23(46)
      acd23(74)=-acd23(16)*acd23(45)
      acd23(75)=-acd23(26)*acd23(49)
      acd23(76)=acd23(12)*acd23(9)
      acd23(77)=acd23(14)*acd23(26)
      acd23(77)=acd23(77)-acd23(27)
      acd23(78)=acd23(4)*acd23(77)
      acd23(71)=acd23(78)+acd23(76)+acd23(75)+acd23(74)+acd23(73)+acd23(72)+acd&
      &23(50)+acd23(71)
      acd23(71)=acd23(44)*acd23(71)
      acd23(72)=-acd23(34)*acd23(41)
      acd23(73)=-acd23(32)*acd23(40)
      acd23(74)=-acd23(30)*acd23(39)
      acd23(75)=-acd23(28)*acd23(38)
      acd23(76)=-acd23(13)*acd23(42)
      acd23(78)=acd23(12)*acd23(7)
      acd23(79)=acd23(14)*acd23(13)
      acd23(79)=acd23(79)+acd23(15)
      acd23(80)=-acd23(2)*acd23(79)
      acd23(72)=acd23(80)+acd23(78)+acd23(76)+acd23(75)+acd23(74)+acd23(73)+acd&
      &23(43)+acd23(72)
      acd23(72)=acd23(37)*acd23(72)
      acd23(73)=acd23(4)*acd23(14)
      acd23(73)=acd23(73)-acd23(49)
      acd23(73)=acd23(67)*acd23(73)
      acd23(74)=-acd23(65)*acd23(48)
      acd23(75)=-acd23(61)*acd23(47)
      acd23(76)=-acd23(57)*acd23(46)
      acd23(78)=-acd23(53)*acd23(45)
      acd23(80)=2.0_ki*acd23(1)
      acd23(81)=acd23(9)*acd23(80)
      acd23(77)=acd23(25)*acd23(77)
      acd23(73)=acd23(77)+acd23(81)+acd23(78)+acd23(76)+acd23(75)+acd23(74)+acd&
      &23(73)
      acd23(73)=acd23(8)*acd23(73)
      acd23(74)=-acd23(2)*acd23(14)
      acd23(74)=acd23(74)-acd23(42)
      acd23(74)=acd23(69)*acd23(74)
      acd23(75)=-acd23(63)*acd23(41)
      acd23(76)=-acd23(59)*acd23(40)
      acd23(77)=-acd23(55)*acd23(39)
      acd23(78)=-acd23(51)*acd23(38)
      acd23(81)=acd23(7)*acd23(80)
      acd23(79)=-acd23(11)*acd23(79)
      acd23(74)=acd23(79)+acd23(81)+acd23(78)+acd23(77)+acd23(76)+acd23(75)+acd&
      &23(74)
      acd23(74)=acd23(6)*acd23(74)
      acd23(75)=-acd23(34)*acd23(35)
      acd23(76)=-acd23(32)*acd23(33)
      acd23(77)=-acd23(30)*acd23(31)
      acd23(78)=acd23(28)*acd23(29)
      acd23(79)=acd23(12)*acd23(5)
      acd23(75)=acd23(79)+acd23(78)+acd23(77)+acd23(76)+acd23(36)+acd23(75)
      acd23(75)=acd23(25)*acd23(75)
      acd23(76)=acd23(22)*acd23(23)
      acd23(77)=-acd23(20)*acd23(21)
      acd23(78)=-acd23(18)*acd23(19)
      acd23(79)=-acd23(16)*acd23(17)
      acd23(81)=acd23(12)*acd23(3)
      acd23(76)=acd23(81)+acd23(79)+acd23(78)+acd23(77)+acd23(24)+acd23(76)
      acd23(76)=acd23(11)*acd23(76)
      acd23(77)=-acd23(63)*acd23(35)
      acd23(78)=-acd23(59)*acd23(33)
      acd23(79)=-acd23(55)*acd23(31)
      acd23(81)=acd23(51)*acd23(29)
      acd23(82)=acd23(5)*acd23(80)
      acd23(77)=acd23(82)+acd23(81)+acd23(79)+acd23(77)+acd23(78)
      acd23(77)=acd23(4)*acd23(77)
      acd23(78)=acd23(65)*acd23(23)
      acd23(79)=-acd23(61)*acd23(21)
      acd23(81)=-acd23(57)*acd23(19)
      acd23(82)=-acd23(53)*acd23(17)
      acd23(83)=acd23(3)*acd23(80)
      acd23(78)=acd23(83)+acd23(82)+acd23(81)+acd23(78)+acd23(79)
      acd23(78)=acd23(2)*acd23(78)
      acd23(79)=acd23(69)*acd23(70)
      acd23(81)=acd23(67)*acd23(68)
      acd23(82)=acd23(65)*acd23(66)
      acd23(83)=acd23(63)*acd23(64)
      acd23(84)=acd23(61)*acd23(62)
      acd23(85)=acd23(59)*acd23(60)
      acd23(86)=acd23(57)*acd23(58)
      acd23(87)=acd23(55)*acd23(56)
      acd23(88)=-acd23(53)*acd23(54)
      acd23(89)=acd23(51)*acd23(52)
      acd23(80)=-acd23(10)*acd23(80)
      brack=acd23(71)+acd23(72)+acd23(73)+acd23(74)+acd23(75)+acd23(76)+acd23(7&
      &7)+acd23(78)+acd23(79)+acd23(80)+acd23(81)+acd23(82)+acd23(83)+acd23(84)&
      &+acd23(85)+acd23(86)+acd23(87)+acd23(88)+acd23(89)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=dotproduct(qshift,spvae2k4)
      acd23(3)=abb23(35)
      acd23(4)=dotproduct(qshift,spvak5e2)
      acd23(5)=abb23(39)
      acd23(6)=dotproduct(qshift,spvae1e2)
      acd23(7)=abb23(31)
      acd23(8)=dotproduct(qshift,spvae2e1)
      acd23(9)=abb23(36)
      acd23(10)=abb23(24)
      acd23(11)=qshift(iv1)
      acd23(12)=spvae2k4(iv2)
      acd23(13)=spvak5e2(iv2)
      acd23(14)=spvae1e2(iv2)
      acd23(15)=spvae2e1(iv2)
      acd23(16)=qshift(iv2)
      acd23(17)=spvae2k4(iv1)
      acd23(18)=spvak5e2(iv1)
      acd23(19)=spvae1e2(iv1)
      acd23(20)=spvae2e1(iv1)
      acd23(21)=dotproduct(qshift,spvak5e1)
      acd23(22)=abb23(13)
      acd23(23)=abb23(11)
      acd23(24)=spvak5k1(iv2)
      acd23(25)=abb23(29)
      acd23(26)=spvae1k1(iv2)
      acd23(27)=abb23(25)
      acd23(28)=spvae1k2(iv2)
      acd23(29)=abb23(6)
      acd23(30)=spvae1l3(iv2)
      acd23(31)=abb23(41)
      acd23(32)=spvak5e1(iv2)
      acd23(33)=spvak5k1(iv1)
      acd23(34)=spvae1k1(iv1)
      acd23(35)=spvae1k2(iv1)
      acd23(36)=spvae1l3(iv1)
      acd23(37)=spvak5e1(iv1)
      acd23(38)=dotproduct(qshift,spvae1k4)
      acd23(39)=abb23(9)
      acd23(40)=spvak1k4(iv2)
      acd23(41)=abb23(38)
      acd23(42)=spvak1e1(iv2)
      acd23(43)=abb23(21)
      acd23(44)=spvak2e1(iv2)
      acd23(45)=abb23(7)
      acd23(46)=spval3e1(iv2)
      acd23(47)=abb23(43)
      acd23(48)=spvae1k4(iv2)
      acd23(49)=spvak1k4(iv1)
      acd23(50)=spvak1e1(iv1)
      acd23(51)=spvak2e1(iv1)
      acd23(52)=spval3e1(iv1)
      acd23(53)=spvae1k4(iv1)
      acd23(54)=abb23(37)
      acd23(55)=abb23(20)
      acd23(56)=abb23(30)
      acd23(57)=abb23(40)
      acd23(58)=abb23(16)
      acd23(59)=abb23(33)
      acd23(60)=abb23(34)
      acd23(61)=abb23(44)
      acd23(62)=abb23(18)
      acd23(63)=abb23(14)
      acd23(64)=acd23(30)*acd23(62)
      acd23(65)=acd23(28)*acd23(61)
      acd23(66)=acd23(26)*acd23(60)
      acd23(67)=acd23(24)*acd23(59)
      acd23(68)=acd23(48)*acd23(63)
      acd23(69)=2.0_ki*acd23(16)
      acd23(70)=-acd23(9)*acd23(69)
      acd23(71)=acd23(13)*acd23(39)
      acd23(64)=acd23(71)+acd23(70)+acd23(68)+acd23(67)+acd23(66)+acd23(64)+acd&
      &23(65)
      acd23(64)=acd23(20)*acd23(64)
      acd23(65)=acd23(46)*acd23(57)
      acd23(66)=acd23(44)*acd23(56)
      acd23(67)=acd23(42)*acd23(55)
      acd23(68)=acd23(40)*acd23(54)
      acd23(70)=acd23(32)*acd23(58)
      acd23(71)=-acd23(7)*acd23(69)
      acd23(72)=acd23(12)*acd23(23)
      acd23(65)=acd23(72)+acd23(71)+acd23(70)+acd23(68)+acd23(67)+acd23(65)+acd&
      &23(66)
      acd23(65)=acd23(19)*acd23(65)
      acd23(66)=acd23(36)*acd23(62)
      acd23(67)=acd23(35)*acd23(61)
      acd23(68)=acd23(34)*acd23(60)
      acd23(70)=acd23(33)*acd23(59)
      acd23(71)=acd23(53)*acd23(63)
      acd23(72)=2.0_ki*acd23(11)
      acd23(73)=-acd23(9)*acd23(72)
      acd23(74)=acd23(18)*acd23(39)
      acd23(66)=acd23(74)+acd23(73)+acd23(71)+acd23(70)+acd23(68)+acd23(66)+acd&
      &23(67)
      acd23(66)=acd23(15)*acd23(66)
      acd23(67)=acd23(52)*acd23(57)
      acd23(68)=acd23(51)*acd23(56)
      acd23(70)=acd23(50)*acd23(55)
      acd23(71)=acd23(49)*acd23(54)
      acd23(73)=acd23(37)*acd23(58)
      acd23(74)=-acd23(7)*acd23(72)
      acd23(75)=acd23(17)*acd23(23)
      acd23(67)=acd23(75)+acd23(74)+acd23(73)+acd23(71)+acd23(70)+acd23(67)+acd&
      &23(68)
      acd23(67)=acd23(14)*acd23(67)
      acd23(68)=-acd23(18)*acd23(48)
      acd23(70)=-acd23(13)*acd23(53)
      acd23(68)=acd23(70)+acd23(68)
      acd23(68)=acd23(8)*acd23(68)
      acd23(70)=acd23(17)*acd23(32)
      acd23(71)=acd23(12)*acd23(37)
      acd23(70)=acd23(71)+acd23(70)
      acd23(70)=acd23(6)*acd23(70)
      acd23(71)=-acd23(4)*acd23(48)
      acd23(73)=-acd23(13)*acd23(38)
      acd23(71)=acd23(71)+acd23(73)
      acd23(71)=acd23(20)*acd23(71)
      acd23(73)=acd23(2)*acd23(32)
      acd23(74)=acd23(12)*acd23(21)
      acd23(73)=acd23(73)+acd23(74)
      acd23(73)=acd23(19)*acd23(73)
      acd23(74)=-acd23(4)*acd23(53)
      acd23(75)=-acd23(18)*acd23(38)
      acd23(74)=acd23(74)+acd23(75)
      acd23(74)=acd23(15)*acd23(74)
      acd23(75)=acd23(2)*acd23(37)
      acd23(76)=acd23(17)*acd23(21)
      acd23(75)=acd23(75)+acd23(76)
      acd23(75)=acd23(14)*acd23(75)
      acd23(68)=acd23(75)+acd23(74)+acd23(73)+acd23(71)+acd23(70)+acd23(68)
      acd23(68)=acd23(22)*acd23(68)
      acd23(70)=acd23(46)*acd23(47)
      acd23(71)=acd23(44)*acd23(45)
      acd23(73)=acd23(42)*acd23(43)
      acd23(74)=-acd23(40)*acd23(41)
      acd23(75)=-acd23(5)*acd23(69)
      acd23(70)=acd23(75)+acd23(74)+acd23(73)+acd23(70)+acd23(71)
      acd23(70)=acd23(18)*acd23(70)
      acd23(71)=-acd23(30)*acd23(31)
      acd23(73)=acd23(28)*acd23(29)
      acd23(74)=acd23(26)*acd23(27)
      acd23(75)=acd23(24)*acd23(25)
      acd23(69)=-acd23(3)*acd23(69)
      acd23(69)=acd23(69)+acd23(75)+acd23(74)+acd23(71)+acd23(73)
      acd23(69)=acd23(17)*acd23(69)
      acd23(71)=acd23(47)*acd23(52)
      acd23(73)=acd23(45)*acd23(51)
      acd23(74)=acd23(43)*acd23(50)
      acd23(75)=-acd23(41)*acd23(49)
      acd23(76)=-acd23(5)*acd23(72)
      acd23(71)=acd23(76)+acd23(75)+acd23(74)+acd23(71)+acd23(73)
      acd23(71)=acd23(13)*acd23(71)
      acd23(73)=-acd23(31)*acd23(36)
      acd23(74)=acd23(29)*acd23(35)
      acd23(75)=acd23(27)*acd23(34)
      acd23(76)=acd23(25)*acd23(33)
      acd23(72)=-acd23(3)*acd23(72)
      acd23(72)=acd23(72)+acd23(76)+acd23(75)+acd23(73)+acd23(74)
      acd23(72)=acd23(12)*acd23(72)
      acd23(73)=-acd23(8)*acd23(9)
      acd23(74)=-acd23(6)*acd23(7)
      acd23(75)=-acd23(4)*acd23(5)
      acd23(76)=-acd23(2)*acd23(3)
      acd23(73)=acd23(76)+acd23(75)+acd23(74)+acd23(10)+acd23(73)
      acd23(73)=acd23(1)*acd23(73)
      brack=acd23(64)+acd23(65)+acd23(66)+acd23(67)+acd23(68)+acd23(69)+acd23(7&
      &0)+acd23(71)+acd23(72)+2.0_ki*acd23(73)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=spvae2k4(iv3)
      acd23(3)=abb23(35)
      acd23(4)=spvak5e2(iv3)
      acd23(5)=abb23(39)
      acd23(6)=spvae1e2(iv3)
      acd23(7)=abb23(31)
      acd23(8)=spvae2e1(iv3)
      acd23(9)=abb23(36)
      acd23(10)=d(iv1,iv3)
      acd23(11)=spvae2k4(iv2)
      acd23(12)=spvak5e2(iv2)
      acd23(13)=spvae1e2(iv2)
      acd23(14)=spvae2e1(iv2)
      acd23(15)=d(iv2,iv3)
      acd23(16)=spvae2k4(iv1)
      acd23(17)=spvak5e2(iv1)
      acd23(18)=spvae1e2(iv1)
      acd23(19)=spvae2e1(iv1)
      acd23(20)=spvak5e1(iv3)
      acd23(21)=abb23(13)
      acd23(22)=spvak5e1(iv2)
      acd23(23)=spvak5e1(iv1)
      acd23(24)=spvae1k4(iv3)
      acd23(25)=spvae1k4(iv2)
      acd23(26)=spvae1k4(iv1)
      acd23(27)=acd23(14)*acd23(17)
      acd23(28)=acd23(12)*acd23(19)
      acd23(27)=acd23(28)+acd23(27)
      acd23(27)=acd23(24)*acd23(27)
      acd23(28)=-acd23(13)*acd23(16)
      acd23(29)=-acd23(11)*acd23(18)
      acd23(28)=acd23(29)+acd23(28)
      acd23(28)=acd23(20)*acd23(28)
      acd23(29)=acd23(17)*acd23(25)
      acd23(30)=acd23(12)*acd23(26)
      acd23(29)=acd23(29)+acd23(30)
      acd23(29)=acd23(8)*acd23(29)
      acd23(30)=-acd23(16)*acd23(22)
      acd23(31)=-acd23(11)*acd23(23)
      acd23(30)=acd23(30)+acd23(31)
      acd23(30)=acd23(6)*acd23(30)
      acd23(31)=acd23(19)*acd23(25)
      acd23(32)=acd23(14)*acd23(26)
      acd23(31)=acd23(31)+acd23(32)
      acd23(31)=acd23(4)*acd23(31)
      acd23(32)=-acd23(18)*acd23(22)
      acd23(33)=-acd23(13)*acd23(23)
      acd23(32)=acd23(32)+acd23(33)
      acd23(32)=acd23(2)*acd23(32)
      acd23(27)=acd23(32)+acd23(31)+acd23(30)+acd23(29)+acd23(28)+acd23(27)
      acd23(27)=acd23(21)*acd23(27)
      acd23(28)=acd23(9)*acd23(19)
      acd23(29)=acd23(7)*acd23(18)
      acd23(30)=acd23(5)*acd23(17)
      acd23(31)=acd23(3)*acd23(16)
      acd23(28)=acd23(31)+acd23(30)+acd23(28)+acd23(29)
      acd23(28)=acd23(15)*acd23(28)
      acd23(29)=acd23(9)*acd23(14)
      acd23(30)=acd23(7)*acd23(13)
      acd23(31)=acd23(5)*acd23(12)
      acd23(32)=acd23(3)*acd23(11)
      acd23(29)=acd23(32)+acd23(31)+acd23(29)+acd23(30)
      acd23(29)=acd23(10)*acd23(29)
      acd23(30)=acd23(8)*acd23(9)
      acd23(31)=acd23(6)*acd23(7)
      acd23(32)=acd23(4)*acd23(5)
      acd23(33)=acd23(2)*acd23(3)
      acd23(30)=acd23(33)+acd23(32)+acd23(30)+acd23(31)
      acd23(30)=acd23(1)*acd23(30)
      acd23(28)=acd23(30)+acd23(28)+acd23(29)
      brack=acd23(27)+2.0_ki*acd23(28)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd23
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd23h0
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
!---#[ subroutine reconstruct_d23:
   subroutine     reconstruct_d23(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group5
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group5), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_23:
      coeffs%coeffs_23%c0 = derivative(czip)
      coeffs%coeffs_23%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_23%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_23%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_23%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_23%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_23%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_23%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_23%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_23%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_23%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_23%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_23%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_23%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_23%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_23%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_23%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_23%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_23%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_23%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_23%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_23%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_23%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_23%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_23%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_23%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_23%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_23%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_23%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_23%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_23%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_23%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_23%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_23%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_23%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_23%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_23%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_23%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_23%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_23%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_23%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_23%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_23%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_23%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_23%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_23%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_23%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_23%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_23%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_23%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_23%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_23%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_23%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_23%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_23%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_23%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_23%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_23%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_23%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_23%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_23%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_23%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_23%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_23%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_23%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_23%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_23%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_23%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_23%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_23%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_23:
   end subroutine reconstruct_d23
!---#] subroutine reconstruct_d23:
end module     p0_gg_hepem_d23h0l1d
