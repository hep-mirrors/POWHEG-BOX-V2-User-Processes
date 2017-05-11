module p0_gg_hhg_d13h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d13h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d13
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd13
      complex(ki) :: brack
      acd13(1)=dotproduct(k2,qshift)
      acd13(2)=dotproduct(qshift,spvak2k1)
      acd13(3)=abb13(36)
      acd13(4)=dotproduct(qshift,spvak2l4)
      acd13(5)=abb13(16)
      acd13(6)=dotproduct(qshift,spvak2k5)
      acd13(7)=abb13(46)
      acd13(8)=abb13(31)
      acd13(9)=dotproduct(l3,qshift)
      acd13(10)=abb13(29)
      acd13(11)=abb13(14)
      acd13(12)=abb13(37)
      acd13(13)=abb13(22)
      acd13(14)=dotproduct(l4,qshift)
      acd13(15)=abb13(21)
      acd13(16)=abb13(28)
      acd13(17)=dotproduct(k5,qshift)
      acd13(18)=abb13(25)
      acd13(19)=dotproduct(qshift,qshift)
      acd13(20)=abb13(18)
      acd13(21)=abb13(27)
      acd13(22)=abb13(23)
      acd13(23)=abb13(26)
      acd13(24)=dotproduct(qshift,spvak2l3)
      acd13(25)=abb13(13)
      acd13(26)=abb13(32)
      acd13(27)=abb13(20)
      acd13(28)=abb13(15)
      acd13(29)=abb13(24)
      acd13(30)=abb13(12)
      acd13(31)=abb13(11)
      acd13(32)=dotproduct(qshift,spval3k1)
      acd13(33)=abb13(43)
      acd13(34)=dotproduct(qshift,spval4k1)
      acd13(35)=abb13(40)
      acd13(36)=abb13(17)
      acd13(37)=abb13(19)
      acd13(38)=abb13(44)
      acd13(39)=abb13(42)
      acd13(40)=abb13(34)
      acd13(41)=acd13(34)*acd13(35)
      acd13(42)=-acd13(32)*acd13(33)
      acd13(43)=acd13(14)*acd13(15)
      acd13(44)=acd13(24)*acd13(31)
      acd13(45)=acd13(9)*acd13(12)
      acd13(46)=acd13(1)*acd13(7)
      acd13(47)=acd13(4)*acd13(29)
      acd13(48)=-acd13(19)*acd13(23)
      acd13(49)=acd13(19)*acd13(20)
      acd13(49)=acd13(27)+acd13(49)
      acd13(49)=acd13(2)*acd13(49)
      acd13(41)=acd13(49)+acd13(48)+acd13(47)+acd13(46)+acd13(45)+acd13(44)+acd&
      &13(43)+acd13(42)-acd13(36)+acd13(41)
      acd13(41)=acd13(6)*acd13(41)
      acd13(42)=-acd13(9)*acd13(10)
      acd13(43)=acd13(1)*acd13(3)
      acd13(44)=-acd13(19)*acd13(21)
      acd13(42)=acd13(44)+acd13(43)-acd13(28)+acd13(42)
      acd13(42)=acd13(2)*acd13(42)
      acd13(43)=acd13(9)*acd13(11)
      acd13(44)=acd13(1)*acd13(5)
      acd13(43)=acd13(44)-acd13(30)+acd13(43)
      acd13(43)=acd13(4)*acd13(43)
      acd13(44)=-acd13(24)*acd13(25)
      acd13(45)=-acd13(4)*acd13(22)
      acd13(44)=acd13(45)-acd13(26)+acd13(44)
      acd13(44)=acd13(19)*acd13(44)
      acd13(45)=-acd13(17)*acd13(18)
      acd13(46)=-acd13(34)*acd13(39)
      acd13(47)=-acd13(32)*acd13(38)
      acd13(48)=-acd13(14)*acd13(16)
      acd13(49)=-acd13(24)*acd13(37)
      acd13(50)=-acd13(9)*acd13(13)
      acd13(51)=-acd13(1)*acd13(8)
      brack=acd13(40)+acd13(41)+acd13(42)+acd13(43)+acd13(44)+acd13(45)+acd13(4&
      &6)+acd13(47)+acd13(48)+acd13(49)+acd13(50)+acd13(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd13
      complex(ki) :: brack
      acd13(1)=k2(iv1)
      acd13(2)=dotproduct(qshift,spvak2k1)
      acd13(3)=abb13(36)
      acd13(4)=dotproduct(qshift,spvak2l4)
      acd13(5)=abb13(16)
      acd13(6)=dotproduct(qshift,spvak2k5)
      acd13(7)=abb13(46)
      acd13(8)=abb13(31)
      acd13(9)=l3(iv1)
      acd13(10)=abb13(29)
      acd13(11)=abb13(14)
      acd13(12)=abb13(37)
      acd13(13)=abb13(22)
      acd13(14)=l4(iv1)
      acd13(15)=abb13(21)
      acd13(16)=abb13(28)
      acd13(17)=k5(iv1)
      acd13(18)=abb13(25)
      acd13(19)=qshift(iv1)
      acd13(20)=abb13(18)
      acd13(21)=abb13(27)
      acd13(22)=abb13(23)
      acd13(23)=abb13(26)
      acd13(24)=dotproduct(qshift,spvak2l3)
      acd13(25)=abb13(13)
      acd13(26)=abb13(32)
      acd13(27)=spvak2k1(iv1)
      acd13(28)=dotproduct(k2,qshift)
      acd13(29)=dotproduct(l3,qshift)
      acd13(30)=dotproduct(qshift,qshift)
      acd13(31)=abb13(20)
      acd13(32)=abb13(15)
      acd13(33)=spvak2l4(iv1)
      acd13(34)=abb13(24)
      acd13(35)=abb13(12)
      acd13(36)=spvak2k5(iv1)
      acd13(37)=dotproduct(l4,qshift)
      acd13(38)=abb13(11)
      acd13(39)=dotproduct(qshift,spval3k1)
      acd13(40)=abb13(43)
      acd13(41)=dotproduct(qshift,spval4k1)
      acd13(42)=abb13(40)
      acd13(43)=abb13(17)
      acd13(44)=spvak2l3(iv1)
      acd13(45)=abb13(19)
      acd13(46)=spval3k1(iv1)
      acd13(47)=abb13(44)
      acd13(48)=spval4k1(iv1)
      acd13(49)=abb13(42)
      acd13(50)=-acd13(42)*acd13(41)
      acd13(51)=acd13(40)*acd13(39)
      acd13(52)=-acd13(24)*acd13(38)
      acd13(53)=-acd13(15)*acd13(37)
      acd13(54)=-acd13(29)*acd13(12)
      acd13(55)=-acd13(28)*acd13(7)
      acd13(56)=-acd13(4)*acd13(34)
      acd13(57)=acd13(30)*acd13(23)
      acd13(58)=acd13(30)*acd13(20)
      acd13(58)=acd13(58)+acd13(31)
      acd13(59)=-acd13(2)*acd13(58)
      acd13(50)=acd13(59)+acd13(57)+acd13(56)+acd13(55)+acd13(54)+acd13(53)+acd&
      &13(52)+acd13(51)+acd13(43)+acd13(50)
      acd13(50)=acd13(36)*acd13(50)
      acd13(51)=-acd13(2)*acd13(20)
      acd13(51)=acd13(51)+acd13(23)
      acd13(52)=2.0_ki*acd13(19)
      acd13(51)=acd13(52)*acd13(51)
      acd13(53)=-acd13(42)*acd13(48)
      acd13(54)=acd13(40)*acd13(46)
      acd13(55)=-acd13(14)*acd13(15)
      acd13(56)=-acd13(44)*acd13(38)
      acd13(57)=-acd13(9)*acd13(12)
      acd13(59)=-acd13(1)*acd13(7)
      acd13(60)=-acd13(33)*acd13(34)
      acd13(58)=-acd13(27)*acd13(58)
      acd13(51)=acd13(58)+acd13(60)+acd13(59)+acd13(57)+acd13(56)+acd13(55)+acd&
      &13(53)+acd13(54)+acd13(51)
      acd13(51)=acd13(6)*acd13(51)
      acd13(53)=acd13(29)*acd13(10)
      acd13(54)=-acd13(28)*acd13(3)
      acd13(55)=acd13(30)*acd13(21)
      acd13(53)=acd13(55)+acd13(54)+acd13(32)+acd13(53)
      acd13(53)=acd13(27)*acd13(53)
      acd13(54)=acd13(9)*acd13(10)
      acd13(55)=-acd13(1)*acd13(3)
      acd13(56)=acd13(21)*acd13(52)
      acd13(54)=acd13(56)+acd13(54)+acd13(55)
      acd13(54)=acd13(2)*acd13(54)
      acd13(55)=-acd13(29)*acd13(11)
      acd13(56)=-acd13(28)*acd13(5)
      acd13(55)=acd13(56)+acd13(35)+acd13(55)
      acd13(55)=acd13(33)*acd13(55)
      acd13(56)=acd13(44)*acd13(25)
      acd13(57)=acd13(33)*acd13(22)
      acd13(56)=acd13(56)+acd13(57)
      acd13(56)=acd13(30)*acd13(56)
      acd13(57)=acd13(24)*acd13(25)
      acd13(58)=acd13(4)*acd13(22)
      acd13(57)=acd13(58)+acd13(26)+acd13(57)
      acd13(52)=acd13(57)*acd13(52)
      acd13(57)=-acd13(4)*acd13(11)
      acd13(57)=acd13(57)+acd13(13)
      acd13(57)=acd13(9)*acd13(57)
      acd13(58)=acd13(17)*acd13(18)
      acd13(59)=acd13(48)*acd13(49)
      acd13(60)=acd13(46)*acd13(47)
      acd13(61)=acd13(14)*acd13(16)
      acd13(62)=acd13(44)*acd13(45)
      acd13(63)=-acd13(4)*acd13(5)
      acd13(63)=acd13(8)+acd13(63)
      acd13(63)=acd13(1)*acd13(63)
      brack=acd13(50)+acd13(51)+acd13(52)+acd13(53)+acd13(54)+acd13(55)+acd13(5&
      &6)+acd13(57)+acd13(58)+acd13(59)+acd13(60)+acd13(61)+acd13(62)+acd13(63)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=dotproduct(qshift,spvak2k1)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(18)
      acd13(5)=abb13(27)
      acd13(6)=abb13(26)
      acd13(7)=dotproduct(qshift,spvak2l3)
      acd13(8)=abb13(13)
      acd13(9)=dotproduct(qshift,spvak2l4)
      acd13(10)=abb13(23)
      acd13(11)=abb13(32)
      acd13(12)=k2(iv1)
      acd13(13)=spvak2k1(iv2)
      acd13(14)=abb13(36)
      acd13(15)=spvak2k5(iv2)
      acd13(16)=abb13(46)
      acd13(17)=spvak2l4(iv2)
      acd13(18)=abb13(16)
      acd13(19)=k2(iv2)
      acd13(20)=spvak2k1(iv1)
      acd13(21)=spvak2k5(iv1)
      acd13(22)=spvak2l4(iv1)
      acd13(23)=l3(iv1)
      acd13(24)=abb13(29)
      acd13(25)=abb13(37)
      acd13(26)=abb13(14)
      acd13(27)=l3(iv2)
      acd13(28)=l4(iv1)
      acd13(29)=abb13(21)
      acd13(30)=l4(iv2)
      acd13(31)=qshift(iv1)
      acd13(32)=spvak2l3(iv2)
      acd13(33)=qshift(iv2)
      acd13(34)=spvak2l3(iv1)
      acd13(35)=dotproduct(qshift,qshift)
      acd13(36)=abb13(20)
      acd13(37)=abb13(11)
      acd13(38)=abb13(24)
      acd13(39)=spval3k1(iv2)
      acd13(40)=abb13(43)
      acd13(41)=spval4k1(iv2)
      acd13(42)=abb13(40)
      acd13(43)=spval3k1(iv1)
      acd13(44)=spval4k1(iv1)
      acd13(45)=acd13(31)*acd13(13)
      acd13(46)=acd13(33)*acd13(20)
      acd13(47)=acd13(2)*acd13(1)
      acd13(45)=acd13(47)+acd13(45)+acd13(46)
      acd13(46)=acd13(3)*acd13(4)
      acd13(46)=-acd13(5)+acd13(46)
      acd13(45)=acd13(45)*acd13(46)
      acd13(46)=acd13(31)*acd13(15)
      acd13(47)=acd13(33)*acd13(21)
      acd13(46)=acd13(46)+acd13(47)
      acd13(47)=acd13(2)*acd13(4)*acd13(46)
      acd13(48)=-acd13(3)*acd13(1)
      acd13(46)=acd13(48)-acd13(46)
      acd13(46)=acd13(6)*acd13(46)
      acd13(48)=-acd13(17)*acd13(31)
      acd13(49)=-acd13(22)*acd13(33)
      acd13(48)=acd13(48)+acd13(49)
      acd13(48)=acd13(10)*acd13(48)
      acd13(45)=acd13(48)+acd13(46)+acd13(47)+acd13(45)
      acd13(46)=acd13(28)*acd13(29)
      acd13(47)=-acd13(43)*acd13(40)
      acd13(48)=acd13(44)*acd13(42)
      acd13(46)=acd13(48)+acd13(47)+acd13(46)
      acd13(46)=acd13(15)*acd13(46)
      acd13(47)=acd13(30)*acd13(29)
      acd13(48)=-acd13(39)*acd13(40)
      acd13(49)=acd13(41)*acd13(42)
      acd13(47)=acd13(49)+acd13(48)+acd13(47)
      acd13(47)=acd13(21)*acd13(47)
      acd13(48)=-acd13(32)*acd13(31)
      acd13(49)=-acd13(34)*acd13(33)
      acd13(50)=-acd13(7)*acd13(1)
      acd13(48)=acd13(50)+acd13(49)+acd13(48)
      acd13(49)=2.0_ki*acd13(8)
      acd13(48)=acd13(49)*acd13(48)
      acd13(49)=-acd13(9)*acd13(10)
      acd13(49)=-acd13(11)+acd13(49)
      acd13(50)=2.0_ki*acd13(1)
      acd13(49)=acd13(50)*acd13(49)
      acd13(50)=acd13(12)*acd13(13)
      acd13(51)=acd13(19)*acd13(20)
      acd13(50)=acd13(50)+acd13(51)
      acd13(50)=acd13(14)*acd13(50)
      acd13(51)=acd13(12)*acd13(15)
      acd13(52)=acd13(19)*acd13(21)
      acd13(51)=acd13(51)+acd13(52)
      acd13(51)=acd13(16)*acd13(51)
      acd13(52)=acd13(12)*acd13(17)
      acd13(53)=acd13(19)*acd13(22)
      acd13(52)=acd13(52)+acd13(53)
      acd13(52)=acd13(18)*acd13(52)
      acd13(53)=-acd13(23)*acd13(13)
      acd13(54)=-acd13(27)*acd13(20)
      acd13(53)=acd13(53)+acd13(54)
      acd13(53)=acd13(24)*acd13(53)
      acd13(54)=acd13(23)*acd13(15)
      acd13(55)=acd13(27)*acd13(21)
      acd13(54)=acd13(54)+acd13(55)
      acd13(54)=acd13(25)*acd13(54)
      acd13(55)=acd13(23)*acd13(17)
      acd13(56)=acd13(27)*acd13(22)
      acd13(55)=acd13(55)+acd13(56)
      acd13(55)=acd13(26)*acd13(55)
      acd13(56)=acd13(20)*acd13(15)
      acd13(57)=acd13(13)*acd13(21)
      acd13(56)=acd13(56)+acd13(57)
      acd13(57)=acd13(35)*acd13(4)*acd13(56)
      acd13(56)=acd13(36)*acd13(56)
      acd13(58)=acd13(32)*acd13(21)
      acd13(59)=acd13(34)*acd13(15)
      acd13(58)=acd13(58)+acd13(59)
      acd13(58)=acd13(37)*acd13(58)
      acd13(59)=acd13(17)*acd13(21)
      acd13(60)=acd13(22)*acd13(15)
      acd13(59)=acd13(59)+acd13(60)
      acd13(59)=acd13(38)*acd13(59)
      brack=2.0_ki*acd13(45)+acd13(46)+acd13(47)+acd13(48)+acd13(49)+acd13(50)+&
      &acd13(51)+acd13(52)+acd13(53)+acd13(54)+acd13(55)+acd13(56)+acd13(57)+ac&
      &d13(58)+acd13(59)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=spvak2k1(iv3)
      acd13(3)=dotproduct(qshift,spvak2k5)
      acd13(4)=abb13(18)
      acd13(5)=abb13(27)
      acd13(6)=spvak2k5(iv3)
      acd13(7)=dotproduct(qshift,spvak2k1)
      acd13(8)=abb13(26)
      acd13(9)=spvak2l3(iv3)
      acd13(10)=abb13(13)
      acd13(11)=spvak2l4(iv3)
      acd13(12)=abb13(23)
      acd13(13)=d(iv1,iv3)
      acd13(14)=spvak2k1(iv2)
      acd13(15)=spvak2k5(iv2)
      acd13(16)=spvak2l3(iv2)
      acd13(17)=spvak2l4(iv2)
      acd13(18)=d(iv2,iv3)
      acd13(19)=spvak2k1(iv1)
      acd13(20)=spvak2k5(iv1)
      acd13(21)=spvak2l3(iv1)
      acd13(22)=spvak2l4(iv1)
      acd13(23)=qshift(iv1)
      acd13(24)=qshift(iv2)
      acd13(25)=qshift(iv3)
      acd13(26)=-acd13(15)*acd13(19)
      acd13(27)=-acd13(14)*acd13(20)
      acd13(26)=acd13(26)+acd13(27)
      acd13(26)=acd13(25)*acd13(26)
      acd13(27)=-acd13(19)*acd13(24)
      acd13(28)=-acd13(14)*acd13(23)
      acd13(27)=acd13(27)+acd13(28)
      acd13(27)=acd13(6)*acd13(27)
      acd13(28)=-acd13(20)*acd13(24)
      acd13(29)=-acd13(15)*acd13(23)
      acd13(28)=acd13(28)+acd13(29)
      acd13(28)=acd13(2)*acd13(28)
      acd13(29)=-acd13(20)*acd13(7)
      acd13(30)=-acd13(19)*acd13(3)
      acd13(29)=acd13(29)+acd13(30)
      acd13(29)=acd13(18)*acd13(29)
      acd13(30)=-acd13(15)*acd13(7)
      acd13(31)=-acd13(14)*acd13(3)
      acd13(30)=acd13(30)+acd13(31)
      acd13(30)=acd13(13)*acd13(30)
      acd13(31)=-acd13(6)*acd13(7)
      acd13(32)=-acd13(2)*acd13(3)
      acd13(31)=acd13(31)+acd13(32)
      acd13(31)=acd13(1)*acd13(31)
      acd13(26)=acd13(31)+acd13(30)+acd13(29)+acd13(28)+acd13(27)+acd13(26)
      acd13(26)=acd13(4)*acd13(26)
      acd13(27)=acd13(12)*acd13(22)
      acd13(28)=acd13(10)*acd13(21)
      acd13(29)=acd13(20)*acd13(8)
      acd13(30)=acd13(19)*acd13(5)
      acd13(27)=acd13(30)+acd13(29)+acd13(27)+acd13(28)
      acd13(27)=acd13(18)*acd13(27)
      acd13(28)=acd13(12)*acd13(17)
      acd13(29)=acd13(10)*acd13(16)
      acd13(30)=acd13(15)*acd13(8)
      acd13(31)=acd13(14)*acd13(5)
      acd13(28)=acd13(31)+acd13(30)+acd13(28)+acd13(29)
      acd13(28)=acd13(13)*acd13(28)
      acd13(29)=acd13(12)*acd13(11)
      acd13(30)=acd13(10)*acd13(9)
      acd13(31)=acd13(6)*acd13(8)
      acd13(32)=acd13(2)*acd13(5)
      acd13(29)=acd13(32)+acd13(31)+acd13(29)+acd13(30)
      acd13(29)=acd13(1)*acd13(29)
      acd13(26)=acd13(26)+acd13(29)+acd13(27)+acd13(28)
      brack=2.0_ki*acd13(26)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=spvak2k1(iv3)
      acd13(3)=spvak2k5(iv4)
      acd13(4)=abb13(18)
      acd13(5)=spvak2k1(iv4)
      acd13(6)=spvak2k5(iv3)
      acd13(7)=d(iv1,iv3)
      acd13(8)=spvak2k1(iv2)
      acd13(9)=spvak2k5(iv2)
      acd13(10)=d(iv1,iv4)
      acd13(11)=d(iv2,iv3)
      acd13(12)=spvak2k1(iv1)
      acd13(13)=spvak2k5(iv1)
      acd13(14)=d(iv2,iv4)
      acd13(15)=d(iv3,iv4)
      acd13(16)=acd13(13)*acd13(11)
      acd13(17)=acd13(9)*acd13(7)
      acd13(18)=acd13(6)*acd13(1)
      acd13(16)=acd13(18)+acd13(16)+acd13(17)
      acd13(16)=acd13(5)*acd13(16)
      acd13(17)=acd13(13)*acd13(14)
      acd13(18)=acd13(9)*acd13(10)
      acd13(19)=acd13(3)*acd13(1)
      acd13(17)=acd13(19)+acd13(17)+acd13(18)
      acd13(17)=acd13(2)*acd13(17)
      acd13(18)=acd13(9)*acd13(12)
      acd13(19)=acd13(8)*acd13(13)
      acd13(18)=acd13(18)+acd13(19)
      acd13(18)=acd13(15)*acd13(18)
      acd13(19)=acd13(12)*acd13(14)
      acd13(20)=acd13(8)*acd13(10)
      acd13(19)=acd13(19)+acd13(20)
      acd13(19)=acd13(6)*acd13(19)
      acd13(20)=acd13(12)*acd13(11)
      acd13(21)=acd13(8)*acd13(7)
      acd13(20)=acd13(20)+acd13(21)
      acd13(20)=acd13(3)*acd13(20)
      acd13(16)=acd13(17)+acd13(20)+acd13(16)+acd13(19)+acd13(18)
      brack=2.0_ki*acd13(16)*acd13(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h1_qp
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
      qshift = k3+k5
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
!---#[ subroutine reconstruct_d13:
   subroutine     reconstruct_d13(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group10
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group10), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_13:
      coeffs%coeffs_13%c0 = derivative(czip)
      coeffs%coeffs_13%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_13%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_13%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_13%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_13%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_13%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_13%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_13%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_13%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_13%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_13%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_13%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_13%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_13%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_13%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_13%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_13%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_13%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_13%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_13%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_13%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_13%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_13%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_13%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_13%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_13%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_13%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_13%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_13%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_13%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_13%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_13%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_13%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_13%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_13%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_13%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_13%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_13%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_13%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_13%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_13%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_13%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_13%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_13%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_13%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_13%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_13%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_13%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_13%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_13%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_13%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_13%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_13%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_13%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_13%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_13%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_13%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_13%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_13%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_13%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_13%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_13%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_13%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_13%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_13%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_13%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_13%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_13:
   end subroutine reconstruct_d13
!---#] subroutine reconstruct_d13:
end module p0_gg_hhg_d13h1l1d_qp
