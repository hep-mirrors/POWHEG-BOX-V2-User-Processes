module     p0_gg_hepem_d35h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d35h0l1d.f90
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
   public :: derivative , reconstruct_d35
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd35h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd35
      complex(ki) :: brack
      acd35(1)=dotproduct(qshift,qshift)
      acd35(2)=dotproduct(qshift,spvae1k4)
      acd35(3)=abb35(22)
      acd35(4)=dotproduct(qshift,spvak5e1)
      acd35(5)=abb35(27)
      acd35(6)=dotproduct(qshift,spvae1e2)
      acd35(7)=abb35(34)
      acd35(8)=dotproduct(qshift,spvae2e1)
      acd35(9)=abb35(33)
      acd35(10)=abb35(16)
      acd35(11)=dotproduct(qshift,spvak5e2)
      acd35(12)=abb35(29)
      acd35(13)=abb35(13)
      acd35(14)=dotproduct(qshift,spvak5k2)
      acd35(15)=abb35(19)
      acd35(16)=dotproduct(qshift,spvae2k2)
      acd35(17)=abb35(39)
      acd35(18)=dotproduct(qshift,spvae2l3)
      acd35(19)=abb35(38)
      acd35(20)=abb35(7)
      acd35(21)=dotproduct(qshift,spvae2k4)
      acd35(22)=abb35(9)
      acd35(23)=dotproduct(qshift,spvak2k4)
      acd35(24)=abb35(24)
      acd35(25)=dotproduct(qshift,spvak2e2)
      acd35(26)=abb35(14)
      acd35(27)=dotproduct(qshift,spval3e2)
      acd35(28)=abb35(36)
      acd35(29)=abb35(11)
      acd35(30)=abb35(30)
      acd35(31)=abb35(28)
      acd35(32)=abb35(31)
      acd35(33)=abb35(37)
      acd35(34)=abb35(6)
      acd35(35)=abb35(32)
      acd35(36)=abb35(5)
      acd35(37)=abb35(18)
      acd35(38)=abb35(35)
      acd35(39)=abb35(23)
      acd35(40)=abb35(25)
      acd35(41)=abb35(20)
      acd35(42)=abb35(15)
      acd35(43)=abb35(17)
      acd35(44)=abb35(26)
      acd35(45)=abb35(21)
      acd35(46)=abb35(12)
      acd35(47)=abb35(8)
      acd35(48)=abb35(10)
      acd35(49)=acd35(27)*acd35(37)
      acd35(50)=acd35(25)*acd35(36)
      acd35(51)=acd35(23)*acd35(35)
      acd35(52)=acd35(11)*acd35(38)
      acd35(53)=-acd35(1)*acd35(9)
      acd35(54)=acd35(11)*acd35(12)
      acd35(54)=acd35(13)+acd35(54)
      acd35(54)=acd35(2)*acd35(54)
      acd35(49)=acd35(54)+acd35(53)+acd35(52)+acd35(51)+acd35(50)-acd35(39)+acd&
      &35(49)
      acd35(49)=acd35(8)*acd35(49)
      acd35(50)=acd35(21)*acd35(33)
      acd35(51)=acd35(18)*acd35(32)
      acd35(52)=acd35(16)*acd35(31)
      acd35(53)=acd35(14)*acd35(30)
      acd35(54)=-acd35(1)*acd35(7)
      acd35(55)=-acd35(21)*acd35(12)
      acd35(55)=-acd35(22)+acd35(55)
      acd35(55)=acd35(4)*acd35(55)
      acd35(50)=acd35(55)+acd35(54)+acd35(53)+acd35(52)+acd35(51)-acd35(34)+acd&
      &35(50)
      acd35(50)=acd35(6)*acd35(50)
      acd35(51)=-acd35(27)*acd35(28)
      acd35(52)=-acd35(25)*acd35(26)
      acd35(53)=acd35(23)*acd35(24)
      acd35(54)=-acd35(1)*acd35(5)
      acd35(51)=acd35(54)+acd35(53)+acd35(52)-acd35(29)+acd35(51)
      acd35(51)=acd35(4)*acd35(51)
      acd35(52)=acd35(18)*acd35(19)
      acd35(53)=acd35(16)*acd35(17)
      acd35(54)=-acd35(14)*acd35(15)
      acd35(55)=-acd35(1)*acd35(3)
      acd35(52)=acd35(55)+acd35(54)+acd35(53)-acd35(20)+acd35(52)
      acd35(52)=acd35(2)*acd35(52)
      acd35(53)=-acd35(27)*acd35(44)
      acd35(54)=-acd35(25)*acd35(42)
      acd35(55)=acd35(23)*acd35(40)
      acd35(56)=-acd35(21)*acd35(47)
      acd35(57)=acd35(18)*acd35(45)
      acd35(58)=-acd35(16)*acd35(43)
      acd35(59)=-acd35(14)*acd35(41)
      acd35(60)=-acd35(11)*acd35(46)
      acd35(61)=acd35(1)*acd35(10)
      brack=acd35(48)+acd35(49)+acd35(50)+acd35(51)+acd35(52)+acd35(53)+acd35(5&
      &4)+acd35(55)+acd35(56)+acd35(57)+acd35(58)+acd35(59)+acd35(60)+acd35(61)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd35h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd35
      complex(ki) :: brack
      acd35(1)=qshift(iv1)
      acd35(2)=dotproduct(qshift,spvae1k4)
      acd35(3)=abb35(22)
      acd35(4)=dotproduct(qshift,spvak5e1)
      acd35(5)=abb35(27)
      acd35(6)=dotproduct(qshift,spvae1e2)
      acd35(7)=abb35(34)
      acd35(8)=dotproduct(qshift,spvae2e1)
      acd35(9)=abb35(33)
      acd35(10)=abb35(16)
      acd35(11)=spvae1k4(iv1)
      acd35(12)=dotproduct(qshift,qshift)
      acd35(13)=dotproduct(qshift,spvak5e2)
      acd35(14)=abb35(29)
      acd35(15)=abb35(13)
      acd35(16)=dotproduct(qshift,spvak5k2)
      acd35(17)=abb35(19)
      acd35(18)=dotproduct(qshift,spvae2k2)
      acd35(19)=abb35(39)
      acd35(20)=dotproduct(qshift,spvae2l3)
      acd35(21)=abb35(38)
      acd35(22)=abb35(7)
      acd35(23)=spvak5e1(iv1)
      acd35(24)=dotproduct(qshift,spvae2k4)
      acd35(25)=abb35(9)
      acd35(26)=dotproduct(qshift,spvak2k4)
      acd35(27)=abb35(24)
      acd35(28)=dotproduct(qshift,spvak2e2)
      acd35(29)=abb35(14)
      acd35(30)=dotproduct(qshift,spval3e2)
      acd35(31)=abb35(36)
      acd35(32)=abb35(11)
      acd35(33)=spvae1e2(iv1)
      acd35(34)=abb35(30)
      acd35(35)=abb35(28)
      acd35(36)=abb35(31)
      acd35(37)=abb35(37)
      acd35(38)=abb35(6)
      acd35(39)=spvae2e1(iv1)
      acd35(40)=abb35(32)
      acd35(41)=abb35(5)
      acd35(42)=abb35(18)
      acd35(43)=abb35(35)
      acd35(44)=abb35(23)
      acd35(45)=spvak2k4(iv1)
      acd35(46)=abb35(25)
      acd35(47)=spvak5k2(iv1)
      acd35(48)=abb35(20)
      acd35(49)=spvak2e2(iv1)
      acd35(50)=abb35(15)
      acd35(51)=spvae2k2(iv1)
      acd35(52)=abb35(17)
      acd35(53)=spval3e2(iv1)
      acd35(54)=abb35(26)
      acd35(55)=spvae2l3(iv1)
      acd35(56)=abb35(21)
      acd35(57)=spvak5e2(iv1)
      acd35(58)=abb35(12)
      acd35(59)=spvae2k4(iv1)
      acd35(60)=abb35(8)
      acd35(61)=acd35(30)*acd35(42)
      acd35(62)=acd35(28)*acd35(41)
      acd35(63)=acd35(26)*acd35(40)
      acd35(64)=acd35(13)*acd35(43)
      acd35(65)=-acd35(12)*acd35(9)
      acd35(66)=acd35(14)*acd35(13)
      acd35(66)=acd35(66)+acd35(15)
      acd35(67)=acd35(2)*acd35(66)
      acd35(61)=acd35(67)+acd35(65)+acd35(64)+acd35(63)+acd35(62)-acd35(44)+acd&
      &35(61)
      acd35(61)=acd35(39)*acd35(61)
      acd35(62)=acd35(20)*acd35(36)
      acd35(63)=acd35(18)*acd35(35)
      acd35(64)=acd35(16)*acd35(34)
      acd35(65)=acd35(24)*acd35(37)
      acd35(67)=-acd35(12)*acd35(7)
      acd35(68)=acd35(14)*acd35(24)
      acd35(68)=acd35(68)+acd35(25)
      acd35(69)=-acd35(4)*acd35(68)
      acd35(62)=acd35(69)+acd35(67)+acd35(65)+acd35(64)+acd35(63)-acd35(38)+acd&
      &35(62)
      acd35(62)=acd35(33)*acd35(62)
      acd35(63)=acd35(2)*acd35(14)
      acd35(63)=acd35(63)+acd35(43)
      acd35(63)=acd35(57)*acd35(63)
      acd35(64)=acd35(53)*acd35(42)
      acd35(65)=acd35(49)*acd35(41)
      acd35(67)=acd35(45)*acd35(40)
      acd35(69)=2.0_ki*acd35(1)
      acd35(70)=-acd35(9)*acd35(69)
      acd35(66)=acd35(11)*acd35(66)
      acd35(63)=acd35(66)+acd35(70)+acd35(67)+acd35(65)+acd35(64)+acd35(63)
      acd35(63)=acd35(8)*acd35(63)
      acd35(64)=-acd35(4)*acd35(14)
      acd35(64)=acd35(64)+acd35(37)
      acd35(64)=acd35(59)*acd35(64)
      acd35(65)=acd35(55)*acd35(36)
      acd35(66)=acd35(51)*acd35(35)
      acd35(67)=acd35(47)*acd35(34)
      acd35(70)=-acd35(7)*acd35(69)
      acd35(68)=-acd35(23)*acd35(68)
      acd35(64)=acd35(68)+acd35(70)+acd35(67)+acd35(66)+acd35(65)+acd35(64)
      acd35(64)=acd35(6)*acd35(64)
      acd35(65)=-acd35(30)*acd35(31)
      acd35(66)=-acd35(28)*acd35(29)
      acd35(67)=acd35(26)*acd35(27)
      acd35(68)=-acd35(12)*acd35(5)
      acd35(65)=acd35(68)+acd35(67)+acd35(66)-acd35(32)+acd35(65)
      acd35(65)=acd35(23)*acd35(65)
      acd35(66)=acd35(20)*acd35(21)
      acd35(67)=acd35(18)*acd35(19)
      acd35(68)=-acd35(16)*acd35(17)
      acd35(70)=-acd35(12)*acd35(3)
      acd35(66)=acd35(70)+acd35(68)+acd35(67)-acd35(22)+acd35(66)
      acd35(66)=acd35(11)*acd35(66)
      acd35(67)=-acd35(53)*acd35(31)
      acd35(68)=-acd35(49)*acd35(29)
      acd35(70)=acd35(45)*acd35(27)
      acd35(71)=-acd35(5)*acd35(69)
      acd35(67)=acd35(71)+acd35(70)+acd35(67)+acd35(68)
      acd35(67)=acd35(4)*acd35(67)
      acd35(68)=acd35(55)*acd35(21)
      acd35(70)=acd35(51)*acd35(19)
      acd35(71)=-acd35(47)*acd35(17)
      acd35(72)=-acd35(3)*acd35(69)
      acd35(68)=acd35(72)+acd35(71)+acd35(68)+acd35(70)
      acd35(68)=acd35(2)*acd35(68)
      acd35(70)=-acd35(59)*acd35(60)
      acd35(71)=-acd35(57)*acd35(58)
      acd35(72)=acd35(55)*acd35(56)
      acd35(73)=-acd35(53)*acd35(54)
      acd35(74)=-acd35(51)*acd35(52)
      acd35(75)=-acd35(49)*acd35(50)
      acd35(76)=-acd35(47)*acd35(48)
      acd35(77)=acd35(45)*acd35(46)
      acd35(69)=acd35(10)*acd35(69)
      brack=acd35(61)+acd35(62)+acd35(63)+acd35(64)+acd35(65)+acd35(66)+acd35(6&
      &7)+acd35(68)+acd35(69)+acd35(70)+acd35(71)+acd35(72)+acd35(73)+acd35(74)&
      &+acd35(75)+acd35(76)+acd35(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd35h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd35
      complex(ki) :: brack
      acd35(1)=d(iv1,iv2)
      acd35(2)=dotproduct(qshift,spvae1k4)
      acd35(3)=abb35(22)
      acd35(4)=dotproduct(qshift,spvak5e1)
      acd35(5)=abb35(27)
      acd35(6)=dotproduct(qshift,spvae1e2)
      acd35(7)=abb35(34)
      acd35(8)=dotproduct(qshift,spvae2e1)
      acd35(9)=abb35(33)
      acd35(10)=abb35(16)
      acd35(11)=qshift(iv1)
      acd35(12)=spvae1k4(iv2)
      acd35(13)=spvak5e1(iv2)
      acd35(14)=spvae1e2(iv2)
      acd35(15)=spvae2e1(iv2)
      acd35(16)=qshift(iv2)
      acd35(17)=spvae1k4(iv1)
      acd35(18)=spvak5e1(iv1)
      acd35(19)=spvae1e2(iv1)
      acd35(20)=spvae2e1(iv1)
      acd35(21)=dotproduct(qshift,spvak5e2)
      acd35(22)=abb35(29)
      acd35(23)=abb35(13)
      acd35(24)=spvak5k2(iv2)
      acd35(25)=abb35(19)
      acd35(26)=spvae2k2(iv2)
      acd35(27)=abb35(39)
      acd35(28)=spvae2l3(iv2)
      acd35(29)=abb35(38)
      acd35(30)=spvak5e2(iv2)
      acd35(31)=spvak5k2(iv1)
      acd35(32)=spvae2k2(iv1)
      acd35(33)=spvae2l3(iv1)
      acd35(34)=spvak5e2(iv1)
      acd35(35)=dotproduct(qshift,spvae2k4)
      acd35(36)=abb35(9)
      acd35(37)=spvak2k4(iv2)
      acd35(38)=abb35(24)
      acd35(39)=spvak2e2(iv2)
      acd35(40)=abb35(14)
      acd35(41)=spval3e2(iv2)
      acd35(42)=abb35(36)
      acd35(43)=spvae2k4(iv2)
      acd35(44)=spvak2k4(iv1)
      acd35(45)=spvak2e2(iv1)
      acd35(46)=spval3e2(iv1)
      acd35(47)=spvae2k4(iv1)
      acd35(48)=abb35(30)
      acd35(49)=abb35(28)
      acd35(50)=abb35(31)
      acd35(51)=abb35(37)
      acd35(52)=abb35(32)
      acd35(53)=abb35(5)
      acd35(54)=abb35(18)
      acd35(55)=abb35(35)
      acd35(56)=acd35(17)*acd35(30)
      acd35(57)=acd35(12)*acd35(34)
      acd35(56)=acd35(57)+acd35(56)
      acd35(56)=acd35(8)*acd35(56)
      acd35(57)=-acd35(18)*acd35(43)
      acd35(58)=-acd35(13)*acd35(47)
      acd35(57)=acd35(58)+acd35(57)
      acd35(57)=acd35(6)*acd35(57)
      acd35(58)=acd35(2)*acd35(30)
      acd35(59)=acd35(12)*acd35(21)
      acd35(58)=acd35(58)+acd35(59)
      acd35(58)=acd35(20)*acd35(58)
      acd35(59)=-acd35(4)*acd35(43)
      acd35(60)=-acd35(13)*acd35(35)
      acd35(59)=acd35(59)+acd35(60)
      acd35(59)=acd35(19)*acd35(59)
      acd35(60)=acd35(2)*acd35(34)
      acd35(61)=acd35(17)*acd35(21)
      acd35(60)=acd35(60)+acd35(61)
      acd35(60)=acd35(15)*acd35(60)
      acd35(61)=-acd35(4)*acd35(47)
      acd35(62)=-acd35(18)*acd35(35)
      acd35(61)=acd35(61)+acd35(62)
      acd35(61)=acd35(14)*acd35(61)
      acd35(56)=acd35(61)+acd35(60)+acd35(59)+acd35(58)+acd35(57)+acd35(56)
      acd35(56)=acd35(22)*acd35(56)
      acd35(57)=acd35(41)*acd35(54)
      acd35(58)=acd35(39)*acd35(53)
      acd35(59)=acd35(37)*acd35(52)
      acd35(60)=acd35(30)*acd35(55)
      acd35(61)=2.0_ki*acd35(16)
      acd35(62)=-acd35(9)*acd35(61)
      acd35(63)=acd35(12)*acd35(23)
      acd35(57)=acd35(63)+acd35(62)+acd35(60)+acd35(59)+acd35(57)+acd35(58)
      acd35(57)=acd35(20)*acd35(57)
      acd35(58)=acd35(28)*acd35(50)
      acd35(59)=acd35(26)*acd35(49)
      acd35(60)=acd35(24)*acd35(48)
      acd35(62)=acd35(43)*acd35(51)
      acd35(63)=-acd35(7)*acd35(61)
      acd35(64)=-acd35(13)*acd35(36)
      acd35(58)=acd35(64)+acd35(63)+acd35(62)+acd35(60)+acd35(58)+acd35(59)
      acd35(58)=acd35(19)*acd35(58)
      acd35(59)=acd35(46)*acd35(54)
      acd35(60)=acd35(45)*acd35(53)
      acd35(62)=acd35(44)*acd35(52)
      acd35(63)=acd35(34)*acd35(55)
      acd35(64)=2.0_ki*acd35(11)
      acd35(65)=-acd35(9)*acd35(64)
      acd35(66)=acd35(17)*acd35(23)
      acd35(59)=acd35(66)+acd35(65)+acd35(63)+acd35(62)+acd35(59)+acd35(60)
      acd35(59)=acd35(15)*acd35(59)
      acd35(60)=acd35(33)*acd35(50)
      acd35(62)=acd35(32)*acd35(49)
      acd35(63)=acd35(31)*acd35(48)
      acd35(65)=acd35(47)*acd35(51)
      acd35(66)=-acd35(7)*acd35(64)
      acd35(67)=-acd35(18)*acd35(36)
      acd35(60)=acd35(67)+acd35(66)+acd35(65)+acd35(63)+acd35(60)+acd35(62)
      acd35(60)=acd35(14)*acd35(60)
      acd35(62)=-acd35(8)*acd35(9)
      acd35(63)=-acd35(6)*acd35(7)
      acd35(65)=-acd35(4)*acd35(5)
      acd35(66)=-acd35(2)*acd35(3)
      acd35(62)=acd35(66)+acd35(65)+acd35(63)+acd35(10)+acd35(62)
      acd35(62)=acd35(1)*acd35(62)
      acd35(63)=-acd35(41)*acd35(42)
      acd35(65)=-acd35(39)*acd35(40)
      acd35(66)=acd35(37)*acd35(38)
      acd35(67)=-acd35(5)*acd35(61)
      acd35(63)=acd35(67)+acd35(66)+acd35(63)+acd35(65)
      acd35(63)=acd35(18)*acd35(63)
      acd35(65)=acd35(28)*acd35(29)
      acd35(66)=acd35(26)*acd35(27)
      acd35(67)=-acd35(24)*acd35(25)
      acd35(61)=-acd35(3)*acd35(61)
      acd35(61)=acd35(61)+acd35(67)+acd35(65)+acd35(66)
      acd35(61)=acd35(17)*acd35(61)
      acd35(65)=-acd35(42)*acd35(46)
      acd35(66)=-acd35(40)*acd35(45)
      acd35(67)=acd35(38)*acd35(44)
      acd35(68)=-acd35(5)*acd35(64)
      acd35(65)=acd35(68)+acd35(67)+acd35(65)+acd35(66)
      acd35(65)=acd35(13)*acd35(65)
      acd35(66)=acd35(29)*acd35(33)
      acd35(67)=acd35(27)*acd35(32)
      acd35(68)=-acd35(25)*acd35(31)
      acd35(64)=-acd35(3)*acd35(64)
      acd35(64)=acd35(64)+acd35(68)+acd35(66)+acd35(67)
      acd35(64)=acd35(12)*acd35(64)
      brack=acd35(56)+acd35(57)+acd35(58)+acd35(59)+acd35(60)+acd35(61)+2.0_ki*&
      &acd35(62)+acd35(63)+acd35(64)+acd35(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd35h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd35
      complex(ki) :: brack
      acd35(1)=d(iv1,iv2)
      acd35(2)=spvae1k4(iv3)
      acd35(3)=abb35(22)
      acd35(4)=spvak5e1(iv3)
      acd35(5)=abb35(27)
      acd35(6)=spvae1e2(iv3)
      acd35(7)=abb35(34)
      acd35(8)=spvae2e1(iv3)
      acd35(9)=abb35(33)
      acd35(10)=d(iv1,iv3)
      acd35(11)=spvae1k4(iv2)
      acd35(12)=spvak5e1(iv2)
      acd35(13)=spvae1e2(iv2)
      acd35(14)=spvae2e1(iv2)
      acd35(15)=d(iv2,iv3)
      acd35(16)=spvae1k4(iv1)
      acd35(17)=spvak5e1(iv1)
      acd35(18)=spvae1e2(iv1)
      acd35(19)=spvae2e1(iv1)
      acd35(20)=spvak5e2(iv3)
      acd35(21)=abb35(29)
      acd35(22)=spvak5e2(iv2)
      acd35(23)=spvak5e2(iv1)
      acd35(24)=spvae2k4(iv3)
      acd35(25)=spvae2k4(iv2)
      acd35(26)=spvae2k4(iv1)
      acd35(27)=-acd35(13)*acd35(17)
      acd35(28)=-acd35(12)*acd35(18)
      acd35(27)=acd35(28)+acd35(27)
      acd35(27)=acd35(24)*acd35(27)
      acd35(28)=acd35(14)*acd35(16)
      acd35(29)=acd35(11)*acd35(19)
      acd35(28)=acd35(29)+acd35(28)
      acd35(28)=acd35(20)*acd35(28)
      acd35(29)=acd35(16)*acd35(22)
      acd35(30)=acd35(11)*acd35(23)
      acd35(29)=acd35(29)+acd35(30)
      acd35(29)=acd35(8)*acd35(29)
      acd35(30)=-acd35(17)*acd35(25)
      acd35(31)=-acd35(12)*acd35(26)
      acd35(30)=acd35(30)+acd35(31)
      acd35(30)=acd35(6)*acd35(30)
      acd35(31)=-acd35(18)*acd35(25)
      acd35(32)=-acd35(13)*acd35(26)
      acd35(31)=acd35(31)+acd35(32)
      acd35(31)=acd35(4)*acd35(31)
      acd35(32)=acd35(19)*acd35(22)
      acd35(33)=acd35(14)*acd35(23)
      acd35(32)=acd35(32)+acd35(33)
      acd35(32)=acd35(2)*acd35(32)
      acd35(27)=acd35(32)+acd35(31)+acd35(30)+acd35(29)+acd35(28)+acd35(27)
      acd35(27)=acd35(21)*acd35(27)
      acd35(28)=-acd35(9)*acd35(19)
      acd35(29)=-acd35(7)*acd35(18)
      acd35(30)=-acd35(5)*acd35(17)
      acd35(31)=-acd35(3)*acd35(16)
      acd35(28)=acd35(31)+acd35(30)+acd35(28)+acd35(29)
      acd35(28)=acd35(15)*acd35(28)
      acd35(29)=-acd35(9)*acd35(14)
      acd35(30)=-acd35(7)*acd35(13)
      acd35(31)=-acd35(5)*acd35(12)
      acd35(32)=-acd35(3)*acd35(11)
      acd35(29)=acd35(32)+acd35(31)+acd35(29)+acd35(30)
      acd35(29)=acd35(10)*acd35(29)
      acd35(30)=-acd35(8)*acd35(9)
      acd35(31)=-acd35(6)*acd35(7)
      acd35(32)=-acd35(4)*acd35(5)
      acd35(33)=-acd35(2)*acd35(3)
      acd35(30)=acd35(33)+acd35(32)+acd35(30)+acd35(31)
      acd35(30)=acd35(1)*acd35(30)
      acd35(28)=acd35(30)+acd35(28)+acd35(29)
      brack=acd35(27)+2.0_ki*acd35(28)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd35h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd35
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd35h0
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
!---#[ subroutine reconstruct_d35:
   subroutine     reconstruct_d35(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_35:
      coeffs%coeffs_35%c0 = derivative(czip)
      coeffs%coeffs_35%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_35%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_35%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_35%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_35%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_35%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_35%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_35%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_35%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_35%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_35%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_35%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_35%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_35%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_35%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_35%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_35%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_35%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_35%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_35%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_35%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_35%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_35%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_35%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_35%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_35%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_35%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_35%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_35%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_35%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_35%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_35%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_35%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_35%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_35%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_35%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_35%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_35%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_35%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_35%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_35%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_35%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_35%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_35%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_35%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_35%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_35%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_35%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_35%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_35%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_35%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_35%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_35%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_35%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_35%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_35%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_35%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_35%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_35%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_35%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_35%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_35%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_35%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_35%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_35%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_35%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_35%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_35%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_35%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_35:
   end subroutine reconstruct_d35
!---#] subroutine reconstruct_d35:
end module     p0_gg_hepem_d35h0l1d
