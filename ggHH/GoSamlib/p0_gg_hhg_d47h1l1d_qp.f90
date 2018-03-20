module     p0_gg_hhg_d47h1l1d_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d47h1l1d_qp.f90
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
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd47
      complex(ki) :: brack
      acd47(1)=dotproduct(k1,qshift)
      acd47(2)=dotproduct(qshift,spvak2l3)
      acd47(3)=dotproduct(qshift,spvak2k5)
      acd47(4)=abb47(34)
      acd47(5)=dotproduct(qshift,qshift)
      acd47(6)=abb47(19)
      acd47(7)=dotproduct(qshift,spvak2k1)
      acd47(8)=abb47(15)
      acd47(9)=dotproduct(qshift,spval4k1)
      acd47(10)=abb47(33)
      acd47(11)=abb47(28)
      acd47(12)=abb47(27)
      acd47(13)=abb47(14)
      acd47(14)=abb47(24)
      acd47(15)=dotproduct(qshift,spvak2l4)
      acd47(16)=abb47(11)
      acd47(17)=abb47(12)
      acd47(18)=abb47(23)
      acd47(19)=abb47(20)
      acd47(20)=dotproduct(qshift,spval3k5)
      acd47(21)=abb47(10)
      acd47(22)=abb47(16)
      acd47(23)=abb47(13)
      acd47(24)=abb47(17)
      acd47(25)=abb47(25)
      acd47(26)=abb47(18)
      acd47(27)=-acd47(9)*acd47(10)
      acd47(28)=acd47(5)*acd47(6)
      acd47(29)=-acd47(1)*acd47(4)
      acd47(27)=acd47(29)+acd47(28)+acd47(11)+acd47(27)
      acd47(27)=acd47(2)*acd47(27)
      acd47(28)=-acd47(15)*acd47(16)
      acd47(29)=-acd47(2)*acd47(8)
      acd47(28)=acd47(29)+acd47(17)+acd47(28)
      acd47(28)=acd47(7)*acd47(28)
      acd47(29)=acd47(15)*acd47(18)
      acd47(30)=-acd47(7)*acd47(13)
      acd47(30)=acd47(14)+acd47(30)
      acd47(30)=acd47(3)*acd47(30)
      acd47(27)=acd47(30)+acd47(28)+acd47(27)-acd47(19)+acd47(29)
      acd47(27)=acd47(3)*acd47(27)
      acd47(28)=acd47(20)*acd47(23)
      acd47(29)=-acd47(20)*acd47(21)
      acd47(29)=acd47(22)+acd47(29)
      acd47(29)=acd47(15)*acd47(29)
      acd47(28)=acd47(29)-acd47(24)+acd47(28)
      acd47(28)=acd47(7)*acd47(28)
      acd47(29)=-acd47(15)*acd47(25)
      acd47(30)=-acd47(2)*acd47(12)
      brack=acd47(26)+acd47(27)+acd47(28)+acd47(29)+acd47(30)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd47
      complex(ki) :: brack
      acd47(1)=k1(iv1)
      acd47(2)=dotproduct(qshift,spvak2l3)
      acd47(3)=dotproduct(qshift,spvak2k5)
      acd47(4)=abb47(34)
      acd47(5)=qshift(iv1)
      acd47(6)=abb47(19)
      acd47(7)=spvak2l3(iv1)
      acd47(8)=dotproduct(k1,qshift)
      acd47(9)=dotproduct(qshift,qshift)
      acd47(10)=dotproduct(qshift,spvak2k1)
      acd47(11)=abb47(15)
      acd47(12)=dotproduct(qshift,spval4k1)
      acd47(13)=abb47(33)
      acd47(14)=abb47(28)
      acd47(15)=abb47(27)
      acd47(16)=spvak2k5(iv1)
      acd47(17)=abb47(14)
      acd47(18)=abb47(24)
      acd47(19)=dotproduct(qshift,spvak2l4)
      acd47(20)=abb47(11)
      acd47(21)=abb47(12)
      acd47(22)=abb47(23)
      acd47(23)=abb47(20)
      acd47(24)=spvak2k1(iv1)
      acd47(25)=dotproduct(qshift,spval3k5)
      acd47(26)=abb47(10)
      acd47(27)=abb47(16)
      acd47(28)=abb47(13)
      acd47(29)=abb47(17)
      acd47(30)=spvak2l4(iv1)
      acd47(31)=abb47(25)
      acd47(32)=spval3k5(iv1)
      acd47(33)=spval4k1(iv1)
      acd47(34)=acd47(13)*acd47(33)
      acd47(35)=acd47(6)*acd47(5)
      acd47(36)=acd47(4)*acd47(1)
      acd47(37)=acd47(24)*acd47(11)
      acd47(34)=acd47(37)+acd47(36)+acd47(34)-2.0_ki*acd47(35)
      acd47(34)=acd47(2)*acd47(34)
      acd47(35)=acd47(13)*acd47(12)
      acd47(36)=acd47(6)*acd47(9)
      acd47(37)=acd47(4)*acd47(8)
      acd47(35)=acd47(35)-acd47(36)+acd47(37)-acd47(14)
      acd47(36)=acd47(7)*acd47(35)
      acd47(37)=acd47(19)*acd47(20)
      acd47(37)=acd47(37)-acd47(21)
      acd47(38)=acd47(3)*acd47(17)
      acd47(38)=acd47(38)+acd47(37)
      acd47(38)=acd47(24)*acd47(38)
      acd47(39)=acd47(30)*acd47(20)
      acd47(40)=acd47(7)*acd47(11)
      acd47(39)=acd47(39)+acd47(40)
      acd47(39)=acd47(10)*acd47(39)
      acd47(40)=-acd47(30)*acd47(22)
      acd47(41)=acd47(10)*acd47(17)
      acd47(41)=-acd47(18)+acd47(41)
      acd47(41)=acd47(16)*acd47(41)
      acd47(34)=2.0_ki*acd47(41)+acd47(39)+acd47(34)+acd47(40)+acd47(36)+acd47(&
      &38)
      acd47(34)=acd47(3)*acd47(34)
      acd47(35)=acd47(2)*acd47(35)
      acd47(36)=acd47(2)*acd47(11)
      acd47(36)=acd47(36)+acd47(37)
      acd47(36)=acd47(10)*acd47(36)
      acd47(37)=-acd47(19)*acd47(22)
      acd47(35)=acd47(36)+acd47(35)+acd47(23)+acd47(37)
      acd47(35)=acd47(16)*acd47(35)
      acd47(36)=-acd47(25)*acd47(28)
      acd47(37)=acd47(25)*acd47(26)
      acd47(37)=acd47(37)-acd47(27)
      acd47(38)=acd47(19)*acd47(37)
      acd47(36)=acd47(38)+acd47(29)+acd47(36)
      acd47(36)=acd47(24)*acd47(36)
      acd47(38)=acd47(19)*acd47(26)
      acd47(38)=acd47(38)-acd47(28)
      acd47(38)=acd47(32)*acd47(38)
      acd47(37)=acd47(30)*acd47(37)
      acd47(37)=acd47(37)+acd47(38)
      acd47(37)=acd47(10)*acd47(37)
      acd47(38)=acd47(30)*acd47(31)
      acd47(39)=acd47(7)*acd47(15)
      brack=acd47(34)+acd47(35)+acd47(36)+acd47(37)+acd47(38)+acd47(39)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=dotproduct(qshift,spvak2l3)
      acd47(3)=dotproduct(qshift,spvak2k5)
      acd47(4)=abb47(19)
      acd47(5)=k1(iv1)
      acd47(6)=spvak2l3(iv2)
      acd47(7)=abb47(34)
      acd47(8)=spvak2k5(iv2)
      acd47(9)=k1(iv2)
      acd47(10)=spvak2l3(iv1)
      acd47(11)=spvak2k5(iv1)
      acd47(12)=qshift(iv1)
      acd47(13)=qshift(iv2)
      acd47(14)=dotproduct(k1,qshift)
      acd47(15)=dotproduct(qshift,qshift)
      acd47(16)=dotproduct(qshift,spvak2k1)
      acd47(17)=abb47(15)
      acd47(18)=dotproduct(qshift,spval4k1)
      acd47(19)=abb47(33)
      acd47(20)=abb47(28)
      acd47(21)=spvak2k1(iv2)
      acd47(22)=spval4k1(iv2)
      acd47(23)=spvak2k1(iv1)
      acd47(24)=spval4k1(iv1)
      acd47(25)=abb47(14)
      acd47(26)=abb47(24)
      acd47(27)=dotproduct(qshift,spvak2l4)
      acd47(28)=abb47(11)
      acd47(29)=abb47(12)
      acd47(30)=spvak2l4(iv2)
      acd47(31)=abb47(23)
      acd47(32)=spvak2l4(iv1)
      acd47(33)=dotproduct(qshift,spval3k5)
      acd47(34)=abb47(10)
      acd47(35)=abb47(16)
      acd47(36)=spval3k5(iv2)
      acd47(37)=abb47(13)
      acd47(38)=spval3k5(iv1)
      acd47(39)=acd47(19)*acd47(22)
      acd47(40)=2.0_ki*acd47(4)
      acd47(41)=acd47(40)*acd47(13)
      acd47(42)=acd47(7)*acd47(9)
      acd47(39)=acd47(42)+acd47(39)-acd47(41)
      acd47(41)=-acd47(10)*acd47(39)
      acd47(42)=acd47(19)*acd47(24)
      acd47(43)=acd47(40)*acd47(12)
      acd47(44)=acd47(7)*acd47(5)
      acd47(42)=acd47(44)+acd47(42)-acd47(43)
      acd47(43)=-acd47(6)*acd47(42)
      acd47(44)=-acd47(28)*acd47(30)
      acd47(45)=-acd47(6)*acd47(17)
      acd47(44)=acd47(44)+acd47(45)
      acd47(44)=acd47(23)*acd47(44)
      acd47(45)=-acd47(28)*acd47(32)
      acd47(46)=-acd47(10)*acd47(17)
      acd47(45)=acd47(45)+acd47(46)
      acd47(45)=acd47(21)*acd47(45)
      acd47(40)=acd47(2)*acd47(1)*acd47(40)
      acd47(40)=acd47(45)+acd47(44)+acd47(40)+acd47(41)+acd47(43)
      acd47(40)=acd47(3)*acd47(40)
      acd47(41)=acd47(19)*acd47(18)
      acd47(43)=acd47(7)*acd47(14)
      acd47(44)=acd47(16)*acd47(17)
      acd47(45)=acd47(4)*acd47(15)
      acd47(41)=acd47(41)+acd47(44)-acd47(45)+acd47(43)-acd47(20)
      acd47(43)=-acd47(6)*acd47(41)
      acd47(44)=acd47(28)*acd47(27)
      acd47(45)=acd47(2)*acd47(17)
      acd47(46)=acd47(3)*acd47(25)
      acd47(44)=2.0_ki*acd47(46)+acd47(44)+acd47(45)-acd47(29)
      acd47(45)=-acd47(21)*acd47(44)
      acd47(39)=-acd47(2)*acd47(39)
      acd47(46)=acd47(16)*acd47(28)
      acd47(46)=acd47(46)-acd47(31)
      acd47(47)=-acd47(30)*acd47(46)
      acd47(39)=acd47(39)+acd47(43)+acd47(45)+acd47(47)
      acd47(39)=acd47(11)*acd47(39)
      acd47(41)=-acd47(10)*acd47(41)
      acd47(43)=-acd47(23)*acd47(44)
      acd47(42)=-acd47(2)*acd47(42)
      acd47(44)=-acd47(32)*acd47(46)
      acd47(45)=-acd47(16)*acd47(25)
      acd47(45)=acd47(26)+acd47(45)
      acd47(45)=acd47(11)*acd47(45)
      acd47(41)=2.0_ki*acd47(45)+acd47(42)+acd47(41)+acd47(43)+acd47(44)
      acd47(41)=acd47(8)*acd47(41)
      acd47(42)=-acd47(32)*acd47(36)
      acd47(43)=-acd47(30)*acd47(38)
      acd47(42)=acd47(42)+acd47(43)
      acd47(42)=acd47(16)*acd47(34)*acd47(42)
      acd47(43)=acd47(34)*acd47(27)
      acd47(43)=acd47(43)-acd47(37)
      acd47(44)=-acd47(36)*acd47(43)
      acd47(45)=acd47(34)*acd47(33)
      acd47(45)=acd47(45)-acd47(35)
      acd47(46)=-acd47(30)*acd47(45)
      acd47(44)=acd47(46)+acd47(44)
      acd47(44)=acd47(23)*acd47(44)
      acd47(43)=-acd47(38)*acd47(43)
      acd47(45)=-acd47(32)*acd47(45)
      acd47(43)=acd47(45)+acd47(43)
      acd47(43)=acd47(21)*acd47(43)
      brack=acd47(39)+acd47(40)+acd47(41)+acd47(42)+acd47(43)+acd47(44)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=spvak2l3(iv3)
      acd47(3)=dotproduct(qshift,spvak2k5)
      acd47(4)=abb47(19)
      acd47(5)=spvak2k5(iv3)
      acd47(6)=dotproduct(qshift,spvak2l3)
      acd47(7)=d(iv1,iv3)
      acd47(8)=spvak2l3(iv2)
      acd47(9)=spvak2k5(iv2)
      acd47(10)=d(iv2,iv3)
      acd47(11)=spvak2l3(iv1)
      acd47(12)=spvak2k5(iv1)
      acd47(13)=k1(iv1)
      acd47(14)=abb47(34)
      acd47(15)=k1(iv2)
      acd47(16)=k1(iv3)
      acd47(17)=qshift(iv1)
      acd47(18)=qshift(iv2)
      acd47(19)=qshift(iv3)
      acd47(20)=spvak2k1(iv3)
      acd47(21)=abb47(15)
      acd47(22)=spval4k1(iv3)
      acd47(23)=abb47(33)
      acd47(24)=spvak2k1(iv2)
      acd47(25)=spval4k1(iv2)
      acd47(26)=spvak2k1(iv1)
      acd47(27)=spval4k1(iv1)
      acd47(28)=abb47(14)
      acd47(29)=spvak2l4(iv3)
      acd47(30)=abb47(11)
      acd47(31)=spvak2l4(iv2)
      acd47(32)=spvak2l4(iv1)
      acd47(33)=spval3k5(iv3)
      acd47(34)=abb47(10)
      acd47(35)=spval3k5(iv2)
      acd47(36)=spval3k5(iv1)
      acd47(37)=acd47(2)*acd47(9)
      acd47(38)=acd47(8)*acd47(5)
      acd47(37)=acd47(37)+acd47(38)
      acd47(38)=-acd47(17)*acd47(37)
      acd47(39)=acd47(2)*acd47(12)
      acd47(40)=acd47(11)*acd47(5)
      acd47(39)=acd47(39)+acd47(40)
      acd47(40)=-acd47(18)*acd47(39)
      acd47(38)=acd47(38)+acd47(40)
      acd47(38)=acd47(4)*acd47(38)
      acd47(40)=acd47(20)*acd47(9)
      acd47(41)=acd47(24)*acd47(5)
      acd47(40)=acd47(40)+acd47(41)
      acd47(41)=acd47(12)*acd47(40)
      acd47(42)=acd47(26)*acd47(9)
      acd47(43)=acd47(5)*acd47(42)
      acd47(41)=acd47(43)+acd47(41)
      acd47(41)=acd47(28)*acd47(41)
      acd47(43)=acd47(3)*acd47(4)
      acd47(44)=-acd47(2)*acd47(43)
      acd47(45)=acd47(6)*acd47(4)
      acd47(46)=-acd47(5)*acd47(45)
      acd47(44)=acd47(44)+acd47(46)
      acd47(44)=acd47(1)*acd47(44)
      acd47(46)=-acd47(8)*acd47(43)
      acd47(47)=-acd47(9)*acd47(45)
      acd47(46)=acd47(46)+acd47(47)
      acd47(46)=acd47(7)*acd47(46)
      acd47(43)=-acd47(11)*acd47(43)
      acd47(45)=-acd47(12)*acd47(45)
      acd47(43)=acd47(43)+acd47(45)
      acd47(43)=acd47(10)*acd47(43)
      acd47(45)=acd47(8)*acd47(12)
      acd47(47)=acd47(11)*acd47(9)
      acd47(45)=acd47(45)+acd47(47)
      acd47(47)=-acd47(19)*acd47(4)*acd47(45)
      acd47(38)=acd47(38)+acd47(46)+acd47(43)+acd47(47)+acd47(41)+acd47(44)
      acd47(41)=acd47(13)*acd47(37)
      acd47(43)=acd47(15)*acd47(39)
      acd47(44)=acd47(16)*acd47(45)
      acd47(41)=acd47(44)+acd47(43)+acd47(41)
      acd47(41)=acd47(14)*acd47(41)
      acd47(43)=acd47(22)*acd47(45)
      acd47(44)=acd47(25)*acd47(39)
      acd47(46)=acd47(27)*acd47(37)
      acd47(43)=acd47(46)+acd47(44)+acd47(43)
      acd47(43)=acd47(23)*acd47(43)
      acd47(44)=acd47(24)*acd47(12)
      acd47(42)=acd47(44)+acd47(42)
      acd47(42)=acd47(29)*acd47(42)
      acd47(44)=acd47(20)*acd47(12)
      acd47(46)=acd47(26)*acd47(5)
      acd47(44)=acd47(44)+acd47(46)
      acd47(44)=acd47(31)*acd47(44)
      acd47(40)=acd47(32)*acd47(40)
      acd47(40)=acd47(40)+acd47(44)+acd47(42)
      acd47(40)=acd47(30)*acd47(40)
      acd47(42)=acd47(20)*acd47(45)
      acd47(39)=acd47(24)*acd47(39)
      acd47(37)=acd47(26)*acd47(37)
      acd47(37)=acd47(37)+acd47(42)+acd47(39)
      acd47(37)=acd47(21)*acd47(37)
      acd47(39)=acd47(31)*acd47(34)
      acd47(42)=acd47(26)*acd47(39)
      acd47(44)=acd47(32)*acd47(34)
      acd47(45)=acd47(24)*acd47(44)
      acd47(42)=acd47(42)+acd47(45)
      acd47(42)=acd47(33)*acd47(42)
      acd47(45)=acd47(29)*acd47(34)
      acd47(46)=acd47(26)*acd47(45)
      acd47(44)=acd47(20)*acd47(44)
      acd47(44)=acd47(46)+acd47(44)
      acd47(44)=acd47(35)*acd47(44)
      acd47(45)=acd47(24)*acd47(45)
      acd47(39)=acd47(20)*acd47(39)
      acd47(39)=acd47(45)+acd47(39)
      acd47(39)=acd47(36)*acd47(39)
      brack=acd47(37)+2.0_ki*acd47(38)+acd47(39)+acd47(40)+acd47(41)+acd47(42)+&
      &acd47(43)+acd47(44)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd47
      complex(ki) :: brack
      acd47(1)=d(iv1,iv2)
      acd47(2)=spvak2l3(iv3)
      acd47(3)=spvak2k5(iv4)
      acd47(4)=abb47(19)
      acd47(5)=spvak2l3(iv4)
      acd47(6)=spvak2k5(iv3)
      acd47(7)=d(iv1,iv3)
      acd47(8)=spvak2l3(iv2)
      acd47(9)=spvak2k5(iv2)
      acd47(10)=d(iv1,iv4)
      acd47(11)=d(iv2,iv3)
      acd47(12)=spvak2l3(iv1)
      acd47(13)=spvak2k5(iv1)
      acd47(14)=d(iv2,iv4)
      acd47(15)=d(iv3,iv4)
      acd47(16)=acd47(13)*acd47(11)
      acd47(17)=acd47(9)*acd47(7)
      acd47(18)=acd47(6)*acd47(1)
      acd47(16)=acd47(18)+acd47(16)+acd47(17)
      acd47(16)=acd47(5)*acd47(16)
      acd47(17)=acd47(13)*acd47(14)
      acd47(18)=acd47(9)*acd47(10)
      acd47(19)=acd47(3)*acd47(1)
      acd47(17)=acd47(19)+acd47(17)+acd47(18)
      acd47(17)=acd47(2)*acd47(17)
      acd47(18)=acd47(9)*acd47(12)
      acd47(19)=acd47(8)*acd47(13)
      acd47(18)=acd47(18)+acd47(19)
      acd47(18)=acd47(15)*acd47(18)
      acd47(19)=acd47(12)*acd47(14)
      acd47(20)=acd47(8)*acd47(10)
      acd47(19)=acd47(19)+acd47(20)
      acd47(19)=acd47(6)*acd47(19)
      acd47(20)=acd47(12)*acd47(11)
      acd47(21)=acd47(8)*acd47(7)
      acd47(20)=acd47(20)+acd47(21)
      acd47(20)=acd47(3)*acd47(20)
      acd47(16)=acd47(17)+acd47(20)+acd47(16)+acd47(19)+acd47(18)
      brack=2.0_ki*acd47(16)*acd47(4)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd47
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd47h1_qp
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
end module     p0_gg_hhg_d47h1l1d_qp
