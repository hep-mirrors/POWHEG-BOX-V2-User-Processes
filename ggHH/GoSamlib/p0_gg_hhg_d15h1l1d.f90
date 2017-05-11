module     p0_gg_hhg_d15h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d15h1l1d.f90
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
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d15
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd15
      complex(ki) :: brack
      acd15(1)=dotproduct(k2,qshift)
      acd15(2)=dotproduct(qshift,spvak2k1)
      acd15(3)=abb15(29)
      acd15(4)=dotproduct(qshift,spvak2l3)
      acd15(5)=abb15(16)
      acd15(6)=dotproduct(qshift,spvak2k5)
      acd15(7)=abb15(46)
      acd15(8)=abb15(31)
      acd15(9)=dotproduct(l3,qshift)
      acd15(10)=abb15(37)
      acd15(11)=abb15(28)
      acd15(12)=dotproduct(l4,qshift)
      acd15(13)=abb15(24)
      acd15(14)=abb15(14)
      acd15(15)=abb15(21)
      acd15(16)=abb15(22)
      acd15(17)=dotproduct(k5,qshift)
      acd15(18)=abb15(25)
      acd15(19)=dotproduct(qshift,qshift)
      acd15(20)=abb15(18)
      acd15(21)=abb15(35)
      acd15(22)=abb15(19)
      acd15(23)=abb15(26)
      acd15(24)=dotproduct(qshift,spvak2l4)
      acd15(25)=abb15(13)
      acd15(26)=abb15(32)
      acd15(27)=abb15(20)
      acd15(28)=abb15(15)
      acd15(29)=abb15(23)
      acd15(30)=abb15(12)
      acd15(31)=abb15(11)
      acd15(32)=dotproduct(qshift,spval3k1)
      acd15(33)=abb15(36)
      acd15(34)=dotproduct(qshift,spval4k1)
      acd15(35)=abb15(40)
      acd15(36)=abb15(17)
      acd15(37)=abb15(30)
      acd15(38)=abb15(44)
      acd15(39)=abb15(42)
      acd15(40)=abb15(34)
      acd15(41)=acd15(34)*acd15(35)
      acd15(42)=acd15(32)*acd15(33)
      acd15(43)=acd15(9)*acd15(10)
      acd15(44)=acd15(24)*acd15(31)
      acd15(45)=acd15(12)*acd15(15)
      acd15(46)=acd15(1)*acd15(7)
      acd15(47)=acd15(4)*acd15(29)
      acd15(48)=-acd15(19)*acd15(23)
      acd15(49)=acd15(19)*acd15(20)
      acd15(49)=acd15(27)+acd15(49)
      acd15(49)=acd15(2)*acd15(49)
      acd15(41)=acd15(49)+acd15(48)+acd15(47)+acd15(46)+acd15(45)+acd15(44)+acd&
      &15(43)+acd15(42)-acd15(36)+acd15(41)
      acd15(41)=acd15(6)*acd15(41)
      acd15(42)=-acd15(12)*acd15(13)
      acd15(43)=acd15(1)*acd15(3)
      acd15(44)=-acd15(19)*acd15(21)
      acd15(42)=acd15(44)+acd15(43)-acd15(28)+acd15(42)
      acd15(42)=acd15(2)*acd15(42)
      acd15(43)=acd15(12)*acd15(14)
      acd15(44)=acd15(1)*acd15(5)
      acd15(43)=acd15(44)-acd15(30)+acd15(43)
      acd15(43)=acd15(4)*acd15(43)
      acd15(44)=-acd15(24)*acd15(25)
      acd15(45)=-acd15(4)*acd15(22)
      acd15(44)=acd15(45)-acd15(26)+acd15(44)
      acd15(44)=acd15(19)*acd15(44)
      acd15(45)=-acd15(17)*acd15(18)
      acd15(46)=-acd15(34)*acd15(39)
      acd15(47)=-acd15(32)*acd15(38)
      acd15(48)=-acd15(9)*acd15(11)
      acd15(49)=-acd15(24)*acd15(37)
      acd15(50)=-acd15(12)*acd15(16)
      acd15(51)=-acd15(1)*acd15(8)
      brack=acd15(40)+acd15(41)+acd15(42)+acd15(43)+acd15(44)+acd15(45)+acd15(4&
      &6)+acd15(47)+acd15(48)+acd15(49)+acd15(50)+acd15(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd15
      complex(ki) :: brack
      acd15(1)=k2(iv1)
      acd15(2)=dotproduct(qshift,spvak2k1)
      acd15(3)=abb15(29)
      acd15(4)=dotproduct(qshift,spvak2l3)
      acd15(5)=abb15(16)
      acd15(6)=dotproduct(qshift,spvak2k5)
      acd15(7)=abb15(46)
      acd15(8)=abb15(31)
      acd15(9)=l3(iv1)
      acd15(10)=abb15(37)
      acd15(11)=abb15(28)
      acd15(12)=l4(iv1)
      acd15(13)=abb15(24)
      acd15(14)=abb15(14)
      acd15(15)=abb15(21)
      acd15(16)=abb15(22)
      acd15(17)=k5(iv1)
      acd15(18)=abb15(25)
      acd15(19)=qshift(iv1)
      acd15(20)=abb15(18)
      acd15(21)=abb15(35)
      acd15(22)=abb15(19)
      acd15(23)=abb15(26)
      acd15(24)=dotproduct(qshift,spvak2l4)
      acd15(25)=abb15(13)
      acd15(26)=abb15(32)
      acd15(27)=spvak2k1(iv1)
      acd15(28)=dotproduct(k2,qshift)
      acd15(29)=dotproduct(l4,qshift)
      acd15(30)=dotproduct(qshift,qshift)
      acd15(31)=abb15(20)
      acd15(32)=abb15(15)
      acd15(33)=spvak2l3(iv1)
      acd15(34)=abb15(23)
      acd15(35)=abb15(12)
      acd15(36)=spvak2k5(iv1)
      acd15(37)=dotproduct(l3,qshift)
      acd15(38)=abb15(11)
      acd15(39)=dotproduct(qshift,spval3k1)
      acd15(40)=abb15(36)
      acd15(41)=dotproduct(qshift,spval4k1)
      acd15(42)=abb15(40)
      acd15(43)=abb15(17)
      acd15(44)=spvak2l4(iv1)
      acd15(45)=abb15(30)
      acd15(46)=spval3k1(iv1)
      acd15(47)=abb15(44)
      acd15(48)=spval4k1(iv1)
      acd15(49)=abb15(42)
      acd15(50)=acd15(42)*acd15(41)
      acd15(51)=acd15(40)*acd15(39)
      acd15(52)=acd15(24)*acd15(38)
      acd15(53)=acd15(10)*acd15(37)
      acd15(54)=acd15(29)*acd15(15)
      acd15(55)=acd15(28)*acd15(7)
      acd15(56)=acd15(4)*acd15(34)
      acd15(57)=-acd15(30)*acd15(23)
      acd15(58)=acd15(30)*acd15(20)
      acd15(58)=acd15(58)+acd15(31)
      acd15(59)=acd15(2)*acd15(58)
      acd15(50)=acd15(59)+acd15(57)+acd15(56)+acd15(55)+acd15(54)+acd15(53)+acd&
      &15(52)+acd15(51)-acd15(43)+acd15(50)
      acd15(50)=acd15(36)*acd15(50)
      acd15(51)=acd15(2)*acd15(20)
      acd15(51)=acd15(51)-acd15(23)
      acd15(52)=2.0_ki*acd15(19)
      acd15(51)=acd15(52)*acd15(51)
      acd15(53)=acd15(42)*acd15(48)
      acd15(54)=acd15(40)*acd15(46)
      acd15(55)=acd15(9)*acd15(10)
      acd15(56)=acd15(44)*acd15(38)
      acd15(57)=acd15(12)*acd15(15)
      acd15(59)=acd15(1)*acd15(7)
      acd15(60)=acd15(33)*acd15(34)
      acd15(58)=acd15(27)*acd15(58)
      acd15(51)=acd15(58)+acd15(60)+acd15(59)+acd15(57)+acd15(56)+acd15(55)+acd&
      &15(53)+acd15(54)+acd15(51)
      acd15(51)=acd15(6)*acd15(51)
      acd15(53)=-acd15(29)*acd15(13)
      acd15(54)=acd15(28)*acd15(3)
      acd15(55)=-acd15(30)*acd15(21)
      acd15(53)=acd15(55)+acd15(54)-acd15(32)+acd15(53)
      acd15(53)=acd15(27)*acd15(53)
      acd15(54)=-acd15(12)*acd15(13)
      acd15(55)=acd15(1)*acd15(3)
      acd15(56)=-acd15(21)*acd15(52)
      acd15(54)=acd15(56)+acd15(54)+acd15(55)
      acd15(54)=acd15(2)*acd15(54)
      acd15(55)=acd15(29)*acd15(14)
      acd15(56)=acd15(28)*acd15(5)
      acd15(55)=acd15(56)-acd15(35)+acd15(55)
      acd15(55)=acd15(33)*acd15(55)
      acd15(56)=-acd15(44)*acd15(25)
      acd15(57)=-acd15(33)*acd15(22)
      acd15(56)=acd15(56)+acd15(57)
      acd15(56)=acd15(30)*acd15(56)
      acd15(57)=-acd15(24)*acd15(25)
      acd15(58)=-acd15(4)*acd15(22)
      acd15(57)=acd15(58)-acd15(26)+acd15(57)
      acd15(52)=acd15(57)*acd15(52)
      acd15(57)=acd15(4)*acd15(14)
      acd15(57)=acd15(57)-acd15(16)
      acd15(57)=acd15(12)*acd15(57)
      acd15(58)=-acd15(17)*acd15(18)
      acd15(59)=-acd15(48)*acd15(49)
      acd15(60)=-acd15(46)*acd15(47)
      acd15(61)=-acd15(9)*acd15(11)
      acd15(62)=-acd15(44)*acd15(45)
      acd15(63)=acd15(4)*acd15(5)
      acd15(63)=-acd15(8)+acd15(63)
      acd15(63)=acd15(1)*acd15(63)
      brack=acd15(50)+acd15(51)+acd15(52)+acd15(53)+acd15(54)+acd15(55)+acd15(5&
      &6)+acd15(57)+acd15(58)+acd15(59)+acd15(60)+acd15(61)+acd15(62)+acd15(63)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=dotproduct(qshift,spvak2k1)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(18)
      acd15(5)=abb15(35)
      acd15(6)=abb15(26)
      acd15(7)=dotproduct(qshift,spvak2l3)
      acd15(8)=abb15(19)
      acd15(9)=dotproduct(qshift,spvak2l4)
      acd15(10)=abb15(13)
      acd15(11)=abb15(32)
      acd15(12)=k2(iv1)
      acd15(13)=spvak2k1(iv2)
      acd15(14)=abb15(29)
      acd15(15)=spvak2k5(iv2)
      acd15(16)=abb15(46)
      acd15(17)=spvak2l3(iv2)
      acd15(18)=abb15(16)
      acd15(19)=k2(iv2)
      acd15(20)=spvak2k1(iv1)
      acd15(21)=spvak2k5(iv1)
      acd15(22)=spvak2l3(iv1)
      acd15(23)=l3(iv1)
      acd15(24)=abb15(37)
      acd15(25)=l3(iv2)
      acd15(26)=l4(iv1)
      acd15(27)=abb15(24)
      acd15(28)=abb15(21)
      acd15(29)=abb15(14)
      acd15(30)=l4(iv2)
      acd15(31)=qshift(iv1)
      acd15(32)=spvak2l4(iv2)
      acd15(33)=qshift(iv2)
      acd15(34)=spvak2l4(iv1)
      acd15(35)=dotproduct(qshift,qshift)
      acd15(36)=abb15(20)
      acd15(37)=abb15(23)
      acd15(38)=abb15(11)
      acd15(39)=spval3k1(iv2)
      acd15(40)=abb15(36)
      acd15(41)=spval4k1(iv2)
      acd15(42)=abb15(40)
      acd15(43)=spval3k1(iv1)
      acd15(44)=spval4k1(iv1)
      acd15(45)=acd15(31)*acd15(13)
      acd15(46)=acd15(33)*acd15(20)
      acd15(47)=acd15(2)*acd15(1)
      acd15(45)=acd15(47)+acd15(45)+acd15(46)
      acd15(46)=acd15(3)*acd15(4)
      acd15(46)=-acd15(5)+acd15(46)
      acd15(45)=acd15(45)*acd15(46)
      acd15(46)=acd15(31)*acd15(15)
      acd15(47)=acd15(33)*acd15(21)
      acd15(46)=acd15(46)+acd15(47)
      acd15(47)=acd15(2)*acd15(4)*acd15(46)
      acd15(48)=-acd15(3)*acd15(1)
      acd15(46)=acd15(48)-acd15(46)
      acd15(46)=acd15(6)*acd15(46)
      acd15(48)=-acd15(17)*acd15(31)
      acd15(49)=-acd15(22)*acd15(33)
      acd15(48)=acd15(48)+acd15(49)
      acd15(48)=acd15(8)*acd15(48)
      acd15(45)=acd15(48)+acd15(46)+acd15(47)+acd15(45)
      acd15(46)=acd15(23)*acd15(24)
      acd15(47)=acd15(43)*acd15(40)
      acd15(48)=acd15(44)*acd15(42)
      acd15(46)=acd15(48)+acd15(47)+acd15(46)
      acd15(46)=acd15(15)*acd15(46)
      acd15(47)=acd15(25)*acd15(24)
      acd15(48)=acd15(39)*acd15(40)
      acd15(49)=acd15(41)*acd15(42)
      acd15(47)=acd15(49)+acd15(48)+acd15(47)
      acd15(47)=acd15(21)*acd15(47)
      acd15(48)=-acd15(32)*acd15(31)
      acd15(49)=-acd15(34)*acd15(33)
      acd15(50)=-acd15(9)*acd15(1)
      acd15(48)=acd15(50)+acd15(49)+acd15(48)
      acd15(49)=2.0_ki*acd15(10)
      acd15(48)=acd15(49)*acd15(48)
      acd15(49)=-acd15(7)*acd15(8)
      acd15(49)=-acd15(11)+acd15(49)
      acd15(50)=2.0_ki*acd15(1)
      acd15(49)=acd15(50)*acd15(49)
      acd15(50)=acd15(12)*acd15(13)
      acd15(51)=acd15(19)*acd15(20)
      acd15(50)=acd15(50)+acd15(51)
      acd15(50)=acd15(14)*acd15(50)
      acd15(51)=acd15(12)*acd15(15)
      acd15(52)=acd15(19)*acd15(21)
      acd15(51)=acd15(51)+acd15(52)
      acd15(51)=acd15(16)*acd15(51)
      acd15(52)=acd15(12)*acd15(17)
      acd15(53)=acd15(19)*acd15(22)
      acd15(52)=acd15(52)+acd15(53)
      acd15(52)=acd15(18)*acd15(52)
      acd15(53)=-acd15(26)*acd15(13)
      acd15(54)=-acd15(30)*acd15(20)
      acd15(53)=acd15(53)+acd15(54)
      acd15(53)=acd15(27)*acd15(53)
      acd15(54)=acd15(26)*acd15(15)
      acd15(55)=acd15(30)*acd15(21)
      acd15(54)=acd15(54)+acd15(55)
      acd15(54)=acd15(28)*acd15(54)
      acd15(55)=acd15(26)*acd15(17)
      acd15(56)=acd15(30)*acd15(22)
      acd15(55)=acd15(55)+acd15(56)
      acd15(55)=acd15(29)*acd15(55)
      acd15(56)=acd15(20)*acd15(15)
      acd15(57)=acd15(13)*acd15(21)
      acd15(56)=acd15(56)+acd15(57)
      acd15(57)=acd15(35)*acd15(4)*acd15(56)
      acd15(56)=acd15(36)*acd15(56)
      acd15(58)=acd15(17)*acd15(21)
      acd15(59)=acd15(22)*acd15(15)
      acd15(58)=acd15(58)+acd15(59)
      acd15(58)=acd15(37)*acd15(58)
      acd15(59)=acd15(32)*acd15(21)
      acd15(60)=acd15(34)*acd15(15)
      acd15(59)=acd15(59)+acd15(60)
      acd15(59)=acd15(38)*acd15(59)
      brack=2.0_ki*acd15(45)+acd15(46)+acd15(47)+acd15(48)+acd15(49)+acd15(50)+&
      &acd15(51)+acd15(52)+acd15(53)+acd15(54)+acd15(55)+acd15(56)+acd15(57)+ac&
      &d15(58)+acd15(59)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=spvak2k1(iv3)
      acd15(3)=dotproduct(qshift,spvak2k5)
      acd15(4)=abb15(18)
      acd15(5)=abb15(35)
      acd15(6)=spvak2k5(iv3)
      acd15(7)=dotproduct(qshift,spvak2k1)
      acd15(8)=abb15(26)
      acd15(9)=spvak2l3(iv3)
      acd15(10)=abb15(19)
      acd15(11)=spvak2l4(iv3)
      acd15(12)=abb15(13)
      acd15(13)=d(iv1,iv3)
      acd15(14)=spvak2k1(iv2)
      acd15(15)=spvak2k5(iv2)
      acd15(16)=spvak2l3(iv2)
      acd15(17)=spvak2l4(iv2)
      acd15(18)=d(iv2,iv3)
      acd15(19)=spvak2k1(iv1)
      acd15(20)=spvak2k5(iv1)
      acd15(21)=spvak2l3(iv1)
      acd15(22)=spvak2l4(iv1)
      acd15(23)=qshift(iv1)
      acd15(24)=qshift(iv2)
      acd15(25)=qshift(iv3)
      acd15(26)=acd15(15)*acd15(19)
      acd15(27)=acd15(14)*acd15(20)
      acd15(26)=acd15(26)+acd15(27)
      acd15(26)=acd15(25)*acd15(26)
      acd15(27)=acd15(19)*acd15(24)
      acd15(28)=acd15(14)*acd15(23)
      acd15(27)=acd15(27)+acd15(28)
      acd15(27)=acd15(6)*acd15(27)
      acd15(28)=acd15(20)*acd15(24)
      acd15(29)=acd15(15)*acd15(23)
      acd15(28)=acd15(28)+acd15(29)
      acd15(28)=acd15(2)*acd15(28)
      acd15(29)=acd15(20)*acd15(7)
      acd15(30)=acd15(19)*acd15(3)
      acd15(29)=acd15(29)+acd15(30)
      acd15(29)=acd15(18)*acd15(29)
      acd15(30)=acd15(15)*acd15(7)
      acd15(31)=acd15(14)*acd15(3)
      acd15(30)=acd15(30)+acd15(31)
      acd15(30)=acd15(13)*acd15(30)
      acd15(31)=acd15(6)*acd15(7)
      acd15(32)=acd15(2)*acd15(3)
      acd15(31)=acd15(31)+acd15(32)
      acd15(31)=acd15(1)*acd15(31)
      acd15(26)=acd15(31)+acd15(30)+acd15(29)+acd15(28)+acd15(27)+acd15(26)
      acd15(26)=acd15(4)*acd15(26)
      acd15(27)=-acd15(12)*acd15(22)
      acd15(28)=-acd15(10)*acd15(21)
      acd15(29)=-acd15(20)*acd15(8)
      acd15(30)=-acd15(19)*acd15(5)
      acd15(27)=acd15(30)+acd15(29)+acd15(27)+acd15(28)
      acd15(27)=acd15(18)*acd15(27)
      acd15(28)=-acd15(12)*acd15(17)
      acd15(29)=-acd15(10)*acd15(16)
      acd15(30)=-acd15(15)*acd15(8)
      acd15(31)=-acd15(14)*acd15(5)
      acd15(28)=acd15(31)+acd15(30)+acd15(28)+acd15(29)
      acd15(28)=acd15(13)*acd15(28)
      acd15(29)=-acd15(12)*acd15(11)
      acd15(30)=-acd15(10)*acd15(9)
      acd15(31)=-acd15(6)*acd15(8)
      acd15(32)=-acd15(2)*acd15(5)
      acd15(29)=acd15(32)+acd15(31)+acd15(29)+acd15(30)
      acd15(29)=acd15(1)*acd15(29)
      acd15(26)=acd15(26)+acd15(29)+acd15(27)+acd15(28)
      brack=2.0_ki*acd15(26)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd15h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd15
      complex(ki) :: brack
      acd15(1)=d(iv1,iv2)
      acd15(2)=spvak2k1(iv3)
      acd15(3)=spvak2k5(iv4)
      acd15(4)=abb15(18)
      acd15(5)=spvak2k1(iv4)
      acd15(6)=spvak2k5(iv3)
      acd15(7)=d(iv1,iv3)
      acd15(8)=spvak2k1(iv2)
      acd15(9)=spvak2k5(iv2)
      acd15(10)=d(iv1,iv4)
      acd15(11)=d(iv2,iv3)
      acd15(12)=spvak2k1(iv1)
      acd15(13)=spvak2k5(iv1)
      acd15(14)=d(iv2,iv4)
      acd15(15)=d(iv3,iv4)
      acd15(16)=acd15(13)*acd15(11)
      acd15(17)=acd15(9)*acd15(7)
      acd15(18)=acd15(6)*acd15(1)
      acd15(16)=acd15(18)+acd15(16)+acd15(17)
      acd15(16)=acd15(5)*acd15(16)
      acd15(17)=acd15(13)*acd15(14)
      acd15(18)=acd15(9)*acd15(10)
      acd15(19)=acd15(3)*acd15(1)
      acd15(17)=acd15(19)+acd15(17)+acd15(18)
      acd15(17)=acd15(2)*acd15(17)
      acd15(18)=acd15(9)*acd15(12)
      acd15(19)=acd15(8)*acd15(13)
      acd15(18)=acd15(18)+acd15(19)
      acd15(18)=acd15(15)*acd15(18)
      acd15(19)=acd15(12)*acd15(14)
      acd15(20)=acd15(8)*acd15(10)
      acd15(19)=acd15(19)+acd15(20)
      acd15(19)=acd15(6)*acd15(19)
      acd15(20)=acd15(12)*acd15(11)
      acd15(21)=acd15(8)*acd15(7)
      acd15(20)=acd15(20)+acd15(21)
      acd15(20)=acd15(3)*acd15(20)
      acd15(16)=acd15(17)+acd15(20)+acd15(16)+acd15(19)+acd15(18)
      brack=2.0_ki*acd15(16)*acd15(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd15h1
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
!---#[ subroutine reconstruct_d15:
   subroutine     reconstruct_d15(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_15:
      coeffs%coeffs_15%c0 = derivative(czip)
      coeffs%coeffs_15%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_15%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_15%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_15%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_15%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_15%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_15%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_15%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_15%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_15%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_15%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_15%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_15%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_15%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_15%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_15%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_15%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_15%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_15%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_15%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_15%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_15%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_15%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_15%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_15%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_15%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_15%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_15%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_15%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_15%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_15%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_15%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_15%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_15%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_15%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_15%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_15%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_15%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_15%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_15%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_15%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_15%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_15%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_15%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_15%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_15%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_15%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_15%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_15%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_15%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_15%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_15%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_15%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_15%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_15%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_15%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_15%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_15%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_15%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_15%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_15%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_15%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_15%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_15%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_15%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_15%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_15%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_15%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_15%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_15:
   end subroutine reconstruct_d15
!---#] subroutine reconstruct_d15:
end module     p0_gg_hhg_d15h1l1d
