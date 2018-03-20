module     p0_gg_hhg_d63h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d63h1l1d_qp.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   integer, private :: iv5
   real(ki), dimension(4), private :: qshift
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd63
      complex(ki) :: brack
      acd63(1)=dotproduct(qshift,qshift)
      acd63(2)=dotproduct(qshift,spvak2k1)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(25)
      acd63(5)=abb63(13)
      acd63(6)=abb63(33)
      acd63(7)=dotproduct(qshift,spvak2l4)
      acd63(8)=abb63(32)
      acd63(9)=abb63(14)
      acd63(10)=abb63(23)
      acd63(11)=abb63(16)
      acd63(12)=abb63(9)
      acd63(13)=abb63(18)
      acd63(14)=abb63(22)
      acd63(15)=abb63(28)
      acd63(16)=dotproduct(qshift,spval4k1)
      acd63(17)=abb63(8)
      acd63(18)=abb63(11)
      acd63(19)=dotproduct(qshift,spvak1k5)
      acd63(20)=dotproduct(qshift,spval4k5)
      acd63(21)=abb63(15)
      acd63(22)=abb63(17)
      acd63(23)=abb63(38)
      acd63(24)=abb63(20)
      acd63(25)=abb63(10)
      acd63(26)=abb63(19)
      acd63(27)=abb63(35)
      acd63(28)=abb63(12)
      acd63(29)=abb63(26)
      acd63(30)=abb63(29)
      acd63(31)=abb63(27)
      acd63(32)=abb63(24)
      acd63(33)=abb63(21)
      acd63(34)=-acd63(16)*acd63(17)
      acd63(35)=-acd63(1)*acd63(4)
      acd63(36)=-acd63(7)*acd63(15)
      acd63(37)=-acd63(2)*acd63(12)
      acd63(34)=acd63(37)+acd63(36)+acd63(35)+acd63(18)+acd63(34)
      acd63(34)=acd63(2)*acd63(34)
      acd63(35)=-acd63(16)*acd63(25)
      acd63(36)=acd63(1)*acd63(6)
      acd63(37)=-acd63(2)*acd63(14)
      acd63(35)=acd63(37)+acd63(36)+acd63(26)+acd63(35)
      acd63(35)=acd63(3)*acd63(35)
      acd63(36)=acd63(16)*acd63(21)
      acd63(37)=-acd63(1)*acd63(8)
      acd63(36)=acd63(37)+acd63(27)+acd63(36)
      acd63(36)=acd63(7)*acd63(36)
      acd63(37)=acd63(16)*acd63(28)
      acd63(38)=-acd63(1)*acd63(9)
      acd63(34)=acd63(35)+acd63(34)+acd63(36)+acd63(38)-acd63(29)+acd63(37)
      acd63(34)=acd63(3)*acd63(34)
      acd63(35)=acd63(21)*acd63(20)
      acd63(36)=acd63(8)*acd63(19)
      acd63(35)=acd63(36)+acd63(22)+acd63(35)
      acd63(35)=acd63(7)*acd63(35)
      acd63(36)=acd63(16)*acd63(23)
      acd63(37)=-acd63(1)*acd63(5)
      acd63(38)=acd63(2)*acd63(13)
      acd63(35)=acd63(38)+acd63(35)+acd63(37)-acd63(24)+acd63(36)
      acd63(35)=acd63(2)*acd63(35)
      acd63(36)=acd63(16)*acd63(30)
      acd63(37)=-acd63(1)*acd63(10)
      acd63(36)=acd63(37)-acd63(31)+acd63(36)
      acd63(36)=acd63(7)*acd63(36)
      acd63(37)=-acd63(16)*acd63(32)
      acd63(38)=acd63(1)*acd63(11)
      brack=acd63(33)+acd63(34)+acd63(35)+acd63(36)+acd63(37)+acd63(38)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd63
      complex(ki) :: brack
      acd63(1)=qshift(iv1)
      acd63(2)=dotproduct(qshift,spvak2k1)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(25)
      acd63(5)=abb63(13)
      acd63(6)=abb63(33)
      acd63(7)=dotproduct(qshift,spvak2l4)
      acd63(8)=abb63(32)
      acd63(9)=abb63(14)
      acd63(10)=abb63(23)
      acd63(11)=abb63(16)
      acd63(12)=spvak2k1(iv1)
      acd63(13)=dotproduct(qshift,qshift)
      acd63(14)=abb63(9)
      acd63(15)=abb63(18)
      acd63(16)=abb63(22)
      acd63(17)=abb63(28)
      acd63(18)=dotproduct(qshift,spval4k1)
      acd63(19)=abb63(8)
      acd63(20)=abb63(11)
      acd63(21)=dotproduct(qshift,spvak1k5)
      acd63(22)=dotproduct(qshift,spval4k5)
      acd63(23)=abb63(15)
      acd63(24)=abb63(17)
      acd63(25)=abb63(38)
      acd63(26)=abb63(20)
      acd63(27)=spvak2k5(iv1)
      acd63(28)=abb63(10)
      acd63(29)=abb63(19)
      acd63(30)=abb63(35)
      acd63(31)=abb63(12)
      acd63(32)=abb63(26)
      acd63(33)=spvak2l4(iv1)
      acd63(34)=abb63(29)
      acd63(35)=abb63(27)
      acd63(36)=spvak1k5(iv1)
      acd63(37)=spval4k5(iv1)
      acd63(38)=spval4k1(iv1)
      acd63(39)=abb63(24)
      acd63(40)=acd63(38)*acd63(19)
      acd63(41)=2.0_ki*acd63(1)
      acd63(42)=acd63(4)*acd63(41)
      acd63(43)=acd63(33)*acd63(17)
      acd63(44)=2.0_ki*acd63(12)
      acd63(45)=acd63(14)*acd63(44)
      acd63(46)=2.0_ki*acd63(27)
      acd63(47)=acd63(16)*acd63(46)
      acd63(40)=acd63(47)+acd63(45)+acd63(43)+acd63(40)+acd63(42)
      acd63(40)=acd63(2)*acd63(40)
      acd63(42)=-acd63(38)*acd63(23)
      acd63(43)=acd63(8)*acd63(41)
      acd63(45)=acd63(12)*acd63(17)
      acd63(42)=acd63(45)+acd63(42)+acd63(43)
      acd63(42)=acd63(7)*acd63(42)
      acd63(43)=acd63(38)*acd63(28)
      acd63(45)=-acd63(6)*acd63(41)
      acd63(47)=acd63(12)*acd63(16)
      acd63(43)=acd63(47)+acd63(43)+acd63(45)
      acd63(43)=acd63(3)*acd63(43)
      acd63(45)=acd63(18)*acd63(23)
      acd63(47)=acd63(13)*acd63(8)
      acd63(45)=acd63(30)+acd63(45)-acd63(47)
      acd63(47)=-acd63(33)*acd63(45)
      acd63(48)=acd63(18)*acd63(19)
      acd63(49)=acd63(13)*acd63(4)
      acd63(48)=-acd63(20)+acd63(48)+acd63(49)
      acd63(49)=acd63(12)*acd63(48)
      acd63(50)=acd63(18)*acd63(28)
      acd63(51)=-acd63(13)*acd63(6)
      acd63(50)=acd63(51)-acd63(29)+acd63(50)
      acd63(46)=acd63(50)*acd63(46)
      acd63(50)=-acd63(38)*acd63(31)
      acd63(51)=acd63(9)*acd63(41)
      acd63(40)=acd63(43)+acd63(40)+acd63(46)+acd63(42)+acd63(49)+acd63(47)+acd&
      &63(50)+acd63(51)
      acd63(40)=acd63(3)*acd63(40)
      acd63(42)=acd63(7)*acd63(17)
      acd63(43)=acd63(2)*acd63(14)
      acd63(42)=acd63(43)+acd63(42)+acd63(48)
      acd63(42)=acd63(27)*acd63(42)
      acd63(43)=acd63(23)*acd63(22)
      acd63(46)=acd63(8)*acd63(21)
      acd63(43)=acd63(24)+acd63(43)+acd63(46)
      acd63(46)=-acd63(33)*acd63(43)
      acd63(47)=-acd63(23)*acd63(37)
      acd63(48)=-acd63(8)*acd63(36)
      acd63(47)=acd63(47)+acd63(48)
      acd63(47)=acd63(7)*acd63(47)
      acd63(48)=-acd63(38)*acd63(25)
      acd63(49)=acd63(5)*acd63(41)
      acd63(44)=-acd63(15)*acd63(44)
      acd63(42)=acd63(47)+acd63(44)+acd63(46)+acd63(48)+acd63(49)+acd63(42)
      acd63(42)=acd63(2)*acd63(42)
      acd63(43)=-acd63(12)*acd63(43)
      acd63(44)=-acd63(38)*acd63(34)
      acd63(46)=acd63(10)*acd63(41)
      acd63(43)=acd63(43)+acd63(44)+acd63(46)
      acd63(43)=acd63(7)*acd63(43)
      acd63(44)=-acd63(7)*acd63(45)
      acd63(45)=-acd63(18)*acd63(31)
      acd63(46)=acd63(13)*acd63(9)
      acd63(44)=acd63(44)+acd63(46)+acd63(32)+acd63(45)
      acd63(44)=acd63(27)*acd63(44)
      acd63(45)=-acd63(18)*acd63(34)
      acd63(46)=acd63(13)*acd63(10)
      acd63(45)=acd63(46)+acd63(35)+acd63(45)
      acd63(45)=acd63(33)*acd63(45)
      acd63(46)=-acd63(18)*acd63(25)
      acd63(47)=acd63(13)*acd63(5)
      acd63(46)=acd63(47)+acd63(26)+acd63(46)
      acd63(46)=acd63(12)*acd63(46)
      acd63(47)=acd63(38)*acd63(39)
      acd63(41)=-acd63(11)*acd63(41)
      brack=acd63(40)+acd63(41)+acd63(42)+acd63(43)+acd63(44)+acd63(45)+acd63(4&
      &6)+acd63(47)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd63
      complex(ki) :: brack
      acd63(1)=d(iv1,iv2)
      acd63(2)=dotproduct(qshift,spvak2k1)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(25)
      acd63(5)=abb63(13)
      acd63(6)=abb63(33)
      acd63(7)=dotproduct(qshift,spvak2l4)
      acd63(8)=abb63(32)
      acd63(9)=abb63(14)
      acd63(10)=abb63(23)
      acd63(11)=abb63(16)
      acd63(12)=qshift(iv1)
      acd63(13)=spvak2k1(iv2)
      acd63(14)=spvak2k5(iv2)
      acd63(15)=spvak2l4(iv2)
      acd63(16)=qshift(iv2)
      acd63(17)=spvak2k1(iv1)
      acd63(18)=spvak2k5(iv1)
      acd63(19)=spvak2l4(iv1)
      acd63(20)=abb63(9)
      acd63(21)=abb63(18)
      acd63(22)=dotproduct(qshift,qshift)
      acd63(23)=abb63(22)
      acd63(24)=abb63(28)
      acd63(25)=dotproduct(qshift,spval4k1)
      acd63(26)=abb63(8)
      acd63(27)=abb63(11)
      acd63(28)=dotproduct(qshift,spvak1k5)
      acd63(29)=dotproduct(qshift,spval4k5)
      acd63(30)=abb63(15)
      acd63(31)=abb63(17)
      acd63(32)=spvak1k5(iv2)
      acd63(33)=spval4k5(iv2)
      acd63(34)=spval4k1(iv2)
      acd63(35)=abb63(38)
      acd63(36)=spvak1k5(iv1)
      acd63(37)=spval4k5(iv1)
      acd63(38)=spval4k1(iv1)
      acd63(39)=abb63(10)
      acd63(40)=abb63(19)
      acd63(41)=abb63(35)
      acd63(42)=abb63(12)
      acd63(43)=abb63(29)
      acd63(44)=acd63(26)*acd63(25)
      acd63(45)=acd63(4)*acd63(22)
      acd63(46)=acd63(7)*acd63(24)
      acd63(47)=2.0_ki*acd63(2)
      acd63(47)=acd63(47)*acd63(20)
      acd63(44)=acd63(46)+acd63(44)+acd63(45)+acd63(47)-acd63(27)
      acd63(45)=-acd63(17)*acd63(44)
      acd63(46)=acd63(38)*acd63(26)
      acd63(47)=acd63(19)*acd63(24)
      acd63(48)=2.0_ki*acd63(12)
      acd63(49)=acd63(48)*acd63(4)
      acd63(46)=acd63(49)+acd63(46)+acd63(47)
      acd63(47)=-acd63(2)*acd63(46)
      acd63(49)=-acd63(38)*acd63(39)
      acd63(50)=acd63(6)*acd63(48)
      acd63(51)=-acd63(17)*acd63(23)
      acd63(49)=acd63(51)+acd63(49)+acd63(50)
      acd63(50)=2.0_ki*acd63(3)
      acd63(49)=acd63(49)*acd63(50)
      acd63(51)=-acd63(25)*acd63(39)
      acd63(52)=acd63(22)*acd63(6)
      acd63(53)=-acd63(2)*acd63(23)
      acd63(51)=acd63(53)+acd63(52)+acd63(40)+acd63(51)
      acd63(51)=acd63(18)*acd63(51)
      acd63(52)=acd63(8)*acd63(7)
      acd63(53)=acd63(52)+acd63(9)
      acd63(54)=-acd63(48)*acd63(53)
      acd63(55)=acd63(30)*acd63(25)
      acd63(56)=acd63(8)*acd63(22)
      acd63(55)=acd63(41)+acd63(55)-acd63(56)
      acd63(56)=acd63(19)*acd63(55)
      acd63(57)=acd63(7)*acd63(30)
      acd63(58)=acd63(57)+acd63(42)
      acd63(59)=acd63(38)*acd63(58)
      acd63(45)=2.0_ki*acd63(51)+acd63(49)+acd63(45)+acd63(47)+acd63(56)+acd63(&
      &54)+acd63(59)
      acd63(45)=acd63(14)*acd63(45)
      acd63(47)=acd63(30)*acd63(29)
      acd63(49)=acd63(8)*acd63(28)
      acd63(47)=acd63(31)+acd63(47)+acd63(49)
      acd63(49)=acd63(19)*acd63(47)
      acd63(51)=acd63(38)*acd63(35)
      acd63(54)=-acd63(5)*acd63(48)
      acd63(56)=acd63(37)*acd63(57)
      acd63(59)=acd63(36)*acd63(52)
      acd63(60)=2.0_ki*acd63(17)
      acd63(61)=acd63(21)*acd63(60)
      acd63(49)=acd63(61)+acd63(49)+acd63(59)+acd63(56)+acd63(51)+acd63(54)
      acd63(49)=acd63(13)*acd63(49)
      acd63(51)=2.0_ki*acd63(4)
      acd63(51)=-acd63(2)*acd63(51)
      acd63(54)=acd63(6)*acd63(50)
      acd63(51)=-2.0_ki*acd63(53)+acd63(54)+acd63(51)
      acd63(51)=acd63(1)*acd63(51)
      acd63(54)=acd63(34)*acd63(26)
      acd63(56)=acd63(15)*acd63(24)
      acd63(59)=2.0_ki*acd63(16)
      acd63(61)=acd63(59)*acd63(4)
      acd63(54)=acd63(61)+acd63(54)+acd63(56)
      acd63(56)=-acd63(17)*acd63(54)
      acd63(60)=-acd63(20)*acd63(60)
      acd63(46)=acd63(60)-acd63(46)
      acd63(46)=acd63(13)*acd63(46)
      acd63(60)=acd63(30)*acd63(34)
      acd63(61)=-acd63(8)*acd63(59)
      acd63(60)=acd63(60)+acd63(61)
      acd63(60)=acd63(19)*acd63(60)
      acd63(61)=acd63(30)*acd63(38)
      acd63(62)=-acd63(8)*acd63(48)
      acd63(61)=acd63(61)+acd63(62)
      acd63(61)=acd63(15)*acd63(61)
      acd63(46)=acd63(46)+acd63(56)+acd63(61)+acd63(60)+acd63(51)
      acd63(46)=acd63(3)*acd63(46)
      acd63(44)=-acd63(13)*acd63(44)
      acd63(51)=-acd63(2)*acd63(54)
      acd63(54)=-acd63(34)*acd63(39)
      acd63(56)=acd63(6)*acd63(59)
      acd63(60)=-acd63(13)*acd63(23)
      acd63(54)=acd63(60)+acd63(54)+acd63(56)
      acd63(50)=acd63(54)*acd63(50)
      acd63(53)=-acd63(59)*acd63(53)
      acd63(54)=acd63(15)*acd63(55)
      acd63(55)=acd63(34)*acd63(58)
      acd63(44)=acd63(50)+acd63(44)+acd63(51)+acd63(54)+acd63(53)+acd63(55)
      acd63(44)=acd63(18)*acd63(44)
      acd63(47)=acd63(15)*acd63(47)
      acd63(50)=acd63(34)*acd63(35)
      acd63(51)=-acd63(5)*acd63(59)
      acd63(53)=acd63(33)*acd63(57)
      acd63(52)=acd63(32)*acd63(52)
      acd63(47)=acd63(47)+acd63(52)+acd63(53)+acd63(50)+acd63(51)
      acd63(47)=acd63(17)*acd63(47)
      acd63(50)=acd63(30)*acd63(33)
      acd63(51)=acd63(8)*acd63(32)
      acd63(50)=acd63(50)+acd63(51)
      acd63(50)=acd63(19)*acd63(50)
      acd63(51)=acd63(30)*acd63(37)
      acd63(52)=acd63(8)*acd63(36)
      acd63(51)=acd63(51)+acd63(52)
      acd63(51)=acd63(15)*acd63(51)
      acd63(52)=2.0_ki*acd63(1)
      acd63(52)=-acd63(5)*acd63(52)
      acd63(50)=acd63(51)+acd63(52)+acd63(50)
      acd63(50)=acd63(2)*acd63(50)
      acd63(51)=acd63(34)*acd63(43)
      acd63(52)=-acd63(10)*acd63(59)
      acd63(51)=acd63(51)+acd63(52)
      acd63(51)=acd63(19)*acd63(51)
      acd63(52)=acd63(38)*acd63(43)
      acd63(48)=-acd63(10)*acd63(48)
      acd63(48)=acd63(52)+acd63(48)
      acd63(48)=acd63(15)*acd63(48)
      acd63(52)=-acd63(7)*acd63(10)
      acd63(52)=acd63(11)+acd63(52)
      acd63(52)=acd63(1)*acd63(52)
      brack=acd63(44)+acd63(45)+acd63(46)+acd63(47)+acd63(48)+acd63(49)+acd63(5&
      &0)+acd63(51)+2.0_ki*acd63(52)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd63
      complex(ki) :: brack
      acd63(1)=d(iv1,iv2)
      acd63(2)=spvak2k1(iv3)
      acd63(3)=dotproduct(qshift,spvak2k5)
      acd63(4)=abb63(25)
      acd63(5)=abb63(13)
      acd63(6)=spvak2k5(iv3)
      acd63(7)=dotproduct(qshift,spvak2k1)
      acd63(8)=abb63(33)
      acd63(9)=dotproduct(qshift,spvak2l4)
      acd63(10)=abb63(32)
      acd63(11)=abb63(14)
      acd63(12)=spvak2l4(iv3)
      acd63(13)=abb63(23)
      acd63(14)=d(iv1,iv3)
      acd63(15)=spvak2k1(iv2)
      acd63(16)=spvak2k5(iv2)
      acd63(17)=spvak2l4(iv2)
      acd63(18)=d(iv2,iv3)
      acd63(19)=spvak2k1(iv1)
      acd63(20)=spvak2k5(iv1)
      acd63(21)=spvak2l4(iv1)
      acd63(22)=qshift(iv1)
      acd63(23)=qshift(iv2)
      acd63(24)=qshift(iv3)
      acd63(25)=abb63(9)
      acd63(26)=abb63(22)
      acd63(27)=abb63(28)
      acd63(28)=spval4k1(iv3)
      acd63(29)=abb63(8)
      acd63(30)=spval4k1(iv2)
      acd63(31)=spvak1k5(iv3)
      acd63(32)=spval4k5(iv3)
      acd63(33)=abb63(15)
      acd63(34)=spvak1k5(iv2)
      acd63(35)=spval4k5(iv2)
      acd63(36)=spval4k1(iv1)
      acd63(37)=spvak1k5(iv1)
      acd63(38)=spval4k5(iv1)
      acd63(39)=abb63(10)
      acd63(40)=acd63(1)*acd63(6)
      acd63(41)=acd63(14)*acd63(16)
      acd63(42)=acd63(18)*acd63(20)
      acd63(40)=acd63(42)+acd63(40)+acd63(41)
      acd63(41)=2.0_ki*acd63(8)
      acd63(42)=-acd63(41)*acd63(40)
      acd63(43)=acd63(12)*acd63(10)
      acd63(44)=acd63(4)*acd63(2)
      acd63(44)=acd63(44)+acd63(43)
      acd63(44)=acd63(1)*acd63(44)
      acd63(45)=acd63(17)*acd63(10)
      acd63(46)=acd63(4)*acd63(15)
      acd63(46)=acd63(46)+acd63(45)
      acd63(46)=acd63(14)*acd63(46)
      acd63(47)=acd63(21)*acd63(10)
      acd63(48)=acd63(4)*acd63(19)
      acd63(48)=acd63(48)+acd63(47)
      acd63(48)=acd63(18)*acd63(48)
      acd63(42)=acd63(42)+acd63(48)+acd63(44)+acd63(46)
      acd63(42)=acd63(3)*acd63(42)
      acd63(44)=acd63(2)*acd63(16)
      acd63(46)=acd63(15)*acd63(6)
      acd63(44)=acd63(44)+acd63(46)
      acd63(46)=acd63(4)*acd63(44)
      acd63(48)=acd63(16)*acd63(6)
      acd63(49)=-acd63(41)*acd63(48)
      acd63(50)=acd63(16)*acd63(43)
      acd63(51)=acd63(6)*acd63(45)
      acd63(46)=acd63(49)+acd63(51)+acd63(46)+acd63(50)
      acd63(46)=acd63(22)*acd63(46)
      acd63(49)=acd63(19)*acd63(6)
      acd63(50)=acd63(2)*acd63(20)
      acd63(49)=acd63(49)+acd63(50)
      acd63(51)=acd63(4)*acd63(49)
      acd63(52)=acd63(20)*acd63(6)
      acd63(53)=-acd63(41)*acd63(52)
      acd63(54)=acd63(20)*acd63(43)
      acd63(55)=acd63(6)*acd63(47)
      acd63(51)=acd63(53)+acd63(55)+acd63(51)+acd63(54)
      acd63(51)=acd63(23)*acd63(51)
      acd63(53)=acd63(19)*acd63(16)
      acd63(54)=acd63(15)*acd63(20)
      acd63(53)=acd63(53)+acd63(54)
      acd63(55)=acd63(4)*acd63(53)
      acd63(56)=acd63(20)*acd63(16)
      acd63(41)=-acd63(41)*acd63(56)
      acd63(57)=acd63(20)*acd63(45)
      acd63(58)=acd63(16)*acd63(47)
      acd63(41)=acd63(41)+acd63(58)+acd63(55)+acd63(57)
      acd63(41)=acd63(24)*acd63(41)
      acd63(55)=acd63(9)*acd63(10)
      acd63(55)=acd63(55)+acd63(11)
      acd63(55)=acd63(40)*acd63(55)
      acd63(57)=acd63(1)*acd63(2)
      acd63(58)=acd63(14)*acd63(15)
      acd63(59)=acd63(18)*acd63(19)
      acd63(57)=acd63(59)+acd63(57)+acd63(58)
      acd63(57)=acd63(5)*acd63(57)
      acd63(40)=acd63(7)*acd63(4)*acd63(40)
      acd63(58)=acd63(1)*acd63(12)
      acd63(59)=acd63(14)*acd63(17)
      acd63(60)=acd63(18)*acd63(21)
      acd63(58)=acd63(60)+acd63(58)+acd63(59)
      acd63(58)=acd63(13)*acd63(58)
      acd63(56)=acd63(28)*acd63(56)
      acd63(52)=acd63(30)*acd63(52)
      acd63(48)=acd63(36)*acd63(48)
      acd63(48)=acd63(48)+acd63(56)+acd63(52)
      acd63(48)=acd63(39)*acd63(48)
      acd63(52)=acd63(19)*acd63(44)
      acd63(54)=acd63(2)*acd63(54)
      acd63(52)=acd63(54)+acd63(52)
      acd63(52)=acd63(25)*acd63(52)
      acd63(54)=acd63(6)*acd63(53)
      acd63(50)=acd63(16)*acd63(50)
      acd63(50)=acd63(50)+acd63(54)
      acd63(50)=acd63(26)*acd63(50)
      acd63(40)=acd63(58)+acd63(52)+acd63(50)+acd63(48)+acd63(55)+acd63(57)+acd&
      &63(40)+acd63(42)+acd63(46)+acd63(51)+acd63(41)
      acd63(41)=-acd63(17)*acd63(19)
      acd63(42)=-acd63(21)*acd63(15)
      acd63(41)=acd63(41)+acd63(42)
      acd63(41)=acd63(32)*acd63(41)
      acd63(42)=-acd63(12)*acd63(19)
      acd63(46)=-acd63(21)*acd63(2)
      acd63(42)=acd63(42)+acd63(46)
      acd63(42)=acd63(35)*acd63(42)
      acd63(46)=-acd63(12)*acd63(15)
      acd63(48)=-acd63(17)*acd63(2)
      acd63(46)=acd63(46)+acd63(48)
      acd63(46)=acd63(38)*acd63(46)
      acd63(41)=acd63(46)+acd63(42)+acd63(41)
      acd63(41)=acd63(33)*acd63(41)
      acd63(42)=acd63(12)*acd63(53)
      acd63(46)=acd63(17)*acd63(49)
      acd63(48)=acd63(21)*acd63(44)
      acd63(42)=acd63(48)+acd63(42)+acd63(46)
      acd63(42)=acd63(27)*acd63(42)
      acd63(46)=-acd63(17)*acd63(20)
      acd63(48)=-acd63(21)*acd63(16)
      acd63(46)=acd63(46)+acd63(48)
      acd63(46)=acd63(33)*acd63(46)
      acd63(48)=acd63(29)*acd63(53)
      acd63(46)=acd63(46)+acd63(48)
      acd63(46)=acd63(28)*acd63(46)
      acd63(48)=-acd63(12)*acd63(20)
      acd63(50)=-acd63(21)*acd63(6)
      acd63(48)=acd63(48)+acd63(50)
      acd63(48)=acd63(33)*acd63(48)
      acd63(49)=acd63(29)*acd63(49)
      acd63(48)=acd63(48)+acd63(49)
      acd63(48)=acd63(30)*acd63(48)
      acd63(49)=-acd63(12)*acd63(16)
      acd63(50)=-acd63(17)*acd63(6)
      acd63(49)=acd63(49)+acd63(50)
      acd63(49)=acd63(33)*acd63(49)
      acd63(44)=acd63(29)*acd63(44)
      acd63(44)=acd63(49)+acd63(44)
      acd63(44)=acd63(36)*acd63(44)
      acd63(49)=-acd63(19)*acd63(45)
      acd63(50)=-acd63(15)*acd63(47)
      acd63(49)=acd63(49)+acd63(50)
      acd63(49)=acd63(31)*acd63(49)
      acd63(50)=-acd63(19)*acd63(43)
      acd63(47)=-acd63(2)*acd63(47)
      acd63(47)=acd63(50)+acd63(47)
      acd63(47)=acd63(34)*acd63(47)
      acd63(43)=-acd63(15)*acd63(43)
      acd63(45)=-acd63(2)*acd63(45)
      acd63(43)=acd63(43)+acd63(45)
      acd63(43)=acd63(37)*acd63(43)
      brack=2.0_ki*acd63(40)+acd63(41)+acd63(42)+acd63(43)+acd63(44)+acd63(46)+&
      &acd63(47)+acd63(48)+acd63(49)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd63
      complex(ki) :: brack
      acd63(1)=d(iv1,iv2)
      acd63(2)=spvak2k1(iv3)
      acd63(3)=spvak2k5(iv4)
      acd63(4)=abb63(25)
      acd63(5)=spvak2k1(iv4)
      acd63(6)=spvak2k5(iv3)
      acd63(7)=abb63(33)
      acd63(8)=spvak2l4(iv4)
      acd63(9)=abb63(32)
      acd63(10)=spvak2l4(iv3)
      acd63(11)=d(iv1,iv3)
      acd63(12)=spvak2k1(iv2)
      acd63(13)=spvak2k5(iv2)
      acd63(14)=spvak2l4(iv2)
      acd63(15)=d(iv1,iv4)
      acd63(16)=d(iv2,iv3)
      acd63(17)=spvak2k1(iv1)
      acd63(18)=spvak2k5(iv1)
      acd63(19)=spvak2l4(iv1)
      acd63(20)=d(iv2,iv4)
      acd63(21)=d(iv3,iv4)
      acd63(22)=acd63(1)*acd63(3)
      acd63(23)=acd63(15)*acd63(13)
      acd63(24)=acd63(20)*acd63(18)
      acd63(22)=acd63(22)+acd63(23)+acd63(24)
      acd63(23)=-acd63(2)*acd63(22)
      acd63(24)=acd63(11)*acd63(3)
      acd63(25)=acd63(15)*acd63(6)
      acd63(26)=acd63(21)*acd63(18)
      acd63(24)=acd63(26)+acd63(24)+acd63(25)
      acd63(25)=-acd63(12)*acd63(24)
      acd63(27)=acd63(16)*acd63(3)
      acd63(28)=acd63(20)*acd63(6)
      acd63(29)=acd63(21)*acd63(13)
      acd63(27)=acd63(29)+acd63(27)+acd63(28)
      acd63(28)=-acd63(17)*acd63(27)
      acd63(29)=acd63(11)*acd63(13)
      acd63(30)=acd63(16)*acd63(18)
      acd63(29)=acd63(29)+acd63(30)
      acd63(30)=acd63(1)*acd63(6)
      acd63(30)=acd63(29)+acd63(30)
      acd63(31)=-acd63(5)*acd63(30)
      acd63(23)=acd63(28)+acd63(25)+acd63(31)+acd63(23)
      acd63(23)=acd63(4)*acd63(23)
      acd63(25)=-acd63(10)*acd63(22)
      acd63(24)=-acd63(14)*acd63(24)
      acd63(27)=-acd63(19)*acd63(27)
      acd63(28)=-acd63(8)*acd63(30)
      acd63(24)=acd63(27)+acd63(24)+acd63(25)+acd63(28)
      acd63(24)=acd63(9)*acd63(24)
      acd63(22)=acd63(6)*acd63(22)
      acd63(25)=acd63(3)*acd63(29)
      acd63(26)=acd63(13)*acd63(26)
      acd63(22)=acd63(26)+acd63(22)+acd63(25)
      acd63(22)=acd63(7)*acd63(22)
      acd63(22)=2.0_ki*acd63(22)+acd63(24)+acd63(23)
      brack=2.0_ki*acd63(22)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd63
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
      integer, intent(in), optional :: i5
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = k2-k4
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
      if(present(i5)) then
          iv5=i5
          deg=5
      else
          iv5=1
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
      if(deg.eq.5) then
         numerator = cond(epspow.eq.t1,brack_6,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
end module     p0_gg_hhg_d63h1l1d_qp
