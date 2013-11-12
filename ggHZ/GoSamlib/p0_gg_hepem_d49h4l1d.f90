module     p0_gg_hepem_d49h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity4d49h4l1d.f90
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
   public :: derivative , reconstruct_d49
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd49h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd49
      complex(ki) :: brack
      acd49(1)=dotproduct(qshift,qshift)
      acd49(2)=dotproduct(qshift,spvak4e1)
      acd49(3)=abb49(22)
      acd49(4)=dotproduct(qshift,spvak4e2)
      acd49(5)=abb49(13)
      acd49(6)=dotproduct(qshift,spvae1k5)
      acd49(7)=abb49(27)
      acd49(8)=dotproduct(qshift,spvae2k5)
      acd49(9)=abb49(16)
      acd49(10)=abb49(11)
      acd49(11)=dotproduct(qshift,spvae1e2)
      acd49(12)=abb49(33)
      acd49(13)=abb49(35)
      acd49(14)=dotproduct(qshift,spvae1k2)
      acd49(15)=abb49(28)
      acd49(16)=dotproduct(qshift,spvae1l3)
      acd49(17)=abb49(32)
      acd49(18)=abb49(26)
      acd49(19)=abb49(19)
      acd49(20)=dotproduct(qshift,spvae2e1)
      acd49(21)=abb49(31)
      acd49(22)=abb49(15)
      acd49(23)=abb49(36)
      acd49(24)=abb49(21)
      acd49(25)=abb49(8)
      acd49(26)=dotproduct(qshift,spvak2e1)
      acd49(27)=abb49(17)
      acd49(28)=dotproduct(qshift,spval3e1)
      acd49(29)=abb49(7)
      acd49(30)=abb49(29)
      acd49(31)=abb49(24)
      acd49(32)=abb49(14)
      acd49(33)=abb49(37)
      acd49(34)=abb49(25)
      acd49(35)=abb49(23)
      acd49(36)=abb49(5)
      acd49(37)=abb49(12)
      acd49(38)=abb49(6)
      acd49(39)=abb49(10)
      acd49(40)=abb49(20)
      acd49(41)=abb49(18)
      acd49(42)=abb49(9)
      acd49(43)=acd49(16)*acd49(23)
      acd49(44)=acd49(14)*acd49(22)
      acd49(45)=acd49(20)*acd49(24)
      acd49(46)=-acd49(1)*acd49(5)
      acd49(47)=acd49(20)*acd49(12)
      acd49(47)=acd49(21)+acd49(47)
      acd49(47)=acd49(6)*acd49(47)
      acd49(43)=acd49(47)+acd49(46)+acd49(45)+acd49(44)-acd49(25)+acd49(43)
      acd49(43)=acd49(4)*acd49(43)
      acd49(44)=acd49(16)*acd49(17)
      acd49(45)=acd49(14)*acd49(15)
      acd49(46)=acd49(11)*acd49(18)
      acd49(47)=-acd49(1)*acd49(3)
      acd49(48)=-acd49(11)*acd49(12)
      acd49(48)=acd49(13)+acd49(48)
      acd49(48)=acd49(8)*acd49(48)
      acd49(44)=acd49(48)+acd49(47)+acd49(46)+acd49(45)-acd49(19)+acd49(44)
      acd49(44)=acd49(2)*acd49(44)
      acd49(45)=acd49(28)*acd49(33)
      acd49(46)=acd49(26)*acd49(32)
      acd49(47)=acd49(11)*acd49(34)
      acd49(48)=-acd49(1)*acd49(9)
      acd49(45)=acd49(48)+acd49(47)+acd49(46)-acd49(35)+acd49(45)
      acd49(45)=acd49(8)*acd49(45)
      acd49(46)=acd49(28)*acd49(29)
      acd49(47)=acd49(26)*acd49(27)
      acd49(48)=acd49(20)*acd49(30)
      acd49(49)=-acd49(1)*acd49(7)
      acd49(46)=acd49(49)+acd49(48)+acd49(47)-acd49(31)+acd49(46)
      acd49(46)=acd49(6)*acd49(46)
      acd49(47)=-acd49(28)*acd49(38)
      acd49(48)=-acd49(26)*acd49(36)
      acd49(49)=-acd49(16)*acd49(39)
      acd49(50)=-acd49(14)*acd49(37)
      acd49(51)=-acd49(20)*acd49(41)
      acd49(52)=-acd49(11)*acd49(40)
      acd49(53)=acd49(1)*acd49(10)
      brack=acd49(42)+acd49(43)+acd49(44)+acd49(45)+acd49(46)+acd49(47)+acd49(4&
      &8)+acd49(49)+acd49(50)+acd49(51)+acd49(52)+acd49(53)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd49h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd49
      complex(ki) :: brack
      acd49(1)=qshift(iv1)
      acd49(2)=dotproduct(qshift,spvak4e1)
      acd49(3)=abb49(22)
      acd49(4)=dotproduct(qshift,spvak4e2)
      acd49(5)=abb49(13)
      acd49(6)=dotproduct(qshift,spvae1k5)
      acd49(7)=abb49(27)
      acd49(8)=dotproduct(qshift,spvae2k5)
      acd49(9)=abb49(16)
      acd49(10)=abb49(11)
      acd49(11)=spvak4e1(iv1)
      acd49(12)=dotproduct(qshift,qshift)
      acd49(13)=dotproduct(qshift,spvae1e2)
      acd49(14)=abb49(33)
      acd49(15)=abb49(35)
      acd49(16)=dotproduct(qshift,spvae1k2)
      acd49(17)=abb49(28)
      acd49(18)=dotproduct(qshift,spvae1l3)
      acd49(19)=abb49(32)
      acd49(20)=abb49(26)
      acd49(21)=abb49(19)
      acd49(22)=spvak4e2(iv1)
      acd49(23)=dotproduct(qshift,spvae2e1)
      acd49(24)=abb49(31)
      acd49(25)=abb49(15)
      acd49(26)=abb49(36)
      acd49(27)=abb49(21)
      acd49(28)=abb49(8)
      acd49(29)=spvae1k5(iv1)
      acd49(30)=dotproduct(qshift,spvak2e1)
      acd49(31)=abb49(17)
      acd49(32)=dotproduct(qshift,spval3e1)
      acd49(33)=abb49(7)
      acd49(34)=abb49(29)
      acd49(35)=abb49(24)
      acd49(36)=spvae2k5(iv1)
      acd49(37)=abb49(14)
      acd49(38)=abb49(37)
      acd49(39)=abb49(25)
      acd49(40)=abb49(23)
      acd49(41)=spvak2e1(iv1)
      acd49(42)=abb49(5)
      acd49(43)=spvae1k2(iv1)
      acd49(44)=abb49(12)
      acd49(45)=spval3e1(iv1)
      acd49(46)=abb49(6)
      acd49(47)=spvae1l3(iv1)
      acd49(48)=abb49(10)
      acd49(49)=spvae1e2(iv1)
      acd49(50)=abb49(20)
      acd49(51)=spvae2e1(iv1)
      acd49(52)=abb49(18)
      acd49(53)=-acd49(45)*acd49(38)
      acd49(54)=-acd49(41)*acd49(37)
      acd49(55)=-acd49(49)*acd49(39)
      acd49(56)=2.0_ki*acd49(1)
      acd49(57)=acd49(9)*acd49(56)
      acd49(58)=acd49(14)*acd49(13)
      acd49(58)=acd49(58)-acd49(15)
      acd49(59)=acd49(11)*acd49(58)
      acd49(53)=acd49(59)+acd49(57)+acd49(55)+acd49(53)+acd49(54)
      acd49(53)=acd49(8)*acd49(53)
      acd49(54)=-acd49(45)*acd49(33)
      acd49(55)=-acd49(41)*acd49(31)
      acd49(57)=-acd49(51)*acd49(34)
      acd49(59)=acd49(7)*acd49(56)
      acd49(60)=acd49(14)*acd49(23)
      acd49(60)=acd49(60)+acd49(24)
      acd49(61)=-acd49(22)*acd49(60)
      acd49(54)=acd49(61)+acd49(59)+acd49(57)+acd49(54)+acd49(55)
      acd49(54)=acd49(6)*acd49(54)
      acd49(55)=-acd49(6)*acd49(14)
      acd49(55)=acd49(55)-acd49(27)
      acd49(55)=acd49(51)*acd49(55)
      acd49(57)=-acd49(47)*acd49(26)
      acd49(59)=-acd49(43)*acd49(25)
      acd49(61)=acd49(5)*acd49(56)
      acd49(60)=-acd49(29)*acd49(60)
      acd49(55)=acd49(60)+acd49(61)+acd49(57)+acd49(59)+acd49(55)
      acd49(55)=acd49(4)*acd49(55)
      acd49(57)=acd49(8)*acd49(14)
      acd49(57)=acd49(57)-acd49(20)
      acd49(57)=acd49(49)*acd49(57)
      acd49(59)=-acd49(47)*acd49(19)
      acd49(60)=-acd49(43)*acd49(17)
      acd49(61)=acd49(3)*acd49(56)
      acd49(58)=acd49(36)*acd49(58)
      acd49(57)=acd49(58)+acd49(61)+acd49(59)+acd49(60)+acd49(57)
      acd49(57)=acd49(2)*acd49(57)
      acd49(58)=-acd49(32)*acd49(38)
      acd49(59)=-acd49(30)*acd49(37)
      acd49(60)=-acd49(13)*acd49(39)
      acd49(61)=acd49(12)*acd49(9)
      acd49(58)=acd49(61)+acd49(60)+acd49(59)+acd49(40)+acd49(58)
      acd49(58)=acd49(36)*acd49(58)
      acd49(59)=-acd49(32)*acd49(33)
      acd49(60)=-acd49(30)*acd49(31)
      acd49(61)=-acd49(23)*acd49(34)
      acd49(62)=acd49(12)*acd49(7)
      acd49(59)=acd49(62)+acd49(61)+acd49(60)+acd49(35)+acd49(59)
      acd49(59)=acd49(29)*acd49(59)
      acd49(60)=-acd49(18)*acd49(26)
      acd49(61)=-acd49(16)*acd49(25)
      acd49(62)=-acd49(23)*acd49(27)
      acd49(63)=acd49(12)*acd49(5)
      acd49(60)=acd49(63)+acd49(62)+acd49(61)+acd49(28)+acd49(60)
      acd49(60)=acd49(22)*acd49(60)
      acd49(61)=-acd49(18)*acd49(19)
      acd49(62)=-acd49(16)*acd49(17)
      acd49(63)=-acd49(13)*acd49(20)
      acd49(64)=acd49(12)*acd49(3)
      acd49(61)=acd49(64)+acd49(63)+acd49(62)+acd49(21)+acd49(61)
      acd49(61)=acd49(11)*acd49(61)
      acd49(62)=acd49(47)*acd49(48)
      acd49(63)=acd49(45)*acd49(46)
      acd49(64)=acd49(43)*acd49(44)
      acd49(65)=acd49(41)*acd49(42)
      acd49(66)=acd49(51)*acd49(52)
      acd49(67)=acd49(49)*acd49(50)
      acd49(56)=-acd49(10)*acd49(56)
      brack=acd49(53)+acd49(54)+acd49(55)+acd49(56)+acd49(57)+acd49(58)+acd49(5&
      &9)+acd49(60)+acd49(61)+acd49(62)+acd49(63)+acd49(64)+acd49(65)+acd49(66)&
      &+acd49(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd49h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=dotproduct(qshift,spvak4e1)
      acd49(3)=abb49(22)
      acd49(4)=dotproduct(qshift,spvak4e2)
      acd49(5)=abb49(13)
      acd49(6)=dotproduct(qshift,spvae1k5)
      acd49(7)=abb49(27)
      acd49(8)=dotproduct(qshift,spvae2k5)
      acd49(9)=abb49(16)
      acd49(10)=abb49(11)
      acd49(11)=qshift(iv1)
      acd49(12)=spvak4e1(iv2)
      acd49(13)=spvak4e2(iv2)
      acd49(14)=spvae1k5(iv2)
      acd49(15)=spvae2k5(iv2)
      acd49(16)=qshift(iv2)
      acd49(17)=spvak4e1(iv1)
      acd49(18)=spvak4e2(iv1)
      acd49(19)=spvae1k5(iv1)
      acd49(20)=spvae2k5(iv1)
      acd49(21)=dotproduct(qshift,spvae1e2)
      acd49(22)=abb49(33)
      acd49(23)=abb49(35)
      acd49(24)=spvae1k2(iv2)
      acd49(25)=abb49(28)
      acd49(26)=spvae1l3(iv2)
      acd49(27)=abb49(32)
      acd49(28)=spvae1e2(iv2)
      acd49(29)=abb49(26)
      acd49(30)=spvae1k2(iv1)
      acd49(31)=spvae1l3(iv1)
      acd49(32)=spvae1e2(iv1)
      acd49(33)=dotproduct(qshift,spvae2e1)
      acd49(34)=abb49(31)
      acd49(35)=abb49(15)
      acd49(36)=abb49(36)
      acd49(37)=spvae2e1(iv2)
      acd49(38)=abb49(21)
      acd49(39)=spvae2e1(iv1)
      acd49(40)=spvak2e1(iv2)
      acd49(41)=abb49(17)
      acd49(42)=spval3e1(iv2)
      acd49(43)=abb49(7)
      acd49(44)=abb49(29)
      acd49(45)=spvak2e1(iv1)
      acd49(46)=spval3e1(iv1)
      acd49(47)=abb49(14)
      acd49(48)=abb49(37)
      acd49(49)=abb49(25)
      acd49(50)=acd49(28)*acd49(20)
      acd49(51)=acd49(32)*acd49(15)
      acd49(50)=acd49(50)+acd49(51)
      acd49(51)=-acd49(2)*acd49(50)
      acd49(52)=acd49(37)*acd49(19)
      acd49(53)=acd49(39)*acd49(14)
      acd49(52)=acd49(52)+acd49(53)
      acd49(53)=acd49(4)*acd49(52)
      acd49(54)=acd49(37)*acd49(18)
      acd49(55)=acd49(39)*acd49(13)
      acd49(54)=acd49(54)+acd49(55)
      acd49(55)=acd49(6)*acd49(54)
      acd49(56)=acd49(28)*acd49(17)
      acd49(57)=acd49(32)*acd49(12)
      acd49(56)=acd49(56)+acd49(57)
      acd49(57)=-acd49(8)*acd49(56)
      acd49(58)=acd49(17)*acd49(15)
      acd49(59)=acd49(20)*acd49(12)
      acd49(58)=acd49(58)+acd49(59)
      acd49(59)=-acd49(21)*acd49(58)
      acd49(60)=acd49(18)*acd49(14)
      acd49(61)=acd49(19)*acd49(13)
      acd49(60)=acd49(60)+acd49(61)
      acd49(61)=acd49(33)*acd49(60)
      acd49(51)=acd49(61)+acd49(59)+acd49(57)+acd49(55)+acd49(53)+acd49(51)
      acd49(51)=acd49(22)*acd49(51)
      acd49(53)=-acd49(11)*acd49(12)
      acd49(55)=-acd49(16)*acd49(17)
      acd49(57)=-acd49(2)*acd49(1)
      acd49(53)=acd49(57)+acd49(53)+acd49(55)
      acd49(53)=acd49(3)*acd49(53)
      acd49(55)=-acd49(11)*acd49(13)
      acd49(57)=-acd49(16)*acd49(18)
      acd49(59)=-acd49(4)*acd49(1)
      acd49(55)=acd49(59)+acd49(55)+acd49(57)
      acd49(55)=acd49(5)*acd49(55)
      acd49(57)=-acd49(11)*acd49(14)
      acd49(59)=-acd49(16)*acd49(19)
      acd49(61)=-acd49(6)*acd49(1)
      acd49(57)=acd49(61)+acd49(57)+acd49(59)
      acd49(57)=acd49(7)*acd49(57)
      acd49(59)=-acd49(11)*acd49(15)
      acd49(61)=-acd49(16)*acd49(20)
      acd49(62)=-acd49(8)*acd49(1)
      acd49(59)=acd49(62)+acd49(59)+acd49(61)
      acd49(59)=acd49(9)*acd49(59)
      acd49(61)=acd49(10)*acd49(1)
      acd49(53)=acd49(61)+acd49(53)+acd49(55)+acd49(57)+acd49(59)
      acd49(55)=acd49(24)*acd49(17)
      acd49(57)=acd49(30)*acd49(12)
      acd49(55)=acd49(57)+acd49(55)
      acd49(55)=acd49(25)*acd49(55)
      acd49(57)=acd49(26)*acd49(17)
      acd49(59)=acd49(31)*acd49(12)
      acd49(57)=acd49(59)+acd49(57)
      acd49(57)=acd49(27)*acd49(57)
      acd49(59)=acd49(40)*acd49(19)
      acd49(61)=acd49(45)*acd49(14)
      acd49(59)=acd49(61)+acd49(59)
      acd49(59)=acd49(41)*acd49(59)
      acd49(61)=acd49(42)*acd49(19)
      acd49(62)=acd49(46)*acd49(14)
      acd49(61)=acd49(62)+acd49(61)
      acd49(61)=acd49(43)*acd49(61)
      acd49(58)=acd49(23)*acd49(58)
      acd49(56)=acd49(29)*acd49(56)
      acd49(60)=acd49(34)*acd49(60)
      acd49(62)=acd49(24)*acd49(18)
      acd49(63)=acd49(30)*acd49(13)
      acd49(62)=acd49(62)+acd49(63)
      acd49(62)=acd49(35)*acd49(62)
      acd49(63)=acd49(26)*acd49(18)
      acd49(64)=acd49(31)*acd49(13)
      acd49(63)=acd49(63)+acd49(64)
      acd49(63)=acd49(36)*acd49(63)
      acd49(54)=acd49(38)*acd49(54)
      acd49(52)=acd49(44)*acd49(52)
      acd49(64)=acd49(40)*acd49(20)
      acd49(65)=acd49(45)*acd49(15)
      acd49(64)=acd49(64)+acd49(65)
      acd49(64)=acd49(47)*acd49(64)
      acd49(65)=acd49(42)*acd49(20)
      acd49(66)=acd49(46)*acd49(15)
      acd49(65)=acd49(65)+acd49(66)
      acd49(65)=acd49(48)*acd49(65)
      acd49(50)=acd49(49)*acd49(50)
      brack=acd49(50)+acd49(51)+acd49(52)+2.0_ki*acd49(53)+acd49(54)+acd49(55)+&
      &acd49(56)+acd49(57)+acd49(58)+acd49(59)+acd49(60)+acd49(61)+acd49(62)+ac&
      &d49(63)+acd49(64)+acd49(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd49h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd49
      complex(ki) :: brack
      acd49(1)=d(iv1,iv2)
      acd49(2)=spvak4e1(iv3)
      acd49(3)=abb49(22)
      acd49(4)=spvak4e2(iv3)
      acd49(5)=abb49(13)
      acd49(6)=spvae1k5(iv3)
      acd49(7)=abb49(27)
      acd49(8)=spvae2k5(iv3)
      acd49(9)=abb49(16)
      acd49(10)=d(iv1,iv3)
      acd49(11)=spvak4e1(iv2)
      acd49(12)=spvak4e2(iv2)
      acd49(13)=spvae1k5(iv2)
      acd49(14)=spvae2k5(iv2)
      acd49(15)=d(iv2,iv3)
      acd49(16)=spvak4e1(iv1)
      acd49(17)=spvak4e2(iv1)
      acd49(18)=spvae1k5(iv1)
      acd49(19)=spvae2k5(iv1)
      acd49(20)=spvae1e2(iv3)
      acd49(21)=abb49(33)
      acd49(22)=spvae1e2(iv2)
      acd49(23)=spvae1e2(iv1)
      acd49(24)=spvae2e1(iv3)
      acd49(25)=spvae2e1(iv2)
      acd49(26)=spvae2e1(iv1)
      acd49(27)=-acd49(13)*acd49(17)
      acd49(28)=-acd49(12)*acd49(18)
      acd49(27)=acd49(28)+acd49(27)
      acd49(27)=acd49(24)*acd49(27)
      acd49(28)=acd49(14)*acd49(16)
      acd49(29)=acd49(11)*acd49(19)
      acd49(28)=acd49(29)+acd49(28)
      acd49(28)=acd49(20)*acd49(28)
      acd49(29)=acd49(16)*acd49(22)
      acd49(30)=acd49(11)*acd49(23)
      acd49(29)=acd49(29)+acd49(30)
      acd49(29)=acd49(8)*acd49(29)
      acd49(30)=-acd49(17)*acd49(25)
      acd49(31)=-acd49(12)*acd49(26)
      acd49(30)=acd49(30)+acd49(31)
      acd49(30)=acd49(6)*acd49(30)
      acd49(31)=-acd49(18)*acd49(25)
      acd49(32)=-acd49(13)*acd49(26)
      acd49(31)=acd49(31)+acd49(32)
      acd49(31)=acd49(4)*acd49(31)
      acd49(32)=acd49(19)*acd49(22)
      acd49(33)=acd49(14)*acd49(23)
      acd49(32)=acd49(32)+acd49(33)
      acd49(32)=acd49(2)*acd49(32)
      acd49(27)=acd49(32)+acd49(31)+acd49(30)+acd49(29)+acd49(28)+acd49(27)
      acd49(27)=acd49(21)*acd49(27)
      acd49(28)=acd49(9)*acd49(19)
      acd49(29)=acd49(7)*acd49(18)
      acd49(30)=acd49(5)*acd49(17)
      acd49(31)=acd49(3)*acd49(16)
      acd49(28)=acd49(31)+acd49(30)+acd49(28)+acd49(29)
      acd49(28)=acd49(15)*acd49(28)
      acd49(29)=acd49(9)*acd49(14)
      acd49(30)=acd49(7)*acd49(13)
      acd49(31)=acd49(5)*acd49(12)
      acd49(32)=acd49(3)*acd49(11)
      acd49(29)=acd49(32)+acd49(31)+acd49(29)+acd49(30)
      acd49(29)=acd49(10)*acd49(29)
      acd49(30)=acd49(8)*acd49(9)
      acd49(31)=acd49(6)*acd49(7)
      acd49(32)=acd49(4)*acd49(5)
      acd49(33)=acd49(2)*acd49(3)
      acd49(30)=acd49(33)+acd49(32)+acd49(30)+acd49(31)
      acd49(30)=acd49(1)*acd49(30)
      acd49(28)=acd49(30)+acd49(28)+acd49(29)
      brack=acd49(27)+2.0_ki*acd49(28)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd49h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd49
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd49h4
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
      qshift = k3
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
!---#[ subroutine reconstruct_d49:
   subroutine     reconstruct_d49(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_49:
      coeffs%coeffs_49%c0 = derivative(czip)
      coeffs%coeffs_49%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_49%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_49%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_49%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_49%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_49%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_49%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_49%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_49%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_49%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_49%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_49%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_49%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_49%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_49%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_49%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_49%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_49%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_49%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_49%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_49%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_49%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_49%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_49%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_49%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_49%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_49%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_49%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_49%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_49%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_49%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_49%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_49%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_49%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_49%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_49%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_49%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_49%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_49%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_49%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_49%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_49%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_49%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_49%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_49%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_49%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_49%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_49%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_49%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_49%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_49%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_49%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_49%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_49%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_49%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_49%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_49%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_49%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_49%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_49%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_49%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_49%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_49%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_49%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_49%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_49%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_49%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_49%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_49%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_49:
   end subroutine reconstruct_d49
!---#] subroutine reconstruct_d49:
end module     p0_gg_hepem_d49h4l1d
