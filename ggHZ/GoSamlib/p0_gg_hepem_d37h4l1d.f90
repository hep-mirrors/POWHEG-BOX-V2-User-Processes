module     p0_gg_hepem_d37h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity4d37h4l1d.f90
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
   public :: derivative , reconstruct_d37
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd37h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd37
      complex(ki) :: brack
      acd37(1)=dotproduct(qshift,qshift)
      acd37(2)=dotproduct(qshift,spvak4e1)
      acd37(3)=abb37(27)
      acd37(4)=dotproduct(qshift,spvae1k5)
      acd37(5)=abb37(22)
      acd37(6)=dotproduct(qshift,spvae1e2)
      acd37(7)=abb37(34)
      acd37(8)=dotproduct(qshift,spvae2e1)
      acd37(9)=abb37(33)
      acd37(10)=abb37(16)
      acd37(11)=dotproduct(qshift,spvae2k5)
      acd37(12)=abb37(29)
      acd37(13)=abb37(13)
      acd37(14)=dotproduct(qshift,spvak2k5)
      acd37(15)=abb37(24)
      acd37(16)=dotproduct(qshift,spvak2e2)
      acd37(17)=abb37(14)
      acd37(18)=dotproduct(qshift,spval3e2)
      acd37(19)=abb37(38)
      acd37(20)=abb37(7)
      acd37(21)=dotproduct(qshift,spvak4e2)
      acd37(22)=abb37(9)
      acd37(23)=dotproduct(qshift,spvak4k2)
      acd37(24)=abb37(19)
      acd37(25)=dotproduct(qshift,spvae2k2)
      acd37(26)=abb37(39)
      acd37(27)=dotproduct(qshift,spvae2l3)
      acd37(28)=abb37(36)
      acd37(29)=abb37(11)
      acd37(30)=abb37(30)
      acd37(31)=abb37(28)
      acd37(32)=abb37(31)
      acd37(33)=abb37(35)
      acd37(34)=abb37(6)
      acd37(35)=abb37(32)
      acd37(36)=abb37(5)
      acd37(37)=abb37(18)
      acd37(38)=abb37(37)
      acd37(39)=abb37(23)
      acd37(40)=abb37(25)
      acd37(41)=abb37(20)
      acd37(42)=abb37(15)
      acd37(43)=abb37(17)
      acd37(44)=abb37(26)
      acd37(45)=abb37(21)
      acd37(46)=abb37(12)
      acd37(47)=abb37(8)
      acd37(48)=abb37(10)
      acd37(49)=acd37(21)*acd37(38)
      acd37(50)=acd37(18)*acd37(37)
      acd37(51)=acd37(16)*acd37(36)
      acd37(52)=acd37(14)*acd37(35)
      acd37(53)=-acd37(1)*acd37(9)
      acd37(54)=acd37(21)*acd37(12)
      acd37(54)=acd37(22)+acd37(54)
      acd37(54)=acd37(4)*acd37(54)
      acd37(49)=acd37(54)+acd37(53)+acd37(52)+acd37(51)+acd37(50)-acd37(39)+acd&
      &37(49)
      acd37(49)=acd37(8)*acd37(49)
      acd37(50)=acd37(27)*acd37(32)
      acd37(51)=acd37(25)*acd37(31)
      acd37(52)=acd37(23)*acd37(30)
      acd37(53)=acd37(11)*acd37(33)
      acd37(54)=-acd37(1)*acd37(7)
      acd37(55)=-acd37(11)*acd37(12)
      acd37(55)=-acd37(13)+acd37(55)
      acd37(55)=acd37(2)*acd37(55)
      acd37(50)=acd37(55)+acd37(54)+acd37(53)+acd37(52)+acd37(51)-acd37(34)+acd&
      &37(50)
      acd37(50)=acd37(6)*acd37(50)
      acd37(51)=acd37(27)*acd37(28)
      acd37(52)=acd37(25)*acd37(26)
      acd37(53)=-acd37(23)*acd37(24)
      acd37(54)=-acd37(1)*acd37(5)
      acd37(51)=acd37(54)+acd37(53)+acd37(52)-acd37(29)+acd37(51)
      acd37(51)=acd37(4)*acd37(51)
      acd37(52)=-acd37(18)*acd37(19)
      acd37(53)=-acd37(16)*acd37(17)
      acd37(54)=acd37(14)*acd37(15)
      acd37(55)=-acd37(1)*acd37(3)
      acd37(52)=acd37(55)+acd37(54)+acd37(53)-acd37(20)+acd37(52)
      acd37(52)=acd37(2)*acd37(52)
      acd37(53)=acd37(27)*acd37(45)
      acd37(54)=-acd37(25)*acd37(43)
      acd37(55)=-acd37(23)*acd37(41)
      acd37(56)=-acd37(21)*acd37(47)
      acd37(57)=-acd37(18)*acd37(44)
      acd37(58)=-acd37(16)*acd37(42)
      acd37(59)=acd37(14)*acd37(40)
      acd37(60)=-acd37(11)*acd37(46)
      acd37(61)=acd37(1)*acd37(10)
      brack=acd37(48)+acd37(49)+acd37(50)+acd37(51)+acd37(52)+acd37(53)+acd37(5&
      &4)+acd37(55)+acd37(56)+acd37(57)+acd37(58)+acd37(59)+acd37(60)+acd37(61)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd37h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd37
      complex(ki) :: brack
      acd37(1)=qshift(iv1)
      acd37(2)=dotproduct(qshift,spvak4e1)
      acd37(3)=abb37(27)
      acd37(4)=dotproduct(qshift,spvae1k5)
      acd37(5)=abb37(22)
      acd37(6)=dotproduct(qshift,spvae1e2)
      acd37(7)=abb37(34)
      acd37(8)=dotproduct(qshift,spvae2e1)
      acd37(9)=abb37(33)
      acd37(10)=abb37(16)
      acd37(11)=spvak4e1(iv1)
      acd37(12)=dotproduct(qshift,qshift)
      acd37(13)=dotproduct(qshift,spvae2k5)
      acd37(14)=abb37(29)
      acd37(15)=abb37(13)
      acd37(16)=dotproduct(qshift,spvak2k5)
      acd37(17)=abb37(24)
      acd37(18)=dotproduct(qshift,spvak2e2)
      acd37(19)=abb37(14)
      acd37(20)=dotproduct(qshift,spval3e2)
      acd37(21)=abb37(38)
      acd37(22)=abb37(7)
      acd37(23)=spvae1k5(iv1)
      acd37(24)=dotproduct(qshift,spvak4e2)
      acd37(25)=abb37(9)
      acd37(26)=dotproduct(qshift,spvak4k2)
      acd37(27)=abb37(19)
      acd37(28)=dotproduct(qshift,spvae2k2)
      acd37(29)=abb37(39)
      acd37(30)=dotproduct(qshift,spvae2l3)
      acd37(31)=abb37(36)
      acd37(32)=abb37(11)
      acd37(33)=spvae1e2(iv1)
      acd37(34)=abb37(30)
      acd37(35)=abb37(28)
      acd37(36)=abb37(31)
      acd37(37)=abb37(35)
      acd37(38)=abb37(6)
      acd37(39)=spvae2e1(iv1)
      acd37(40)=abb37(32)
      acd37(41)=abb37(5)
      acd37(42)=abb37(18)
      acd37(43)=abb37(37)
      acd37(44)=abb37(23)
      acd37(45)=spvak2k5(iv1)
      acd37(46)=abb37(25)
      acd37(47)=spvak4k2(iv1)
      acd37(48)=abb37(20)
      acd37(49)=spvak2e2(iv1)
      acd37(50)=abb37(15)
      acd37(51)=spvae2k2(iv1)
      acd37(52)=abb37(17)
      acd37(53)=spval3e2(iv1)
      acd37(54)=abb37(26)
      acd37(55)=spvae2l3(iv1)
      acd37(56)=abb37(21)
      acd37(57)=spvae2k5(iv1)
      acd37(58)=abb37(12)
      acd37(59)=spvak4e2(iv1)
      acd37(60)=abb37(8)
      acd37(61)=acd37(20)*acd37(42)
      acd37(62)=acd37(18)*acd37(41)
      acd37(63)=acd37(16)*acd37(40)
      acd37(64)=acd37(24)*acd37(43)
      acd37(65)=-acd37(12)*acd37(9)
      acd37(66)=acd37(14)*acd37(24)
      acd37(66)=acd37(66)+acd37(25)
      acd37(67)=acd37(4)*acd37(66)
      acd37(61)=acd37(67)+acd37(65)+acd37(64)+acd37(63)+acd37(62)-acd37(44)+acd&
      &37(61)
      acd37(61)=acd37(39)*acd37(61)
      acd37(62)=acd37(30)*acd37(36)
      acd37(63)=acd37(28)*acd37(35)
      acd37(64)=acd37(26)*acd37(34)
      acd37(65)=acd37(13)*acd37(37)
      acd37(67)=-acd37(12)*acd37(7)
      acd37(68)=acd37(14)*acd37(13)
      acd37(68)=acd37(68)+acd37(15)
      acd37(69)=-acd37(2)*acd37(68)
      acd37(62)=acd37(69)+acd37(67)+acd37(65)+acd37(64)+acd37(63)-acd37(38)+acd&
      &37(62)
      acd37(62)=acd37(33)*acd37(62)
      acd37(63)=acd37(4)*acd37(14)
      acd37(63)=acd37(63)+acd37(43)
      acd37(63)=acd37(59)*acd37(63)
      acd37(64)=acd37(53)*acd37(42)
      acd37(65)=acd37(49)*acd37(41)
      acd37(67)=acd37(45)*acd37(40)
      acd37(69)=2.0_ki*acd37(1)
      acd37(70)=-acd37(9)*acd37(69)
      acd37(66)=acd37(23)*acd37(66)
      acd37(63)=acd37(66)+acd37(70)+acd37(67)+acd37(65)+acd37(64)+acd37(63)
      acd37(63)=acd37(8)*acd37(63)
      acd37(64)=-acd37(2)*acd37(14)
      acd37(64)=acd37(64)+acd37(37)
      acd37(64)=acd37(57)*acd37(64)
      acd37(65)=acd37(55)*acd37(36)
      acd37(66)=acd37(51)*acd37(35)
      acd37(67)=acd37(47)*acd37(34)
      acd37(70)=-acd37(7)*acd37(69)
      acd37(68)=-acd37(11)*acd37(68)
      acd37(64)=acd37(68)+acd37(70)+acd37(67)+acd37(66)+acd37(65)+acd37(64)
      acd37(64)=acd37(6)*acd37(64)
      acd37(65)=acd37(30)*acd37(31)
      acd37(66)=acd37(28)*acd37(29)
      acd37(67)=-acd37(26)*acd37(27)
      acd37(68)=-acd37(12)*acd37(5)
      acd37(65)=acd37(68)+acd37(67)+acd37(66)-acd37(32)+acd37(65)
      acd37(65)=acd37(23)*acd37(65)
      acd37(66)=-acd37(20)*acd37(21)
      acd37(67)=-acd37(18)*acd37(19)
      acd37(68)=acd37(16)*acd37(17)
      acd37(70)=-acd37(12)*acd37(3)
      acd37(66)=acd37(70)+acd37(68)+acd37(67)-acd37(22)+acd37(66)
      acd37(66)=acd37(11)*acd37(66)
      acd37(67)=acd37(55)*acd37(31)
      acd37(68)=acd37(51)*acd37(29)
      acd37(70)=-acd37(47)*acd37(27)
      acd37(71)=-acd37(5)*acd37(69)
      acd37(67)=acd37(71)+acd37(70)+acd37(67)+acd37(68)
      acd37(67)=acd37(4)*acd37(67)
      acd37(68)=-acd37(53)*acd37(21)
      acd37(70)=-acd37(49)*acd37(19)
      acd37(71)=acd37(45)*acd37(17)
      acd37(72)=-acd37(3)*acd37(69)
      acd37(68)=acd37(72)+acd37(71)+acd37(68)+acd37(70)
      acd37(68)=acd37(2)*acd37(68)
      acd37(70)=-acd37(59)*acd37(60)
      acd37(71)=-acd37(57)*acd37(58)
      acd37(72)=acd37(55)*acd37(56)
      acd37(73)=-acd37(53)*acd37(54)
      acd37(74)=-acd37(51)*acd37(52)
      acd37(75)=-acd37(49)*acd37(50)
      acd37(76)=-acd37(47)*acd37(48)
      acd37(77)=acd37(45)*acd37(46)
      acd37(69)=acd37(10)*acd37(69)
      brack=acd37(61)+acd37(62)+acd37(63)+acd37(64)+acd37(65)+acd37(66)+acd37(6&
      &7)+acd37(68)+acd37(69)+acd37(70)+acd37(71)+acd37(72)+acd37(73)+acd37(74)&
      &+acd37(75)+acd37(76)+acd37(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd37h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd37
      complex(ki) :: brack
      acd37(1)=d(iv1,iv2)
      acd37(2)=dotproduct(qshift,spvak4e1)
      acd37(3)=abb37(27)
      acd37(4)=dotproduct(qshift,spvae1k5)
      acd37(5)=abb37(22)
      acd37(6)=dotproduct(qshift,spvae1e2)
      acd37(7)=abb37(34)
      acd37(8)=dotproduct(qshift,spvae2e1)
      acd37(9)=abb37(33)
      acd37(10)=abb37(16)
      acd37(11)=qshift(iv1)
      acd37(12)=spvak4e1(iv2)
      acd37(13)=spvae1k5(iv2)
      acd37(14)=spvae1e2(iv2)
      acd37(15)=spvae2e1(iv2)
      acd37(16)=qshift(iv2)
      acd37(17)=spvak4e1(iv1)
      acd37(18)=spvae1k5(iv1)
      acd37(19)=spvae1e2(iv1)
      acd37(20)=spvae2e1(iv1)
      acd37(21)=dotproduct(qshift,spvae2k5)
      acd37(22)=abb37(29)
      acd37(23)=abb37(13)
      acd37(24)=spvak2k5(iv2)
      acd37(25)=abb37(24)
      acd37(26)=spvak2e2(iv2)
      acd37(27)=abb37(14)
      acd37(28)=spval3e2(iv2)
      acd37(29)=abb37(38)
      acd37(30)=spvae2k5(iv2)
      acd37(31)=spvak2k5(iv1)
      acd37(32)=spvak2e2(iv1)
      acd37(33)=spval3e2(iv1)
      acd37(34)=spvae2k5(iv1)
      acd37(35)=dotproduct(qshift,spvak4e2)
      acd37(36)=abb37(9)
      acd37(37)=spvak4k2(iv2)
      acd37(38)=abb37(19)
      acd37(39)=spvae2k2(iv2)
      acd37(40)=abb37(39)
      acd37(41)=spvae2l3(iv2)
      acd37(42)=abb37(36)
      acd37(43)=spvak4e2(iv2)
      acd37(44)=spvak4k2(iv1)
      acd37(45)=spvae2k2(iv1)
      acd37(46)=spvae2l3(iv1)
      acd37(47)=spvak4e2(iv1)
      acd37(48)=abb37(30)
      acd37(49)=abb37(28)
      acd37(50)=abb37(31)
      acd37(51)=abb37(35)
      acd37(52)=abb37(32)
      acd37(53)=abb37(5)
      acd37(54)=abb37(18)
      acd37(55)=abb37(37)
      acd37(56)=acd37(18)*acd37(43)
      acd37(57)=acd37(13)*acd37(47)
      acd37(56)=acd37(57)+acd37(56)
      acd37(56)=acd37(8)*acd37(56)
      acd37(57)=-acd37(17)*acd37(30)
      acd37(58)=-acd37(12)*acd37(34)
      acd37(57)=acd37(58)+acd37(57)
      acd37(57)=acd37(6)*acd37(57)
      acd37(58)=acd37(4)*acd37(43)
      acd37(59)=acd37(13)*acd37(35)
      acd37(58)=acd37(58)+acd37(59)
      acd37(58)=acd37(20)*acd37(58)
      acd37(59)=-acd37(2)*acd37(30)
      acd37(60)=-acd37(12)*acd37(21)
      acd37(59)=acd37(59)+acd37(60)
      acd37(59)=acd37(19)*acd37(59)
      acd37(60)=acd37(4)*acd37(47)
      acd37(61)=acd37(18)*acd37(35)
      acd37(60)=acd37(60)+acd37(61)
      acd37(60)=acd37(15)*acd37(60)
      acd37(61)=-acd37(2)*acd37(34)
      acd37(62)=-acd37(17)*acd37(21)
      acd37(61)=acd37(61)+acd37(62)
      acd37(61)=acd37(14)*acd37(61)
      acd37(56)=acd37(61)+acd37(60)+acd37(59)+acd37(58)+acd37(57)+acd37(56)
      acd37(56)=acd37(22)*acd37(56)
      acd37(57)=acd37(28)*acd37(54)
      acd37(58)=acd37(26)*acd37(53)
      acd37(59)=acd37(24)*acd37(52)
      acd37(60)=acd37(43)*acd37(55)
      acd37(61)=2.0_ki*acd37(16)
      acd37(62)=-acd37(9)*acd37(61)
      acd37(63)=acd37(13)*acd37(36)
      acd37(57)=acd37(63)+acd37(62)+acd37(60)+acd37(59)+acd37(57)+acd37(58)
      acd37(57)=acd37(20)*acd37(57)
      acd37(58)=acd37(41)*acd37(50)
      acd37(59)=acd37(39)*acd37(49)
      acd37(60)=acd37(37)*acd37(48)
      acd37(62)=acd37(30)*acd37(51)
      acd37(63)=-acd37(7)*acd37(61)
      acd37(64)=-acd37(12)*acd37(23)
      acd37(58)=acd37(64)+acd37(63)+acd37(62)+acd37(60)+acd37(58)+acd37(59)
      acd37(58)=acd37(19)*acd37(58)
      acd37(59)=acd37(33)*acd37(54)
      acd37(60)=acd37(32)*acd37(53)
      acd37(62)=acd37(31)*acd37(52)
      acd37(63)=acd37(47)*acd37(55)
      acd37(64)=2.0_ki*acd37(11)
      acd37(65)=-acd37(9)*acd37(64)
      acd37(66)=acd37(18)*acd37(36)
      acd37(59)=acd37(66)+acd37(65)+acd37(63)+acd37(62)+acd37(59)+acd37(60)
      acd37(59)=acd37(15)*acd37(59)
      acd37(60)=acd37(46)*acd37(50)
      acd37(62)=acd37(45)*acd37(49)
      acd37(63)=acd37(44)*acd37(48)
      acd37(65)=acd37(34)*acd37(51)
      acd37(66)=-acd37(7)*acd37(64)
      acd37(67)=-acd37(17)*acd37(23)
      acd37(60)=acd37(67)+acd37(66)+acd37(65)+acd37(63)+acd37(60)+acd37(62)
      acd37(60)=acd37(14)*acd37(60)
      acd37(62)=-acd37(8)*acd37(9)
      acd37(63)=-acd37(6)*acd37(7)
      acd37(65)=-acd37(4)*acd37(5)
      acd37(66)=-acd37(2)*acd37(3)
      acd37(62)=acd37(66)+acd37(65)+acd37(63)+acd37(10)+acd37(62)
      acd37(62)=acd37(1)*acd37(62)
      acd37(63)=acd37(41)*acd37(42)
      acd37(65)=acd37(39)*acd37(40)
      acd37(66)=-acd37(37)*acd37(38)
      acd37(67)=-acd37(5)*acd37(61)
      acd37(63)=acd37(67)+acd37(66)+acd37(63)+acd37(65)
      acd37(63)=acd37(18)*acd37(63)
      acd37(65)=-acd37(28)*acd37(29)
      acd37(66)=-acd37(26)*acd37(27)
      acd37(67)=acd37(24)*acd37(25)
      acd37(61)=-acd37(3)*acd37(61)
      acd37(61)=acd37(61)+acd37(67)+acd37(65)+acd37(66)
      acd37(61)=acd37(17)*acd37(61)
      acd37(65)=acd37(42)*acd37(46)
      acd37(66)=acd37(40)*acd37(45)
      acd37(67)=-acd37(38)*acd37(44)
      acd37(68)=-acd37(5)*acd37(64)
      acd37(65)=acd37(68)+acd37(67)+acd37(65)+acd37(66)
      acd37(65)=acd37(13)*acd37(65)
      acd37(66)=-acd37(29)*acd37(33)
      acd37(67)=-acd37(27)*acd37(32)
      acd37(68)=acd37(25)*acd37(31)
      acd37(64)=-acd37(3)*acd37(64)
      acd37(64)=acd37(64)+acd37(68)+acd37(66)+acd37(67)
      acd37(64)=acd37(12)*acd37(64)
      brack=acd37(56)+acd37(57)+acd37(58)+acd37(59)+acd37(60)+acd37(61)+2.0_ki*&
      &acd37(62)+acd37(63)+acd37(64)+acd37(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd37h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd37
      complex(ki) :: brack
      acd37(1)=d(iv1,iv2)
      acd37(2)=spvak4e1(iv3)
      acd37(3)=abb37(27)
      acd37(4)=spvae1k5(iv3)
      acd37(5)=abb37(22)
      acd37(6)=spvae1e2(iv3)
      acd37(7)=abb37(34)
      acd37(8)=spvae2e1(iv3)
      acd37(9)=abb37(33)
      acd37(10)=d(iv1,iv3)
      acd37(11)=spvak4e1(iv2)
      acd37(12)=spvae1k5(iv2)
      acd37(13)=spvae1e2(iv2)
      acd37(14)=spvae2e1(iv2)
      acd37(15)=d(iv2,iv3)
      acd37(16)=spvak4e1(iv1)
      acd37(17)=spvae1k5(iv1)
      acd37(18)=spvae1e2(iv1)
      acd37(19)=spvae2e1(iv1)
      acd37(20)=spvae2k5(iv3)
      acd37(21)=abb37(29)
      acd37(22)=spvae2k5(iv2)
      acd37(23)=spvae2k5(iv1)
      acd37(24)=spvak4e2(iv3)
      acd37(25)=spvak4e2(iv2)
      acd37(26)=spvak4e2(iv1)
      acd37(27)=acd37(14)*acd37(17)
      acd37(28)=acd37(12)*acd37(19)
      acd37(27)=acd37(28)+acd37(27)
      acd37(27)=acd37(24)*acd37(27)
      acd37(28)=-acd37(13)*acd37(16)
      acd37(29)=-acd37(11)*acd37(18)
      acd37(28)=acd37(29)+acd37(28)
      acd37(28)=acd37(20)*acd37(28)
      acd37(29)=acd37(17)*acd37(25)
      acd37(30)=acd37(12)*acd37(26)
      acd37(29)=acd37(29)+acd37(30)
      acd37(29)=acd37(8)*acd37(29)
      acd37(30)=-acd37(16)*acd37(22)
      acd37(31)=-acd37(11)*acd37(23)
      acd37(30)=acd37(30)+acd37(31)
      acd37(30)=acd37(6)*acd37(30)
      acd37(31)=acd37(19)*acd37(25)
      acd37(32)=acd37(14)*acd37(26)
      acd37(31)=acd37(31)+acd37(32)
      acd37(31)=acd37(4)*acd37(31)
      acd37(32)=-acd37(18)*acd37(22)
      acd37(33)=-acd37(13)*acd37(23)
      acd37(32)=acd37(32)+acd37(33)
      acd37(32)=acd37(2)*acd37(32)
      acd37(27)=acd37(32)+acd37(31)+acd37(30)+acd37(29)+acd37(28)+acd37(27)
      acd37(27)=acd37(21)*acd37(27)
      acd37(28)=-acd37(9)*acd37(19)
      acd37(29)=-acd37(7)*acd37(18)
      acd37(30)=-acd37(5)*acd37(17)
      acd37(31)=-acd37(3)*acd37(16)
      acd37(28)=acd37(31)+acd37(30)+acd37(28)+acd37(29)
      acd37(28)=acd37(15)*acd37(28)
      acd37(29)=-acd37(9)*acd37(14)
      acd37(30)=-acd37(7)*acd37(13)
      acd37(31)=-acd37(5)*acd37(12)
      acd37(32)=-acd37(3)*acd37(11)
      acd37(29)=acd37(32)+acd37(31)+acd37(29)+acd37(30)
      acd37(29)=acd37(10)*acd37(29)
      acd37(30)=-acd37(8)*acd37(9)
      acd37(31)=-acd37(6)*acd37(7)
      acd37(32)=-acd37(4)*acd37(5)
      acd37(33)=-acd37(2)*acd37(3)
      acd37(30)=acd37(33)+acd37(32)+acd37(30)+acd37(31)
      acd37(30)=acd37(1)*acd37(30)
      acd37(28)=acd37(30)+acd37(28)+acd37(29)
      brack=acd37(27)+2.0_ki*acd37(28)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd37h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd37
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd37h4
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
!---#[ subroutine reconstruct_d37:
   subroutine     reconstruct_d37(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_37:
      coeffs%coeffs_37%c0 = derivative(czip)
      coeffs%coeffs_37%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_37%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_37%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_37%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_37%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_37%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_37%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_37%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_37%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_37%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_37%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_37%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_37%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_37%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_37%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_37%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_37%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_37%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_37%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_37%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_37%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_37%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_37%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_37%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_37%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_37%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_37%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_37%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_37%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_37%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_37%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_37%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_37%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_37%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_37%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_37%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_37%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_37%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_37%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_37%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_37%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_37%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_37%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_37%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_37%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_37%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_37%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_37%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_37%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_37%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_37%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_37%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_37%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_37%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_37%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_37%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_37%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_37%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_37%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_37%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_37%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_37%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_37%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_37%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_37%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_37%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_37%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_37%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_37%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_37:
   end subroutine reconstruct_d37
!---#] subroutine reconstruct_d37:
end module     p0_gg_hepem_d37h4l1d
