module     p0_gg_hhg_d43h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d43h1l1d_qp.f90
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
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd43
      complex(ki) :: brack
      acd43(1)=dotproduct(k1,qshift)
      acd43(2)=dotproduct(qshift,spvak2l4)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(32)
      acd43(5)=dotproduct(qshift,qshift)
      acd43(6)=abb43(18)
      acd43(7)=dotproduct(qshift,spvak2k1)
      acd43(8)=abb43(20)
      acd43(9)=dotproduct(qshift,spval3k1)
      acd43(10)=abb43(30)
      acd43(11)=abb43(26)
      acd43(12)=abb43(24)
      acd43(13)=abb43(13)
      acd43(14)=abb43(22)
      acd43(15)=dotproduct(qshift,spvak2l3)
      acd43(16)=abb43(10)
      acd43(17)=abb43(14)
      acd43(18)=abb43(31)
      acd43(19)=abb43(19)
      acd43(20)=dotproduct(qshift,spval4k5)
      acd43(21)=abb43(15)
      acd43(22)=abb43(23)
      acd43(23)=abb43(12)
      acd43(24)=abb43(16)
      acd43(25)=abb43(21)
      acd43(26)=abb43(17)
      acd43(27)=-acd43(9)*acd43(10)
      acd43(28)=acd43(5)*acd43(6)
      acd43(29)=-acd43(1)*acd43(4)
      acd43(27)=acd43(29)+acd43(28)+acd43(11)+acd43(27)
      acd43(27)=acd43(2)*acd43(27)
      acd43(28)=-acd43(15)*acd43(16)
      acd43(29)=-acd43(2)*acd43(8)
      acd43(28)=acd43(29)+acd43(17)+acd43(28)
      acd43(28)=acd43(7)*acd43(28)
      acd43(29)=acd43(15)*acd43(18)
      acd43(30)=-acd43(7)*acd43(13)
      acd43(30)=acd43(14)+acd43(30)
      acd43(30)=acd43(3)*acd43(30)
      acd43(27)=acd43(30)+acd43(28)+acd43(27)-acd43(19)+acd43(29)
      acd43(27)=acd43(3)*acd43(27)
      acd43(28)=acd43(20)*acd43(23)
      acd43(29)=-acd43(20)*acd43(21)
      acd43(29)=acd43(22)+acd43(29)
      acd43(29)=acd43(15)*acd43(29)
      acd43(28)=acd43(29)-acd43(24)+acd43(28)
      acd43(28)=acd43(7)*acd43(28)
      acd43(29)=-acd43(15)*acd43(25)
      acd43(30)=-acd43(2)*acd43(12)
      brack=acd43(26)+acd43(27)+acd43(28)+acd43(29)+acd43(30)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd43
      complex(ki) :: brack
      acd43(1)=k1(iv1)
      acd43(2)=dotproduct(qshift,spvak2l4)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(32)
      acd43(5)=qshift(iv1)
      acd43(6)=abb43(18)
      acd43(7)=spvak2l4(iv1)
      acd43(8)=dotproduct(k1,qshift)
      acd43(9)=dotproduct(qshift,qshift)
      acd43(10)=dotproduct(qshift,spvak2k1)
      acd43(11)=abb43(20)
      acd43(12)=dotproduct(qshift,spval3k1)
      acd43(13)=abb43(30)
      acd43(14)=abb43(26)
      acd43(15)=abb43(24)
      acd43(16)=spvak2k5(iv1)
      acd43(17)=abb43(13)
      acd43(18)=abb43(22)
      acd43(19)=dotproduct(qshift,spvak2l3)
      acd43(20)=abb43(10)
      acd43(21)=abb43(14)
      acd43(22)=abb43(31)
      acd43(23)=abb43(19)
      acd43(24)=spvak2k1(iv1)
      acd43(25)=dotproduct(qshift,spval4k5)
      acd43(26)=abb43(15)
      acd43(27)=abb43(23)
      acd43(28)=abb43(12)
      acd43(29)=abb43(16)
      acd43(30)=spvak2l3(iv1)
      acd43(31)=abb43(21)
      acd43(32)=spval4k5(iv1)
      acd43(33)=spval3k1(iv1)
      acd43(34)=acd43(13)*acd43(33)
      acd43(35)=acd43(6)*acd43(5)
      acd43(36)=acd43(4)*acd43(1)
      acd43(37)=acd43(24)*acd43(11)
      acd43(34)=acd43(37)+acd43(36)+acd43(34)-2.0_ki*acd43(35)
      acd43(34)=acd43(2)*acd43(34)
      acd43(35)=acd43(13)*acd43(12)
      acd43(36)=acd43(6)*acd43(9)
      acd43(37)=acd43(4)*acd43(8)
      acd43(35)=acd43(35)-acd43(36)+acd43(37)-acd43(14)
      acd43(36)=acd43(7)*acd43(35)
      acd43(37)=acd43(19)*acd43(20)
      acd43(37)=acd43(37)-acd43(21)
      acd43(38)=acd43(3)*acd43(17)
      acd43(38)=acd43(38)+acd43(37)
      acd43(38)=acd43(24)*acd43(38)
      acd43(39)=acd43(30)*acd43(20)
      acd43(40)=acd43(7)*acd43(11)
      acd43(39)=acd43(39)+acd43(40)
      acd43(39)=acd43(10)*acd43(39)
      acd43(40)=-acd43(30)*acd43(22)
      acd43(41)=acd43(10)*acd43(17)
      acd43(41)=-acd43(18)+acd43(41)
      acd43(41)=acd43(16)*acd43(41)
      acd43(34)=2.0_ki*acd43(41)+acd43(39)+acd43(34)+acd43(40)+acd43(36)+acd43(&
      &38)
      acd43(34)=acd43(3)*acd43(34)
      acd43(35)=acd43(2)*acd43(35)
      acd43(36)=acd43(2)*acd43(11)
      acd43(36)=acd43(36)+acd43(37)
      acd43(36)=acd43(10)*acd43(36)
      acd43(37)=-acd43(19)*acd43(22)
      acd43(35)=acd43(36)+acd43(35)+acd43(23)+acd43(37)
      acd43(35)=acd43(16)*acd43(35)
      acd43(36)=-acd43(25)*acd43(28)
      acd43(37)=acd43(25)*acd43(26)
      acd43(37)=acd43(37)-acd43(27)
      acd43(38)=acd43(19)*acd43(37)
      acd43(36)=acd43(38)+acd43(29)+acd43(36)
      acd43(36)=acd43(24)*acd43(36)
      acd43(38)=acd43(19)*acd43(26)
      acd43(38)=acd43(38)-acd43(28)
      acd43(38)=acd43(32)*acd43(38)
      acd43(37)=acd43(30)*acd43(37)
      acd43(37)=acd43(37)+acd43(38)
      acd43(37)=acd43(10)*acd43(37)
      acd43(38)=acd43(30)*acd43(31)
      acd43(39)=acd43(7)*acd43(15)
      brack=acd43(34)+acd43(35)+acd43(36)+acd43(37)+acd43(38)+acd43(39)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=dotproduct(qshift,spvak2l4)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(18)
      acd43(5)=k1(iv1)
      acd43(6)=spvak2l4(iv2)
      acd43(7)=abb43(32)
      acd43(8)=spvak2k5(iv2)
      acd43(9)=k1(iv2)
      acd43(10)=spvak2l4(iv1)
      acd43(11)=spvak2k5(iv1)
      acd43(12)=qshift(iv1)
      acd43(13)=qshift(iv2)
      acd43(14)=dotproduct(k1,qshift)
      acd43(15)=dotproduct(qshift,qshift)
      acd43(16)=dotproduct(qshift,spvak2k1)
      acd43(17)=abb43(20)
      acd43(18)=dotproduct(qshift,spval3k1)
      acd43(19)=abb43(30)
      acd43(20)=abb43(26)
      acd43(21)=spvak2k1(iv2)
      acd43(22)=spval3k1(iv2)
      acd43(23)=spvak2k1(iv1)
      acd43(24)=spval3k1(iv1)
      acd43(25)=abb43(13)
      acd43(26)=abb43(22)
      acd43(27)=dotproduct(qshift,spvak2l3)
      acd43(28)=abb43(10)
      acd43(29)=abb43(14)
      acd43(30)=spvak2l3(iv2)
      acd43(31)=abb43(31)
      acd43(32)=spvak2l3(iv1)
      acd43(33)=dotproduct(qshift,spval4k5)
      acd43(34)=abb43(15)
      acd43(35)=abb43(23)
      acd43(36)=spval4k5(iv2)
      acd43(37)=abb43(12)
      acd43(38)=spval4k5(iv1)
      acd43(39)=acd43(19)*acd43(22)
      acd43(40)=2.0_ki*acd43(4)
      acd43(41)=acd43(40)*acd43(13)
      acd43(42)=acd43(7)*acd43(9)
      acd43(39)=acd43(42)+acd43(39)-acd43(41)
      acd43(41)=-acd43(10)*acd43(39)
      acd43(42)=acd43(19)*acd43(24)
      acd43(43)=acd43(40)*acd43(12)
      acd43(44)=acd43(7)*acd43(5)
      acd43(42)=acd43(44)+acd43(42)-acd43(43)
      acd43(43)=-acd43(6)*acd43(42)
      acd43(44)=-acd43(28)*acd43(30)
      acd43(45)=-acd43(6)*acd43(17)
      acd43(44)=acd43(44)+acd43(45)
      acd43(44)=acd43(23)*acd43(44)
      acd43(45)=-acd43(28)*acd43(32)
      acd43(46)=-acd43(10)*acd43(17)
      acd43(45)=acd43(45)+acd43(46)
      acd43(45)=acd43(21)*acd43(45)
      acd43(40)=acd43(2)*acd43(1)*acd43(40)
      acd43(40)=acd43(45)+acd43(44)+acd43(40)+acd43(41)+acd43(43)
      acd43(40)=acd43(3)*acd43(40)
      acd43(41)=acd43(19)*acd43(18)
      acd43(43)=acd43(7)*acd43(14)
      acd43(44)=acd43(16)*acd43(17)
      acd43(45)=acd43(4)*acd43(15)
      acd43(41)=acd43(41)+acd43(44)-acd43(45)+acd43(43)-acd43(20)
      acd43(43)=-acd43(6)*acd43(41)
      acd43(44)=acd43(28)*acd43(27)
      acd43(45)=acd43(2)*acd43(17)
      acd43(46)=acd43(3)*acd43(25)
      acd43(44)=2.0_ki*acd43(46)+acd43(44)+acd43(45)-acd43(29)
      acd43(45)=-acd43(21)*acd43(44)
      acd43(39)=-acd43(2)*acd43(39)
      acd43(46)=acd43(16)*acd43(28)
      acd43(46)=acd43(46)-acd43(31)
      acd43(47)=-acd43(30)*acd43(46)
      acd43(39)=acd43(39)+acd43(43)+acd43(45)+acd43(47)
      acd43(39)=acd43(11)*acd43(39)
      acd43(41)=-acd43(10)*acd43(41)
      acd43(43)=-acd43(23)*acd43(44)
      acd43(42)=-acd43(2)*acd43(42)
      acd43(44)=-acd43(32)*acd43(46)
      acd43(45)=-acd43(16)*acd43(25)
      acd43(45)=acd43(26)+acd43(45)
      acd43(45)=acd43(11)*acd43(45)
      acd43(41)=2.0_ki*acd43(45)+acd43(42)+acd43(41)+acd43(43)+acd43(44)
      acd43(41)=acd43(8)*acd43(41)
      acd43(42)=-acd43(32)*acd43(36)
      acd43(43)=-acd43(30)*acd43(38)
      acd43(42)=acd43(42)+acd43(43)
      acd43(42)=acd43(16)*acd43(34)*acd43(42)
      acd43(43)=acd43(34)*acd43(27)
      acd43(43)=acd43(43)-acd43(37)
      acd43(44)=-acd43(36)*acd43(43)
      acd43(45)=acd43(34)*acd43(33)
      acd43(45)=acd43(45)-acd43(35)
      acd43(46)=-acd43(30)*acd43(45)
      acd43(44)=acd43(46)+acd43(44)
      acd43(44)=acd43(23)*acd43(44)
      acd43(43)=-acd43(38)*acd43(43)
      acd43(45)=-acd43(32)*acd43(45)
      acd43(43)=acd43(45)+acd43(43)
      acd43(43)=acd43(21)*acd43(43)
      brack=acd43(39)+acd43(40)+acd43(41)+acd43(42)+acd43(43)+acd43(44)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=spvak2l4(iv3)
      acd43(3)=dotproduct(qshift,spvak2k5)
      acd43(4)=abb43(18)
      acd43(5)=spvak2k5(iv3)
      acd43(6)=dotproduct(qshift,spvak2l4)
      acd43(7)=d(iv1,iv3)
      acd43(8)=spvak2l4(iv2)
      acd43(9)=spvak2k5(iv2)
      acd43(10)=d(iv2,iv3)
      acd43(11)=spvak2l4(iv1)
      acd43(12)=spvak2k5(iv1)
      acd43(13)=k1(iv1)
      acd43(14)=abb43(32)
      acd43(15)=k1(iv2)
      acd43(16)=k1(iv3)
      acd43(17)=qshift(iv1)
      acd43(18)=qshift(iv2)
      acd43(19)=qshift(iv3)
      acd43(20)=spvak2k1(iv3)
      acd43(21)=abb43(20)
      acd43(22)=spval3k1(iv3)
      acd43(23)=abb43(30)
      acd43(24)=spvak2k1(iv2)
      acd43(25)=spval3k1(iv2)
      acd43(26)=spvak2k1(iv1)
      acd43(27)=spval3k1(iv1)
      acd43(28)=abb43(13)
      acd43(29)=spvak2l3(iv3)
      acd43(30)=abb43(10)
      acd43(31)=spvak2l3(iv2)
      acd43(32)=spvak2l3(iv1)
      acd43(33)=spval4k5(iv3)
      acd43(34)=abb43(15)
      acd43(35)=spval4k5(iv2)
      acd43(36)=spval4k5(iv1)
      acd43(37)=acd43(2)*acd43(9)
      acd43(38)=acd43(8)*acd43(5)
      acd43(37)=acd43(37)+acd43(38)
      acd43(38)=-acd43(17)*acd43(37)
      acd43(39)=acd43(2)*acd43(12)
      acd43(40)=acd43(11)*acd43(5)
      acd43(39)=acd43(39)+acd43(40)
      acd43(40)=-acd43(18)*acd43(39)
      acd43(38)=acd43(38)+acd43(40)
      acd43(38)=acd43(4)*acd43(38)
      acd43(40)=acd43(20)*acd43(9)
      acd43(41)=acd43(24)*acd43(5)
      acd43(40)=acd43(40)+acd43(41)
      acd43(41)=acd43(12)*acd43(40)
      acd43(42)=acd43(26)*acd43(9)
      acd43(43)=acd43(5)*acd43(42)
      acd43(41)=acd43(43)+acd43(41)
      acd43(41)=acd43(28)*acd43(41)
      acd43(43)=acd43(3)*acd43(4)
      acd43(44)=-acd43(2)*acd43(43)
      acd43(45)=acd43(6)*acd43(4)
      acd43(46)=-acd43(5)*acd43(45)
      acd43(44)=acd43(44)+acd43(46)
      acd43(44)=acd43(1)*acd43(44)
      acd43(46)=-acd43(8)*acd43(43)
      acd43(47)=-acd43(9)*acd43(45)
      acd43(46)=acd43(46)+acd43(47)
      acd43(46)=acd43(7)*acd43(46)
      acd43(43)=-acd43(11)*acd43(43)
      acd43(45)=-acd43(12)*acd43(45)
      acd43(43)=acd43(43)+acd43(45)
      acd43(43)=acd43(10)*acd43(43)
      acd43(45)=acd43(8)*acd43(12)
      acd43(47)=acd43(11)*acd43(9)
      acd43(45)=acd43(45)+acd43(47)
      acd43(47)=-acd43(19)*acd43(4)*acd43(45)
      acd43(38)=acd43(38)+acd43(46)+acd43(43)+acd43(47)+acd43(41)+acd43(44)
      acd43(41)=acd43(13)*acd43(37)
      acd43(43)=acd43(15)*acd43(39)
      acd43(44)=acd43(16)*acd43(45)
      acd43(41)=acd43(44)+acd43(43)+acd43(41)
      acd43(41)=acd43(14)*acd43(41)
      acd43(43)=acd43(22)*acd43(45)
      acd43(44)=acd43(25)*acd43(39)
      acd43(46)=acd43(27)*acd43(37)
      acd43(43)=acd43(46)+acd43(44)+acd43(43)
      acd43(43)=acd43(23)*acd43(43)
      acd43(44)=acd43(24)*acd43(12)
      acd43(42)=acd43(44)+acd43(42)
      acd43(42)=acd43(29)*acd43(42)
      acd43(44)=acd43(20)*acd43(12)
      acd43(46)=acd43(26)*acd43(5)
      acd43(44)=acd43(44)+acd43(46)
      acd43(44)=acd43(31)*acd43(44)
      acd43(40)=acd43(32)*acd43(40)
      acd43(40)=acd43(40)+acd43(44)+acd43(42)
      acd43(40)=acd43(30)*acd43(40)
      acd43(42)=acd43(20)*acd43(45)
      acd43(39)=acd43(24)*acd43(39)
      acd43(37)=acd43(26)*acd43(37)
      acd43(37)=acd43(37)+acd43(42)+acd43(39)
      acd43(37)=acd43(21)*acd43(37)
      acd43(39)=acd43(31)*acd43(34)
      acd43(42)=acd43(26)*acd43(39)
      acd43(44)=acd43(32)*acd43(34)
      acd43(45)=acd43(24)*acd43(44)
      acd43(42)=acd43(42)+acd43(45)
      acd43(42)=acd43(33)*acd43(42)
      acd43(45)=acd43(29)*acd43(34)
      acd43(46)=acd43(26)*acd43(45)
      acd43(44)=acd43(20)*acd43(44)
      acd43(44)=acd43(46)+acd43(44)
      acd43(44)=acd43(35)*acd43(44)
      acd43(45)=acd43(24)*acd43(45)
      acd43(39)=acd43(20)*acd43(39)
      acd43(39)=acd43(45)+acd43(39)
      acd43(39)=acd43(36)*acd43(39)
      brack=acd43(37)+2.0_ki*acd43(38)+acd43(39)+acd43(40)+acd43(41)+acd43(42)+&
      &acd43(43)+acd43(44)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd43
      complex(ki) :: brack
      acd43(1)=d(iv1,iv2)
      acd43(2)=spvak2l4(iv3)
      acd43(3)=spvak2k5(iv4)
      acd43(4)=abb43(18)
      acd43(5)=spvak2l4(iv4)
      acd43(6)=spvak2k5(iv3)
      acd43(7)=d(iv1,iv3)
      acd43(8)=spvak2l4(iv2)
      acd43(9)=spvak2k5(iv2)
      acd43(10)=d(iv1,iv4)
      acd43(11)=d(iv2,iv3)
      acd43(12)=spvak2l4(iv1)
      acd43(13)=spvak2k5(iv1)
      acd43(14)=d(iv2,iv4)
      acd43(15)=d(iv3,iv4)
      acd43(16)=acd43(13)*acd43(11)
      acd43(17)=acd43(9)*acd43(7)
      acd43(18)=acd43(6)*acd43(1)
      acd43(16)=acd43(18)+acd43(16)+acd43(17)
      acd43(16)=acd43(5)*acd43(16)
      acd43(17)=acd43(13)*acd43(14)
      acd43(18)=acd43(9)*acd43(10)
      acd43(19)=acd43(3)*acd43(1)
      acd43(17)=acd43(19)+acd43(17)+acd43(18)
      acd43(17)=acd43(2)*acd43(17)
      acd43(18)=acd43(9)*acd43(12)
      acd43(19)=acd43(8)*acd43(13)
      acd43(18)=acd43(18)+acd43(19)
      acd43(18)=acd43(15)*acd43(18)
      acd43(19)=acd43(12)*acd43(14)
      acd43(20)=acd43(8)*acd43(10)
      acd43(19)=acd43(19)+acd43(20)
      acd43(19)=acd43(6)*acd43(19)
      acd43(20)=acd43(12)*acd43(11)
      acd43(21)=acd43(8)*acd43(7)
      acd43(20)=acd43(20)+acd43(21)
      acd43(20)=acd43(3)*acd43(20)
      acd43(16)=acd43(17)+acd43(20)+acd43(16)+acd43(19)+acd43(18)
      brack=2.0_ki*acd43(16)*acd43(4)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd43
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd43h1_qp
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
end module     p0_gg_hhg_d43h1l1d_qp
