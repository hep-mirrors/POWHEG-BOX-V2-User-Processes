module     p0_gg_hepem_d47h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX/HZ_loop/GoSa &
   ! &m_POWHEG/Virtual/p0_gg_hepem/helicity0d47h0l1d.f90
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
   public :: derivative , reconstruct_d47
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd47h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd47
      complex(ki) :: brack
      acd47(1)=dotproduct(qshift,qshift)
      acd47(2)=dotproduct(qshift,spvae1k4)
      acd47(3)=abb47(22)
      acd47(4)=dotproduct(qshift,spvae2k4)
      acd47(5)=abb47(16)
      acd47(6)=dotproduct(qshift,spvak5e1)
      acd47(7)=abb47(27)
      acd47(8)=dotproduct(qshift,spvak5e2)
      acd47(9)=abb47(13)
      acd47(10)=abb47(11)
      acd47(11)=dotproduct(qshift,spvae2e1)
      acd47(12)=abb47(33)
      acd47(13)=abb47(35)
      acd47(14)=dotproduct(qshift,spvak2e1)
      acd47(15)=abb47(17)
      acd47(16)=dotproduct(qshift,spval3e1)
      acd47(17)=abb47(32)
      acd47(18)=abb47(24)
      acd47(19)=abb47(21)
      acd47(20)=dotproduct(qshift,spvae1e2)
      acd47(21)=abb47(31)
      acd47(22)=abb47(14)
      acd47(23)=abb47(37)
      acd47(24)=abb47(26)
      acd47(25)=abb47(8)
      acd47(26)=dotproduct(qshift,spvae1k2)
      acd47(27)=abb47(28)
      acd47(28)=dotproduct(qshift,spvae1l3)
      acd47(29)=abb47(7)
      acd47(30)=abb47(29)
      acd47(31)=abb47(19)
      acd47(32)=abb47(15)
      acd47(33)=abb47(36)
      acd47(34)=abb47(25)
      acd47(35)=abb47(23)
      acd47(36)=abb47(5)
      acd47(37)=abb47(12)
      acd47(38)=abb47(6)
      acd47(39)=abb47(10)
      acd47(40)=abb47(18)
      acd47(41)=abb47(20)
      acd47(42)=abb47(9)
      acd47(43)=acd47(16)*acd47(23)
      acd47(44)=acd47(14)*acd47(22)
      acd47(45)=acd47(20)*acd47(24)
      acd47(46)=-acd47(1)*acd47(5)
      acd47(47)=-acd47(20)*acd47(12)
      acd47(47)=acd47(21)+acd47(47)
      acd47(47)=acd47(6)*acd47(47)
      acd47(43)=acd47(47)+acd47(46)+acd47(45)+acd47(44)-acd47(25)+acd47(43)
      acd47(43)=acd47(4)*acd47(43)
      acd47(44)=acd47(16)*acd47(17)
      acd47(45)=acd47(14)*acd47(15)
      acd47(46)=acd47(11)*acd47(18)
      acd47(47)=-acd47(1)*acd47(3)
      acd47(48)=acd47(11)*acd47(12)
      acd47(48)=acd47(13)+acd47(48)
      acd47(48)=acd47(8)*acd47(48)
      acd47(44)=acd47(48)+acd47(47)+acd47(46)+acd47(45)-acd47(19)+acd47(44)
      acd47(44)=acd47(2)*acd47(44)
      acd47(45)=acd47(28)*acd47(33)
      acd47(46)=acd47(26)*acd47(32)
      acd47(47)=acd47(11)*acd47(34)
      acd47(48)=-acd47(1)*acd47(9)
      acd47(45)=acd47(48)+acd47(47)+acd47(46)-acd47(35)+acd47(45)
      acd47(45)=acd47(8)*acd47(45)
      acd47(46)=acd47(28)*acd47(29)
      acd47(47)=acd47(26)*acd47(27)
      acd47(48)=acd47(20)*acd47(30)
      acd47(49)=-acd47(1)*acd47(7)
      acd47(46)=acd47(49)+acd47(48)+acd47(47)-acd47(31)+acd47(46)
      acd47(46)=acd47(6)*acd47(46)
      acd47(47)=-acd47(28)*acd47(39)
      acd47(48)=-acd47(26)*acd47(37)
      acd47(49)=-acd47(16)*acd47(38)
      acd47(50)=-acd47(14)*acd47(36)
      acd47(51)=-acd47(20)*acd47(41)
      acd47(52)=-acd47(11)*acd47(40)
      acd47(53)=acd47(1)*acd47(10)
      brack=acd47(42)+acd47(43)+acd47(44)+acd47(45)+acd47(46)+acd47(47)+acd47(4&
      &8)+acd47(49)+acd47(50)+acd47(51)+acd47(52)+acd47(53)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd47h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd47
      complex(ki) :: brack
      acd47(1)=qshift(iv1)
      acd47(2)=dotproduct(qshift,spvae1k4)
      acd47(3)=abb47(22)
      acd47(4)=dotproduct(qshift,spvae2k4)
      acd47(5)=abb47(16)
      acd47(6)=dotproduct(qshift,spvak5e1)
      acd47(7)=abb47(27)
      acd47(8)=dotproduct(qshift,spvak5e2)
      acd47(9)=abb47(13)
      acd47(10)=abb47(11)
      acd47(11)=spvae1k4(iv1)
      acd47(12)=dotproduct(qshift,qshift)
      acd47(13)=dotproduct(qshift,spvae2e1)
      acd47(14)=abb47(33)
      acd47(15)=abb47(35)
      acd47(16)=dotproduct(qshift,spvak2e1)
      acd47(17)=abb47(17)
      acd47(18)=dotproduct(qshift,spval3e1)
      acd47(19)=abb47(32)
      acd47(20)=abb47(24)
      acd47(21)=abb47(21)
      acd47(22)=spvae2k4(iv1)
      acd47(23)=dotproduct(qshift,spvae1e2)
      acd47(24)=abb47(31)
      acd47(25)=abb47(14)
      acd47(26)=abb47(37)
      acd47(27)=abb47(26)
      acd47(28)=abb47(8)
      acd47(29)=spvak5e1(iv1)
      acd47(30)=dotproduct(qshift,spvae1k2)
      acd47(31)=abb47(28)
      acd47(32)=dotproduct(qshift,spvae1l3)
      acd47(33)=abb47(7)
      acd47(34)=abb47(29)
      acd47(35)=abb47(19)
      acd47(36)=spvak5e2(iv1)
      acd47(37)=abb47(15)
      acd47(38)=abb47(36)
      acd47(39)=abb47(25)
      acd47(40)=abb47(23)
      acd47(41)=spvak2e1(iv1)
      acd47(42)=abb47(5)
      acd47(43)=spvae1k2(iv1)
      acd47(44)=abb47(12)
      acd47(45)=spval3e1(iv1)
      acd47(46)=abb47(6)
      acd47(47)=spvae1l3(iv1)
      acd47(48)=abb47(10)
      acd47(49)=spvae2e1(iv1)
      acd47(50)=abb47(18)
      acd47(51)=spvae1e2(iv1)
      acd47(52)=abb47(20)
      acd47(53)=-acd47(47)*acd47(38)
      acd47(54)=-acd47(43)*acd47(37)
      acd47(55)=-acd47(49)*acd47(39)
      acd47(56)=2.0_ki*acd47(1)
      acd47(57)=acd47(9)*acd47(56)
      acd47(58)=acd47(14)*acd47(13)
      acd47(58)=acd47(58)+acd47(15)
      acd47(59)=-acd47(11)*acd47(58)
      acd47(53)=acd47(59)+acd47(57)+acd47(55)+acd47(53)+acd47(54)
      acd47(53)=acd47(8)*acd47(53)
      acd47(54)=-acd47(47)*acd47(33)
      acd47(55)=-acd47(43)*acd47(31)
      acd47(57)=-acd47(51)*acd47(34)
      acd47(59)=acd47(7)*acd47(56)
      acd47(60)=acd47(14)*acd47(23)
      acd47(60)=acd47(60)-acd47(24)
      acd47(61)=acd47(22)*acd47(60)
      acd47(54)=acd47(61)+acd47(59)+acd47(57)+acd47(54)+acd47(55)
      acd47(54)=acd47(6)*acd47(54)
      acd47(55)=acd47(6)*acd47(14)
      acd47(55)=acd47(55)-acd47(27)
      acd47(55)=acd47(51)*acd47(55)
      acd47(57)=-acd47(45)*acd47(26)
      acd47(59)=-acd47(41)*acd47(25)
      acd47(61)=acd47(5)*acd47(56)
      acd47(60)=acd47(29)*acd47(60)
      acd47(55)=acd47(60)+acd47(61)+acd47(57)+acd47(59)+acd47(55)
      acd47(55)=acd47(4)*acd47(55)
      acd47(57)=-acd47(8)*acd47(14)
      acd47(57)=acd47(57)-acd47(20)
      acd47(57)=acd47(49)*acd47(57)
      acd47(59)=-acd47(45)*acd47(19)
      acd47(60)=-acd47(41)*acd47(17)
      acd47(61)=acd47(3)*acd47(56)
      acd47(58)=-acd47(36)*acd47(58)
      acd47(57)=acd47(58)+acd47(61)+acd47(59)+acd47(60)+acd47(57)
      acd47(57)=acd47(2)*acd47(57)
      acd47(58)=-acd47(32)*acd47(38)
      acd47(59)=-acd47(30)*acd47(37)
      acd47(60)=-acd47(13)*acd47(39)
      acd47(61)=acd47(12)*acd47(9)
      acd47(58)=acd47(61)+acd47(60)+acd47(59)+acd47(40)+acd47(58)
      acd47(58)=acd47(36)*acd47(58)
      acd47(59)=-acd47(32)*acd47(33)
      acd47(60)=-acd47(30)*acd47(31)
      acd47(61)=-acd47(23)*acd47(34)
      acd47(62)=acd47(12)*acd47(7)
      acd47(59)=acd47(62)+acd47(61)+acd47(60)+acd47(35)+acd47(59)
      acd47(59)=acd47(29)*acd47(59)
      acd47(60)=-acd47(18)*acd47(26)
      acd47(61)=-acd47(16)*acd47(25)
      acd47(62)=-acd47(23)*acd47(27)
      acd47(63)=acd47(12)*acd47(5)
      acd47(60)=acd47(63)+acd47(62)+acd47(61)+acd47(28)+acd47(60)
      acd47(60)=acd47(22)*acd47(60)
      acd47(61)=-acd47(18)*acd47(19)
      acd47(62)=-acd47(16)*acd47(17)
      acd47(63)=-acd47(13)*acd47(20)
      acd47(64)=acd47(12)*acd47(3)
      acd47(61)=acd47(64)+acd47(63)+acd47(62)+acd47(21)+acd47(61)
      acd47(61)=acd47(11)*acd47(61)
      acd47(62)=acd47(47)*acd47(48)
      acd47(63)=acd47(45)*acd47(46)
      acd47(64)=acd47(43)*acd47(44)
      acd47(65)=acd47(41)*acd47(42)
      acd47(66)=acd47(51)*acd47(52)
      acd47(67)=acd47(49)*acd47(50)
      acd47(56)=-acd47(10)*acd47(56)
      brack=acd47(53)+acd47(54)+acd47(55)+acd47(56)+acd47(57)+acd47(58)+acd47(5&
      &9)+acd47(60)+acd47(61)+acd47(62)+acd47(63)+acd47(64)+acd47(65)+acd47(66)&
      &+acd47(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd47h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=dotproduct(qshift,spvae1k4)
      acd47(3)=abb47(22)
      acd47(4)=dotproduct(qshift,spvae2k4)
      acd47(5)=abb47(16)
      acd47(6)=dotproduct(qshift,spvak5e1)
      acd47(7)=abb47(27)
      acd47(8)=dotproduct(qshift,spvak5e2)
      acd47(9)=abb47(13)
      acd47(10)=abb47(11)
      acd47(11)=qshift(iv1)
      acd47(12)=spvae1k4(iv2)
      acd47(13)=spvae2k4(iv2)
      acd47(14)=spvak5e1(iv2)
      acd47(15)=spvak5e2(iv2)
      acd47(16)=qshift(iv2)
      acd47(17)=spvae1k4(iv1)
      acd47(18)=spvae2k4(iv1)
      acd47(19)=spvak5e1(iv1)
      acd47(20)=spvak5e2(iv1)
      acd47(21)=dotproduct(qshift,spvae2e1)
      acd47(22)=abb47(33)
      acd47(23)=abb47(35)
      acd47(24)=spvak2e1(iv2)
      acd47(25)=abb47(17)
      acd47(26)=spval3e1(iv2)
      acd47(27)=abb47(32)
      acd47(28)=spvae2e1(iv2)
      acd47(29)=abb47(24)
      acd47(30)=spvak2e1(iv1)
      acd47(31)=spval3e1(iv1)
      acd47(32)=spvae2e1(iv1)
      acd47(33)=dotproduct(qshift,spvae1e2)
      acd47(34)=abb47(31)
      acd47(35)=abb47(14)
      acd47(36)=abb47(37)
      acd47(37)=spvae1e2(iv2)
      acd47(38)=abb47(26)
      acd47(39)=spvae1e2(iv1)
      acd47(40)=spvae1k2(iv2)
      acd47(41)=abb47(28)
      acd47(42)=spvae1l3(iv2)
      acd47(43)=abb47(7)
      acd47(44)=abb47(29)
      acd47(45)=spvae1k2(iv1)
      acd47(46)=spvae1l3(iv1)
      acd47(47)=abb47(15)
      acd47(48)=abb47(36)
      acd47(49)=abb47(25)
      acd47(50)=acd47(28)*acd47(20)
      acd47(51)=acd47(32)*acd47(15)
      acd47(50)=acd47(50)+acd47(51)
      acd47(51)=acd47(2)*acd47(50)
      acd47(52)=acd47(37)*acd47(19)
      acd47(53)=acd47(39)*acd47(14)
      acd47(52)=acd47(52)+acd47(53)
      acd47(53)=-acd47(4)*acd47(52)
      acd47(54)=acd47(37)*acd47(18)
      acd47(55)=acd47(39)*acd47(13)
      acd47(54)=acd47(54)+acd47(55)
      acd47(55)=-acd47(6)*acd47(54)
      acd47(56)=acd47(28)*acd47(17)
      acd47(57)=acd47(32)*acd47(12)
      acd47(56)=acd47(56)+acd47(57)
      acd47(57)=acd47(8)*acd47(56)
      acd47(58)=acd47(17)*acd47(15)
      acd47(59)=acd47(20)*acd47(12)
      acd47(58)=acd47(58)+acd47(59)
      acd47(59)=acd47(21)*acd47(58)
      acd47(60)=acd47(18)*acd47(14)
      acd47(61)=acd47(19)*acd47(13)
      acd47(60)=acd47(60)+acd47(61)
      acd47(61)=-acd47(33)*acd47(60)
      acd47(51)=acd47(61)+acd47(59)+acd47(57)+acd47(55)+acd47(53)+acd47(51)
      acd47(51)=acd47(22)*acd47(51)
      acd47(53)=-acd47(11)*acd47(12)
      acd47(55)=-acd47(16)*acd47(17)
      acd47(57)=-acd47(2)*acd47(1)
      acd47(53)=acd47(57)+acd47(53)+acd47(55)
      acd47(53)=acd47(3)*acd47(53)
      acd47(55)=-acd47(11)*acd47(13)
      acd47(57)=-acd47(16)*acd47(18)
      acd47(59)=-acd47(4)*acd47(1)
      acd47(55)=acd47(59)+acd47(55)+acd47(57)
      acd47(55)=acd47(5)*acd47(55)
      acd47(57)=-acd47(11)*acd47(14)
      acd47(59)=-acd47(16)*acd47(19)
      acd47(61)=-acd47(6)*acd47(1)
      acd47(57)=acd47(61)+acd47(57)+acd47(59)
      acd47(57)=acd47(7)*acd47(57)
      acd47(59)=-acd47(11)*acd47(15)
      acd47(61)=-acd47(16)*acd47(20)
      acd47(62)=-acd47(8)*acd47(1)
      acd47(59)=acd47(62)+acd47(59)+acd47(61)
      acd47(59)=acd47(9)*acd47(59)
      acd47(61)=acd47(10)*acd47(1)
      acd47(53)=acd47(61)+acd47(53)+acd47(55)+acd47(57)+acd47(59)
      acd47(55)=acd47(24)*acd47(17)
      acd47(57)=acd47(30)*acd47(12)
      acd47(55)=acd47(57)+acd47(55)
      acd47(55)=acd47(25)*acd47(55)
      acd47(57)=acd47(26)*acd47(17)
      acd47(59)=acd47(31)*acd47(12)
      acd47(57)=acd47(59)+acd47(57)
      acd47(57)=acd47(27)*acd47(57)
      acd47(59)=acd47(40)*acd47(19)
      acd47(61)=acd47(45)*acd47(14)
      acd47(59)=acd47(61)+acd47(59)
      acd47(59)=acd47(41)*acd47(59)
      acd47(61)=acd47(42)*acd47(19)
      acd47(62)=acd47(46)*acd47(14)
      acd47(61)=acd47(62)+acd47(61)
      acd47(61)=acd47(43)*acd47(61)
      acd47(58)=acd47(23)*acd47(58)
      acd47(56)=acd47(29)*acd47(56)
      acd47(60)=acd47(34)*acd47(60)
      acd47(62)=acd47(24)*acd47(18)
      acd47(63)=acd47(30)*acd47(13)
      acd47(62)=acd47(62)+acd47(63)
      acd47(62)=acd47(35)*acd47(62)
      acd47(63)=acd47(26)*acd47(18)
      acd47(64)=acd47(31)*acd47(13)
      acd47(63)=acd47(63)+acd47(64)
      acd47(63)=acd47(36)*acd47(63)
      acd47(54)=acd47(38)*acd47(54)
      acd47(52)=acd47(44)*acd47(52)
      acd47(64)=acd47(40)*acd47(20)
      acd47(65)=acd47(45)*acd47(15)
      acd47(64)=acd47(64)+acd47(65)
      acd47(64)=acd47(47)*acd47(64)
      acd47(65)=acd47(42)*acd47(20)
      acd47(66)=acd47(46)*acd47(15)
      acd47(65)=acd47(65)+acd47(66)
      acd47(65)=acd47(48)*acd47(65)
      acd47(50)=acd47(49)*acd47(50)
      brack=acd47(50)+acd47(51)+acd47(52)+2.0_ki*acd47(53)+acd47(54)+acd47(55)+&
      &acd47(56)+acd47(57)+acd47(58)+acd47(59)+acd47(60)+acd47(61)+acd47(62)+ac&
      &d47(63)+acd47(64)+acd47(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd47h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(33) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=spvae1k4(iv3)
      acd47(3)=abb47(22)
      acd47(4)=spvae2k4(iv3)
      acd47(5)=abb47(16)
      acd47(6)=spvak5e1(iv3)
      acd47(7)=abb47(27)
      acd47(8)=spvak5e2(iv3)
      acd47(9)=abb47(13)
      acd47(10)=d(iv1,iv3)
      acd47(11)=spvae1k4(iv2)
      acd47(12)=spvae2k4(iv2)
      acd47(13)=spvak5e1(iv2)
      acd47(14)=spvak5e2(iv2)
      acd47(15)=d(iv2,iv3)
      acd47(16)=spvae1k4(iv1)
      acd47(17)=spvae2k4(iv1)
      acd47(18)=spvak5e1(iv1)
      acd47(19)=spvak5e2(iv1)
      acd47(20)=spvae2e1(iv3)
      acd47(21)=abb47(33)
      acd47(22)=spvae2e1(iv2)
      acd47(23)=spvae2e1(iv1)
      acd47(24)=spvae1e2(iv3)
      acd47(25)=spvae1e2(iv2)
      acd47(26)=spvae1e2(iv1)
      acd47(27)=acd47(13)*acd47(17)
      acd47(28)=acd47(12)*acd47(18)
      acd47(27)=acd47(28)+acd47(27)
      acd47(27)=acd47(24)*acd47(27)
      acd47(28)=-acd47(14)*acd47(16)
      acd47(29)=-acd47(11)*acd47(19)
      acd47(28)=acd47(29)+acd47(28)
      acd47(28)=acd47(20)*acd47(28)
      acd47(29)=-acd47(16)*acd47(22)
      acd47(30)=-acd47(11)*acd47(23)
      acd47(29)=acd47(29)+acd47(30)
      acd47(29)=acd47(8)*acd47(29)
      acd47(30)=acd47(17)*acd47(25)
      acd47(31)=acd47(12)*acd47(26)
      acd47(30)=acd47(30)+acd47(31)
      acd47(30)=acd47(6)*acd47(30)
      acd47(31)=acd47(18)*acd47(25)
      acd47(32)=acd47(13)*acd47(26)
      acd47(31)=acd47(31)+acd47(32)
      acd47(31)=acd47(4)*acd47(31)
      acd47(32)=-acd47(19)*acd47(22)
      acd47(33)=-acd47(14)*acd47(23)
      acd47(32)=acd47(32)+acd47(33)
      acd47(32)=acd47(2)*acd47(32)
      acd47(27)=acd47(32)+acd47(31)+acd47(30)+acd47(29)+acd47(28)+acd47(27)
      acd47(27)=acd47(21)*acd47(27)
      acd47(28)=acd47(9)*acd47(19)
      acd47(29)=acd47(7)*acd47(18)
      acd47(30)=acd47(5)*acd47(17)
      acd47(31)=acd47(3)*acd47(16)
      acd47(28)=acd47(31)+acd47(30)+acd47(28)+acd47(29)
      acd47(28)=acd47(15)*acd47(28)
      acd47(29)=acd47(9)*acd47(14)
      acd47(30)=acd47(7)*acd47(13)
      acd47(31)=acd47(5)*acd47(12)
      acd47(32)=acd47(3)*acd47(11)
      acd47(29)=acd47(32)+acd47(31)+acd47(29)+acd47(30)
      acd47(29)=acd47(10)*acd47(29)
      acd47(30)=acd47(8)*acd47(9)
      acd47(31)=acd47(6)*acd47(7)
      acd47(32)=acd47(4)*acd47(5)
      acd47(33)=acd47(2)*acd47(3)
      acd47(30)=acd47(33)+acd47(32)+acd47(30)+acd47(31)
      acd47(30)=acd47(1)*acd47(30)
      acd47(28)=acd47(30)+acd47(28)+acd47(29)
      brack=acd47(27)+2.0_ki*acd47(28)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hepem_model
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_color
      use p0_gg_hepem_abbrevd47h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd47
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hepem_globalsl1, only: epspow
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_abbrevd47h0
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
!---#[ subroutine reconstruct_d47:
   subroutine     reconstruct_d47(coeffs)
      use p0_gg_hepem_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_47:
      coeffs%coeffs_47%c0 = derivative(czip)
      coeffs%coeffs_47%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_47%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_47%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_47%c1(1,4) = derivative(czip,1,1,1,1)/ 24.0_ki
      coeffs%coeffs_47%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_47%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_47%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_47%c1(2,4) = derivative(czip,2,2,2,2)/ 24.0_ki
      coeffs%coeffs_47%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_47%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_47%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_47%c1(3,4) = derivative(czip,3,3,3,3)/ 24.0_ki
      coeffs%coeffs_47%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_47%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_47%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_47%c1(4,4) = derivative(czip,4,4,4,4)/ 24.0_ki
      coeffs%coeffs_47%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_47%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_47%c2(1,3) = -derivative(czip,1,2,2,2)/ 6.0_ki
      coeffs%coeffs_47%c2(1,4) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_47%c2(1,5) = derivative(czip,1,1,2,2)/ 4.0_ki
      coeffs%coeffs_47%c2(1,6) = -derivative(czip,1,1,1,2)/ 6.0_ki
      coeffs%coeffs_47%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_47%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_47%c2(2,3) = -derivative(czip,1,3,3,3)/ 6.0_ki
      coeffs%coeffs_47%c2(2,4) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_47%c2(2,5) = derivative(czip,1,1,3,3)/ 4.0_ki
      coeffs%coeffs_47%c2(2,6) = -derivative(czip,1,1,1,3)/ 6.0_ki
      coeffs%coeffs_47%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_47%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_47%c2(3,3) = -derivative(czip,1,4,4,4)/ 6.0_ki
      coeffs%coeffs_47%c2(3,4) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_47%c2(3,5) = derivative(czip,1,1,4,4)/ 4.0_ki
      coeffs%coeffs_47%c2(3,6) = -derivative(czip,1,1,1,4)/ 6.0_ki
      coeffs%coeffs_47%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_47%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_47%c2(4,3) = derivative(czip,2,3,3,3)/ 6.0_ki
      coeffs%coeffs_47%c2(4,4) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_47%c2(4,5) = derivative(czip,2,2,3,3)/ 4.0_ki
      coeffs%coeffs_47%c2(4,6) = derivative(czip,2,2,2,3)/ 6.0_ki
      coeffs%coeffs_47%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_47%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_47%c2(5,3) = derivative(czip,2,4,4,4)/ 6.0_ki
      coeffs%coeffs_47%c2(5,4) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_47%c2(5,5) = derivative(czip,2,2,4,4)/ 4.0_ki
      coeffs%coeffs_47%c2(5,6) = derivative(czip,2,2,2,4)/ 6.0_ki
      coeffs%coeffs_47%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_47%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_47%c2(6,3) = derivative(czip,3,4,4,4)/ 6.0_ki
      coeffs%coeffs_47%c2(6,4) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_47%c2(6,5) = derivative(czip,3,3,4,4)/ 4.0_ki
      coeffs%coeffs_47%c2(6,6) = derivative(czip,3,3,3,4)/ 6.0_ki
      coeffs%coeffs_47%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_47%c3(1,2) = -derivative(czip,1,2,3,3)/ 2.0_ki
      coeffs%coeffs_47%c3(1,3) = -derivative(czip,1,2,2,3)/ 2.0_ki
      coeffs%coeffs_47%c3(1,4) = derivative(czip,1,1,2,3)/ 2.0_ki
      coeffs%coeffs_47%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_47%c3(2,2) = -derivative(czip,1,2,4,4)/ 2.0_ki
      coeffs%coeffs_47%c3(2,3) = -derivative(czip,1,2,2,4)/ 2.0_ki
      coeffs%coeffs_47%c3(2,4) = derivative(czip,1,1,2,4)/ 2.0_ki
      coeffs%coeffs_47%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_47%c3(3,2) = -derivative(czip,1,3,4,4)/ 2.0_ki
      coeffs%coeffs_47%c3(3,3) = -derivative(czip,1,3,3,4)/ 2.0_ki
      coeffs%coeffs_47%c3(3,4) = derivative(czip,1,1,3,4)/ 2.0_ki
      coeffs%coeffs_47%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_47%c3(4,2) = derivative(czip,2,3,4,4)/ 2.0_ki
      coeffs%coeffs_47%c3(4,3) = derivative(czip,2,3,3,4)/ 2.0_ki
      coeffs%coeffs_47%c3(4,4) = derivative(czip,2,2,3,4)/ 2.0_ki
      coeffs%coeffs_47%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_47:
   end subroutine reconstruct_d47
!---#] subroutine reconstruct_d47:
end module     p0_gg_hepem_d47h0l1d
