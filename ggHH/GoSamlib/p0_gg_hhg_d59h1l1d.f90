module     p0_gg_hhg_d59h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d59h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond, d => metric_tensor
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
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd59
      complex(ki) :: brack
      acd59(1)=dotproduct(qshift,qshift)
      acd59(2)=dotproduct(qshift,spvak2k1)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(25)
      acd59(5)=abb59(13)
      acd59(6)=abb59(33)
      acd59(7)=dotproduct(qshift,spvak2l3)
      acd59(8)=abb59(32)
      acd59(9)=abb59(14)
      acd59(10)=abb59(23)
      acd59(11)=abb59(16)
      acd59(12)=abb59(9)
      acd59(13)=abb59(18)
      acd59(14)=abb59(22)
      acd59(15)=abb59(28)
      acd59(16)=dotproduct(qshift,spval3k1)
      acd59(17)=abb59(8)
      acd59(18)=abb59(11)
      acd59(19)=dotproduct(qshift,spvak1k5)
      acd59(20)=dotproduct(qshift,spval3k5)
      acd59(21)=abb59(15)
      acd59(22)=abb59(17)
      acd59(23)=abb59(38)
      acd59(24)=abb59(20)
      acd59(25)=abb59(10)
      acd59(26)=abb59(19)
      acd59(27)=abb59(35)
      acd59(28)=abb59(12)
      acd59(29)=abb59(26)
      acd59(30)=abb59(29)
      acd59(31)=abb59(27)
      acd59(32)=abb59(24)
      acd59(33)=abb59(21)
      acd59(34)=-acd59(16)*acd59(17)
      acd59(35)=-acd59(1)*acd59(4)
      acd59(36)=-acd59(7)*acd59(15)
      acd59(37)=-acd59(2)*acd59(12)
      acd59(34)=acd59(37)+acd59(36)+acd59(35)+acd59(18)+acd59(34)
      acd59(34)=acd59(2)*acd59(34)
      acd59(35)=-acd59(16)*acd59(25)
      acd59(36)=acd59(1)*acd59(6)
      acd59(37)=-acd59(2)*acd59(14)
      acd59(35)=acd59(37)+acd59(36)+acd59(26)+acd59(35)
      acd59(35)=acd59(3)*acd59(35)
      acd59(36)=acd59(16)*acd59(21)
      acd59(37)=-acd59(1)*acd59(8)
      acd59(36)=acd59(37)+acd59(27)+acd59(36)
      acd59(36)=acd59(7)*acd59(36)
      acd59(37)=acd59(16)*acd59(28)
      acd59(38)=-acd59(1)*acd59(9)
      acd59(34)=acd59(35)+acd59(34)+acd59(36)+acd59(38)-acd59(29)+acd59(37)
      acd59(34)=acd59(3)*acd59(34)
      acd59(35)=acd59(21)*acd59(20)
      acd59(36)=acd59(8)*acd59(19)
      acd59(35)=acd59(36)+acd59(22)+acd59(35)
      acd59(35)=acd59(7)*acd59(35)
      acd59(36)=acd59(16)*acd59(23)
      acd59(37)=-acd59(1)*acd59(5)
      acd59(38)=acd59(2)*acd59(13)
      acd59(35)=acd59(38)+acd59(35)+acd59(37)-acd59(24)+acd59(36)
      acd59(35)=acd59(2)*acd59(35)
      acd59(36)=acd59(16)*acd59(30)
      acd59(37)=-acd59(1)*acd59(10)
      acd59(36)=acd59(37)-acd59(31)+acd59(36)
      acd59(36)=acd59(7)*acd59(36)
      acd59(37)=-acd59(16)*acd59(32)
      acd59(38)=acd59(1)*acd59(11)
      brack=acd59(33)+acd59(34)+acd59(35)+acd59(36)+acd59(37)+acd59(38)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd59
      complex(ki) :: brack
      acd59(1)=qshift(iv1)
      acd59(2)=dotproduct(qshift,spvak2k1)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(25)
      acd59(5)=abb59(13)
      acd59(6)=abb59(33)
      acd59(7)=dotproduct(qshift,spvak2l3)
      acd59(8)=abb59(32)
      acd59(9)=abb59(14)
      acd59(10)=abb59(23)
      acd59(11)=abb59(16)
      acd59(12)=spvak2k1(iv1)
      acd59(13)=dotproduct(qshift,qshift)
      acd59(14)=abb59(9)
      acd59(15)=abb59(18)
      acd59(16)=abb59(22)
      acd59(17)=abb59(28)
      acd59(18)=dotproduct(qshift,spval3k1)
      acd59(19)=abb59(8)
      acd59(20)=abb59(11)
      acd59(21)=dotproduct(qshift,spvak1k5)
      acd59(22)=dotproduct(qshift,spval3k5)
      acd59(23)=abb59(15)
      acd59(24)=abb59(17)
      acd59(25)=abb59(38)
      acd59(26)=abb59(20)
      acd59(27)=spvak2k5(iv1)
      acd59(28)=abb59(10)
      acd59(29)=abb59(19)
      acd59(30)=abb59(35)
      acd59(31)=abb59(12)
      acd59(32)=abb59(26)
      acd59(33)=spvak2l3(iv1)
      acd59(34)=abb59(29)
      acd59(35)=abb59(27)
      acd59(36)=spvak1k5(iv1)
      acd59(37)=spval3k5(iv1)
      acd59(38)=spval3k1(iv1)
      acd59(39)=abb59(24)
      acd59(40)=-acd59(38)*acd59(19)
      acd59(41)=2.0_ki*acd59(1)
      acd59(42)=-acd59(4)*acd59(41)
      acd59(43)=-acd59(33)*acd59(17)
      acd59(44)=2.0_ki*acd59(12)
      acd59(45)=-acd59(14)*acd59(44)
      acd59(46)=2.0_ki*acd59(27)
      acd59(47)=-acd59(16)*acd59(46)
      acd59(40)=acd59(47)+acd59(45)+acd59(43)+acd59(40)+acd59(42)
      acd59(40)=acd59(2)*acd59(40)
      acd59(42)=acd59(38)*acd59(23)
      acd59(43)=-acd59(8)*acd59(41)
      acd59(45)=-acd59(12)*acd59(17)
      acd59(42)=acd59(45)+acd59(42)+acd59(43)
      acd59(42)=acd59(7)*acd59(42)
      acd59(43)=-acd59(38)*acd59(28)
      acd59(45)=acd59(6)*acd59(41)
      acd59(47)=-acd59(12)*acd59(16)
      acd59(43)=acd59(47)+acd59(43)+acd59(45)
      acd59(43)=acd59(3)*acd59(43)
      acd59(45)=acd59(18)*acd59(23)
      acd59(47)=acd59(13)*acd59(8)
      acd59(45)=acd59(30)+acd59(45)-acd59(47)
      acd59(47)=acd59(33)*acd59(45)
      acd59(48)=acd59(18)*acd59(19)
      acd59(49)=acd59(13)*acd59(4)
      acd59(48)=-acd59(20)+acd59(48)+acd59(49)
      acd59(49)=-acd59(12)*acd59(48)
      acd59(50)=-acd59(18)*acd59(28)
      acd59(51)=acd59(13)*acd59(6)
      acd59(50)=acd59(51)+acd59(29)+acd59(50)
      acd59(46)=acd59(50)*acd59(46)
      acd59(50)=acd59(38)*acd59(31)
      acd59(51)=-acd59(9)*acd59(41)
      acd59(40)=acd59(43)+acd59(40)+acd59(46)+acd59(42)+acd59(49)+acd59(47)+acd&
      &59(50)+acd59(51)
      acd59(40)=acd59(3)*acd59(40)
      acd59(42)=-acd59(7)*acd59(17)
      acd59(43)=-acd59(2)*acd59(14)
      acd59(42)=acd59(43)+acd59(42)-acd59(48)
      acd59(42)=acd59(27)*acd59(42)
      acd59(43)=acd59(23)*acd59(22)
      acd59(46)=acd59(8)*acd59(21)
      acd59(43)=acd59(24)+acd59(43)+acd59(46)
      acd59(46)=acd59(33)*acd59(43)
      acd59(47)=acd59(23)*acd59(37)
      acd59(48)=acd59(8)*acd59(36)
      acd59(47)=acd59(47)+acd59(48)
      acd59(47)=acd59(7)*acd59(47)
      acd59(48)=acd59(38)*acd59(25)
      acd59(49)=-acd59(5)*acd59(41)
      acd59(44)=acd59(15)*acd59(44)
      acd59(42)=acd59(47)+acd59(44)+acd59(46)+acd59(48)+acd59(49)+acd59(42)
      acd59(42)=acd59(2)*acd59(42)
      acd59(43)=acd59(12)*acd59(43)
      acd59(44)=acd59(38)*acd59(34)
      acd59(46)=-acd59(10)*acd59(41)
      acd59(43)=acd59(43)+acd59(44)+acd59(46)
      acd59(43)=acd59(7)*acd59(43)
      acd59(44)=acd59(7)*acd59(45)
      acd59(45)=acd59(18)*acd59(31)
      acd59(46)=-acd59(13)*acd59(9)
      acd59(44)=acd59(44)+acd59(46)-acd59(32)+acd59(45)
      acd59(44)=acd59(27)*acd59(44)
      acd59(45)=acd59(18)*acd59(34)
      acd59(46)=-acd59(13)*acd59(10)
      acd59(45)=acd59(46)-acd59(35)+acd59(45)
      acd59(45)=acd59(33)*acd59(45)
      acd59(46)=acd59(18)*acd59(25)
      acd59(47)=-acd59(13)*acd59(5)
      acd59(46)=acd59(47)-acd59(26)+acd59(46)
      acd59(46)=acd59(12)*acd59(46)
      acd59(47)=-acd59(38)*acd59(39)
      acd59(41)=acd59(11)*acd59(41)
      brack=acd59(40)+acd59(41)+acd59(42)+acd59(43)+acd59(44)+acd59(45)+acd59(4&
      &6)+acd59(47)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd59
      complex(ki) :: brack
      acd59(1)=d(iv1,iv2)
      acd59(2)=dotproduct(qshift,spvak2k1)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(25)
      acd59(5)=abb59(13)
      acd59(6)=abb59(33)
      acd59(7)=dotproduct(qshift,spvak2l3)
      acd59(8)=abb59(32)
      acd59(9)=abb59(14)
      acd59(10)=abb59(23)
      acd59(11)=abb59(16)
      acd59(12)=qshift(iv1)
      acd59(13)=spvak2k1(iv2)
      acd59(14)=spvak2k5(iv2)
      acd59(15)=spvak2l3(iv2)
      acd59(16)=qshift(iv2)
      acd59(17)=spvak2k1(iv1)
      acd59(18)=spvak2k5(iv1)
      acd59(19)=spvak2l3(iv1)
      acd59(20)=abb59(9)
      acd59(21)=abb59(18)
      acd59(22)=dotproduct(qshift,qshift)
      acd59(23)=abb59(22)
      acd59(24)=abb59(28)
      acd59(25)=dotproduct(qshift,spval3k1)
      acd59(26)=abb59(8)
      acd59(27)=abb59(11)
      acd59(28)=dotproduct(qshift,spvak1k5)
      acd59(29)=dotproduct(qshift,spval3k5)
      acd59(30)=abb59(15)
      acd59(31)=abb59(17)
      acd59(32)=spvak1k5(iv2)
      acd59(33)=spval3k5(iv2)
      acd59(34)=spval3k1(iv2)
      acd59(35)=abb59(38)
      acd59(36)=spvak1k5(iv1)
      acd59(37)=spval3k5(iv1)
      acd59(38)=spval3k1(iv1)
      acd59(39)=abb59(10)
      acd59(40)=abb59(19)
      acd59(41)=abb59(35)
      acd59(42)=abb59(12)
      acd59(43)=abb59(29)
      acd59(44)=acd59(26)*acd59(25)
      acd59(45)=acd59(4)*acd59(22)
      acd59(46)=acd59(7)*acd59(24)
      acd59(47)=2.0_ki*acd59(2)
      acd59(47)=acd59(47)*acd59(20)
      acd59(44)=acd59(46)+acd59(44)+acd59(45)+acd59(47)-acd59(27)
      acd59(45)=-acd59(17)*acd59(44)
      acd59(46)=acd59(38)*acd59(26)
      acd59(47)=acd59(19)*acd59(24)
      acd59(48)=2.0_ki*acd59(12)
      acd59(49)=acd59(48)*acd59(4)
      acd59(46)=acd59(49)+acd59(46)+acd59(47)
      acd59(47)=-acd59(2)*acd59(46)
      acd59(49)=-acd59(38)*acd59(39)
      acd59(50)=acd59(6)*acd59(48)
      acd59(51)=-acd59(17)*acd59(23)
      acd59(49)=acd59(51)+acd59(49)+acd59(50)
      acd59(50)=2.0_ki*acd59(3)
      acd59(49)=acd59(49)*acd59(50)
      acd59(51)=-acd59(25)*acd59(39)
      acd59(52)=acd59(22)*acd59(6)
      acd59(53)=-acd59(2)*acd59(23)
      acd59(51)=acd59(53)+acd59(52)+acd59(40)+acd59(51)
      acd59(51)=acd59(18)*acd59(51)
      acd59(52)=acd59(8)*acd59(7)
      acd59(53)=acd59(52)+acd59(9)
      acd59(54)=-acd59(48)*acd59(53)
      acd59(55)=acd59(30)*acd59(25)
      acd59(56)=acd59(8)*acd59(22)
      acd59(55)=acd59(41)+acd59(55)-acd59(56)
      acd59(56)=acd59(19)*acd59(55)
      acd59(57)=acd59(7)*acd59(30)
      acd59(58)=acd59(57)+acd59(42)
      acd59(59)=acd59(38)*acd59(58)
      acd59(45)=2.0_ki*acd59(51)+acd59(49)+acd59(45)+acd59(47)+acd59(56)+acd59(&
      &54)+acd59(59)
      acd59(45)=acd59(14)*acd59(45)
      acd59(47)=acd59(30)*acd59(29)
      acd59(49)=acd59(8)*acd59(28)
      acd59(47)=acd59(31)+acd59(47)+acd59(49)
      acd59(49)=acd59(19)*acd59(47)
      acd59(51)=acd59(38)*acd59(35)
      acd59(54)=-acd59(5)*acd59(48)
      acd59(56)=acd59(37)*acd59(57)
      acd59(59)=acd59(36)*acd59(52)
      acd59(60)=2.0_ki*acd59(17)
      acd59(61)=acd59(21)*acd59(60)
      acd59(49)=acd59(61)+acd59(49)+acd59(59)+acd59(56)+acd59(51)+acd59(54)
      acd59(49)=acd59(13)*acd59(49)
      acd59(51)=2.0_ki*acd59(4)
      acd59(51)=-acd59(2)*acd59(51)
      acd59(54)=acd59(6)*acd59(50)
      acd59(51)=-2.0_ki*acd59(53)+acd59(54)+acd59(51)
      acd59(51)=acd59(1)*acd59(51)
      acd59(54)=acd59(34)*acd59(26)
      acd59(56)=acd59(15)*acd59(24)
      acd59(59)=2.0_ki*acd59(16)
      acd59(61)=acd59(59)*acd59(4)
      acd59(54)=acd59(61)+acd59(54)+acd59(56)
      acd59(56)=-acd59(17)*acd59(54)
      acd59(60)=-acd59(20)*acd59(60)
      acd59(46)=acd59(60)-acd59(46)
      acd59(46)=acd59(13)*acd59(46)
      acd59(60)=acd59(30)*acd59(34)
      acd59(61)=-acd59(8)*acd59(59)
      acd59(60)=acd59(60)+acd59(61)
      acd59(60)=acd59(19)*acd59(60)
      acd59(61)=acd59(30)*acd59(38)
      acd59(62)=-acd59(8)*acd59(48)
      acd59(61)=acd59(61)+acd59(62)
      acd59(61)=acd59(15)*acd59(61)
      acd59(46)=acd59(46)+acd59(56)+acd59(61)+acd59(60)+acd59(51)
      acd59(46)=acd59(3)*acd59(46)
      acd59(44)=-acd59(13)*acd59(44)
      acd59(51)=-acd59(2)*acd59(54)
      acd59(54)=-acd59(34)*acd59(39)
      acd59(56)=acd59(6)*acd59(59)
      acd59(60)=-acd59(13)*acd59(23)
      acd59(54)=acd59(60)+acd59(54)+acd59(56)
      acd59(50)=acd59(54)*acd59(50)
      acd59(53)=-acd59(59)*acd59(53)
      acd59(54)=acd59(15)*acd59(55)
      acd59(55)=acd59(34)*acd59(58)
      acd59(44)=acd59(50)+acd59(44)+acd59(51)+acd59(54)+acd59(53)+acd59(55)
      acd59(44)=acd59(18)*acd59(44)
      acd59(47)=acd59(15)*acd59(47)
      acd59(50)=acd59(34)*acd59(35)
      acd59(51)=-acd59(5)*acd59(59)
      acd59(53)=acd59(33)*acd59(57)
      acd59(52)=acd59(32)*acd59(52)
      acd59(47)=acd59(47)+acd59(52)+acd59(53)+acd59(50)+acd59(51)
      acd59(47)=acd59(17)*acd59(47)
      acd59(50)=acd59(30)*acd59(33)
      acd59(51)=acd59(8)*acd59(32)
      acd59(50)=acd59(50)+acd59(51)
      acd59(50)=acd59(19)*acd59(50)
      acd59(51)=acd59(30)*acd59(37)
      acd59(52)=acd59(8)*acd59(36)
      acd59(51)=acd59(51)+acd59(52)
      acd59(51)=acd59(15)*acd59(51)
      acd59(52)=2.0_ki*acd59(1)
      acd59(52)=-acd59(5)*acd59(52)
      acd59(50)=acd59(51)+acd59(52)+acd59(50)
      acd59(50)=acd59(2)*acd59(50)
      acd59(51)=acd59(34)*acd59(43)
      acd59(52)=-acd59(10)*acd59(59)
      acd59(51)=acd59(51)+acd59(52)
      acd59(51)=acd59(19)*acd59(51)
      acd59(52)=acd59(38)*acd59(43)
      acd59(48)=-acd59(10)*acd59(48)
      acd59(48)=acd59(52)+acd59(48)
      acd59(48)=acd59(15)*acd59(48)
      acd59(52)=-acd59(7)*acd59(10)
      acd59(52)=acd59(11)+acd59(52)
      acd59(52)=acd59(1)*acd59(52)
      brack=acd59(44)+acd59(45)+acd59(46)+acd59(47)+acd59(48)+acd59(49)+acd59(5&
      &0)+acd59(51)+2.0_ki*acd59(52)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd59
      complex(ki) :: brack
      acd59(1)=d(iv1,iv2)
      acd59(2)=spvak2k1(iv3)
      acd59(3)=dotproduct(qshift,spvak2k5)
      acd59(4)=abb59(25)
      acd59(5)=abb59(13)
      acd59(6)=spvak2k5(iv3)
      acd59(7)=dotproduct(qshift,spvak2k1)
      acd59(8)=abb59(33)
      acd59(9)=dotproduct(qshift,spvak2l3)
      acd59(10)=abb59(32)
      acd59(11)=abb59(14)
      acd59(12)=spvak2l3(iv3)
      acd59(13)=abb59(23)
      acd59(14)=d(iv1,iv3)
      acd59(15)=spvak2k1(iv2)
      acd59(16)=spvak2k5(iv2)
      acd59(17)=spvak2l3(iv2)
      acd59(18)=d(iv2,iv3)
      acd59(19)=spvak2k1(iv1)
      acd59(20)=spvak2k5(iv1)
      acd59(21)=spvak2l3(iv1)
      acd59(22)=qshift(iv1)
      acd59(23)=qshift(iv2)
      acd59(24)=qshift(iv3)
      acd59(25)=abb59(9)
      acd59(26)=abb59(22)
      acd59(27)=abb59(28)
      acd59(28)=spval3k1(iv3)
      acd59(29)=abb59(8)
      acd59(30)=spval3k1(iv2)
      acd59(31)=spvak1k5(iv3)
      acd59(32)=spval3k5(iv3)
      acd59(33)=abb59(15)
      acd59(34)=spvak1k5(iv2)
      acd59(35)=spval3k5(iv2)
      acd59(36)=spval3k1(iv1)
      acd59(37)=spvak1k5(iv1)
      acd59(38)=spval3k5(iv1)
      acd59(39)=abb59(10)
      acd59(40)=acd59(1)*acd59(6)
      acd59(41)=acd59(14)*acd59(16)
      acd59(42)=acd59(18)*acd59(20)
      acd59(40)=acd59(42)+acd59(40)+acd59(41)
      acd59(41)=2.0_ki*acd59(8)
      acd59(42)=acd59(41)*acd59(40)
      acd59(43)=acd59(12)*acd59(10)
      acd59(44)=-acd59(4)*acd59(2)
      acd59(44)=acd59(44)-acd59(43)
      acd59(44)=acd59(1)*acd59(44)
      acd59(45)=acd59(17)*acd59(10)
      acd59(46)=-acd59(4)*acd59(15)
      acd59(46)=acd59(46)-acd59(45)
      acd59(46)=acd59(14)*acd59(46)
      acd59(47)=acd59(21)*acd59(10)
      acd59(48)=-acd59(4)*acd59(19)
      acd59(48)=acd59(48)-acd59(47)
      acd59(48)=acd59(18)*acd59(48)
      acd59(42)=acd59(42)+acd59(48)+acd59(44)+acd59(46)
      acd59(42)=acd59(3)*acd59(42)
      acd59(44)=acd59(2)*acd59(16)
      acd59(46)=acd59(15)*acd59(6)
      acd59(44)=acd59(44)+acd59(46)
      acd59(46)=-acd59(4)*acd59(44)
      acd59(48)=acd59(16)*acd59(6)
      acd59(49)=acd59(41)*acd59(48)
      acd59(50)=-acd59(16)*acd59(43)
      acd59(51)=-acd59(6)*acd59(45)
      acd59(46)=acd59(49)+acd59(51)+acd59(46)+acd59(50)
      acd59(46)=acd59(22)*acd59(46)
      acd59(49)=acd59(19)*acd59(6)
      acd59(50)=acd59(2)*acd59(20)
      acd59(49)=acd59(49)+acd59(50)
      acd59(51)=-acd59(4)*acd59(49)
      acd59(52)=acd59(20)*acd59(6)
      acd59(53)=acd59(41)*acd59(52)
      acd59(54)=-acd59(20)*acd59(43)
      acd59(55)=-acd59(6)*acd59(47)
      acd59(51)=acd59(53)+acd59(55)+acd59(51)+acd59(54)
      acd59(51)=acd59(23)*acd59(51)
      acd59(53)=acd59(19)*acd59(16)
      acd59(54)=acd59(15)*acd59(20)
      acd59(53)=acd59(53)+acd59(54)
      acd59(55)=-acd59(4)*acd59(53)
      acd59(56)=acd59(20)*acd59(16)
      acd59(41)=acd59(41)*acd59(56)
      acd59(57)=-acd59(20)*acd59(45)
      acd59(58)=-acd59(16)*acd59(47)
      acd59(41)=acd59(41)+acd59(58)+acd59(55)+acd59(57)
      acd59(41)=acd59(24)*acd59(41)
      acd59(55)=-acd59(9)*acd59(10)
      acd59(55)=acd59(55)-acd59(11)
      acd59(55)=acd59(40)*acd59(55)
      acd59(57)=-acd59(1)*acd59(2)
      acd59(58)=-acd59(14)*acd59(15)
      acd59(59)=-acd59(18)*acd59(19)
      acd59(57)=acd59(59)+acd59(57)+acd59(58)
      acd59(57)=acd59(5)*acd59(57)
      acd59(40)=-acd59(7)*acd59(4)*acd59(40)
      acd59(58)=-acd59(1)*acd59(12)
      acd59(59)=-acd59(14)*acd59(17)
      acd59(60)=-acd59(18)*acd59(21)
      acd59(58)=acd59(60)+acd59(58)+acd59(59)
      acd59(58)=acd59(13)*acd59(58)
      acd59(56)=-acd59(28)*acd59(56)
      acd59(52)=-acd59(30)*acd59(52)
      acd59(48)=-acd59(36)*acd59(48)
      acd59(48)=acd59(48)+acd59(56)+acd59(52)
      acd59(48)=acd59(39)*acd59(48)
      acd59(52)=-acd59(19)*acd59(44)
      acd59(54)=-acd59(2)*acd59(54)
      acd59(52)=acd59(54)+acd59(52)
      acd59(52)=acd59(25)*acd59(52)
      acd59(54)=-acd59(6)*acd59(53)
      acd59(50)=-acd59(16)*acd59(50)
      acd59(50)=acd59(50)+acd59(54)
      acd59(50)=acd59(26)*acd59(50)
      acd59(40)=acd59(58)+acd59(52)+acd59(50)+acd59(48)+acd59(55)+acd59(57)+acd&
      &59(40)+acd59(42)+acd59(46)+acd59(51)+acd59(41)
      acd59(41)=acd59(17)*acd59(19)
      acd59(42)=acd59(21)*acd59(15)
      acd59(41)=acd59(41)+acd59(42)
      acd59(41)=acd59(32)*acd59(41)
      acd59(42)=acd59(12)*acd59(19)
      acd59(46)=acd59(21)*acd59(2)
      acd59(42)=acd59(42)+acd59(46)
      acd59(42)=acd59(35)*acd59(42)
      acd59(46)=acd59(12)*acd59(15)
      acd59(48)=acd59(17)*acd59(2)
      acd59(46)=acd59(46)+acd59(48)
      acd59(46)=acd59(38)*acd59(46)
      acd59(41)=acd59(46)+acd59(42)+acd59(41)
      acd59(41)=acd59(33)*acd59(41)
      acd59(42)=-acd59(12)*acd59(53)
      acd59(46)=-acd59(17)*acd59(49)
      acd59(48)=-acd59(21)*acd59(44)
      acd59(42)=acd59(48)+acd59(42)+acd59(46)
      acd59(42)=acd59(27)*acd59(42)
      acd59(46)=acd59(17)*acd59(20)
      acd59(48)=acd59(21)*acd59(16)
      acd59(46)=acd59(46)+acd59(48)
      acd59(46)=acd59(33)*acd59(46)
      acd59(48)=-acd59(29)*acd59(53)
      acd59(46)=acd59(46)+acd59(48)
      acd59(46)=acd59(28)*acd59(46)
      acd59(48)=acd59(12)*acd59(20)
      acd59(50)=acd59(21)*acd59(6)
      acd59(48)=acd59(48)+acd59(50)
      acd59(48)=acd59(33)*acd59(48)
      acd59(49)=-acd59(29)*acd59(49)
      acd59(48)=acd59(48)+acd59(49)
      acd59(48)=acd59(30)*acd59(48)
      acd59(49)=acd59(12)*acd59(16)
      acd59(50)=acd59(17)*acd59(6)
      acd59(49)=acd59(49)+acd59(50)
      acd59(49)=acd59(33)*acd59(49)
      acd59(44)=-acd59(29)*acd59(44)
      acd59(44)=acd59(49)+acd59(44)
      acd59(44)=acd59(36)*acd59(44)
      acd59(49)=acd59(19)*acd59(45)
      acd59(50)=acd59(15)*acd59(47)
      acd59(49)=acd59(49)+acd59(50)
      acd59(49)=acd59(31)*acd59(49)
      acd59(50)=acd59(19)*acd59(43)
      acd59(47)=acd59(2)*acd59(47)
      acd59(47)=acd59(50)+acd59(47)
      acd59(47)=acd59(34)*acd59(47)
      acd59(43)=acd59(15)*acd59(43)
      acd59(45)=acd59(2)*acd59(45)
      acd59(43)=acd59(43)+acd59(45)
      acd59(43)=acd59(37)*acd59(43)
      brack=2.0_ki*acd59(40)+acd59(41)+acd59(42)+acd59(43)+acd59(44)+acd59(46)+&
      &acd59(47)+acd59(48)+acd59(49)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd59
      complex(ki) :: brack
      acd59(1)=d(iv1,iv2)
      acd59(2)=spvak2k1(iv3)
      acd59(3)=spvak2k5(iv4)
      acd59(4)=abb59(25)
      acd59(5)=spvak2k1(iv4)
      acd59(6)=spvak2k5(iv3)
      acd59(7)=abb59(33)
      acd59(8)=spvak2l3(iv4)
      acd59(9)=abb59(32)
      acd59(10)=spvak2l3(iv3)
      acd59(11)=d(iv1,iv3)
      acd59(12)=spvak2k1(iv2)
      acd59(13)=spvak2k5(iv2)
      acd59(14)=spvak2l3(iv2)
      acd59(15)=d(iv1,iv4)
      acd59(16)=d(iv2,iv3)
      acd59(17)=spvak2k1(iv1)
      acd59(18)=spvak2k5(iv1)
      acd59(19)=spvak2l3(iv1)
      acd59(20)=d(iv2,iv4)
      acd59(21)=d(iv3,iv4)
      acd59(22)=acd59(1)*acd59(3)
      acd59(23)=acd59(15)*acd59(13)
      acd59(24)=acd59(20)*acd59(18)
      acd59(22)=acd59(22)+acd59(23)+acd59(24)
      acd59(23)=-acd59(2)*acd59(22)
      acd59(24)=acd59(11)*acd59(3)
      acd59(25)=acd59(15)*acd59(6)
      acd59(26)=acd59(21)*acd59(18)
      acd59(24)=acd59(26)+acd59(24)+acd59(25)
      acd59(25)=-acd59(12)*acd59(24)
      acd59(27)=acd59(16)*acd59(3)
      acd59(28)=acd59(20)*acd59(6)
      acd59(29)=acd59(21)*acd59(13)
      acd59(27)=acd59(29)+acd59(27)+acd59(28)
      acd59(28)=-acd59(17)*acd59(27)
      acd59(29)=acd59(11)*acd59(13)
      acd59(30)=acd59(16)*acd59(18)
      acd59(29)=acd59(29)+acd59(30)
      acd59(30)=acd59(1)*acd59(6)
      acd59(30)=acd59(29)+acd59(30)
      acd59(31)=-acd59(5)*acd59(30)
      acd59(23)=acd59(28)+acd59(25)+acd59(31)+acd59(23)
      acd59(23)=acd59(4)*acd59(23)
      acd59(25)=-acd59(10)*acd59(22)
      acd59(24)=-acd59(14)*acd59(24)
      acd59(27)=-acd59(19)*acd59(27)
      acd59(28)=-acd59(8)*acd59(30)
      acd59(24)=acd59(27)+acd59(24)+acd59(25)+acd59(28)
      acd59(24)=acd59(9)*acd59(24)
      acd59(22)=acd59(6)*acd59(22)
      acd59(25)=acd59(3)*acd59(29)
      acd59(26)=acd59(13)*acd59(26)
      acd59(22)=acd59(26)+acd59(22)+acd59(25)
      acd59(22)=acd59(7)*acd59(22)
      acd59(22)=2.0_ki*acd59(22)+acd59(24)+acd59(23)
      brack=2.0_ki*acd59(22)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd59
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd59h1
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
      qshift = -k3
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
end module     p0_gg_hhg_d59h1l1d
