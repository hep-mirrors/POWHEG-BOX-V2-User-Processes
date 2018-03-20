module     p0_gg_hhg_d57h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d57h1l1d.f90
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
      use p0_gg_hhg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd57
      complex(ki) :: brack
      acd57(1)=dotproduct(k1,qshift)
      acd57(2)=dotproduct(qshift,spvak2l3)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(37)
      acd57(5)=abb57(39)
      acd57(6)=dotproduct(qshift,qshift)
      acd57(7)=abb57(41)
      acd57(8)=abb57(48)
      acd57(9)=dotproduct(qshift,spvak2l4)
      acd57(10)=abb57(45)
      acd57(11)=abb57(17)
      acd57(12)=abb57(43)
      acd57(13)=abb57(33)
      acd57(14)=dotproduct(qshift,spvak2k1)
      acd57(15)=abb57(10)
      acd57(16)=dotproduct(qshift,spval4k1)
      acd57(17)=abb57(28)
      acd57(18)=abb57(40)
      acd57(19)=abb57(19)
      acd57(20)=abb57(50)
      acd57(21)=abb57(49)
      acd57(22)=abb57(13)
      acd57(23)=abb57(31)
      acd57(24)=abb57(18)
      acd57(25)=dotproduct(qshift,spval3k1)
      acd57(26)=abb57(47)
      acd57(27)=abb57(14)
      acd57(28)=abb57(11)
      acd57(29)=abb57(30)
      acd57(30)=abb57(12)
      acd57(31)=abb57(21)
      acd57(32)=abb57(46)
      acd57(33)=abb57(42)
      acd57(34)=abb57(15)
      acd57(35)=abb57(35)
      acd57(36)=abb57(16)
      acd57(37)=-acd57(16)*acd57(17)
      acd57(38)=-acd57(1)*acd57(4)
      acd57(39)=acd57(6)*acd57(7)
      acd57(40)=-acd57(14)*acd57(15)
      acd57(37)=acd57(40)+acd57(39)+acd57(38)+acd57(18)+acd57(37)
      acd57(37)=acd57(2)*acd57(37)
      acd57(38)=-acd57(25)*acd57(26)
      acd57(39)=acd57(6)*acd57(10)
      acd57(40)=-acd57(14)*acd57(24)
      acd57(38)=acd57(40)+acd57(39)+acd57(27)+acd57(38)
      acd57(38)=acd57(9)*acd57(38)
      acd57(39)=acd57(25)*acd57(29)
      acd57(40)=-acd57(6)*acd57(11)
      acd57(41)=acd57(14)*acd57(28)
      acd57(42)=-acd57(14)*acd57(22)
      acd57(42)=acd57(23)+acd57(42)
      acd57(42)=acd57(3)*acd57(42)
      acd57(37)=acd57(42)+acd57(37)+acd57(38)+acd57(41)+acd57(40)-acd57(30)+acd&
      &57(39)
      acd57(37)=acd57(3)*acd57(37)
      acd57(38)=acd57(16)*acd57(20)
      acd57(39)=acd57(1)*acd57(5)
      acd57(40)=-acd57(6)*acd57(8)
      acd57(41)=acd57(14)*acd57(19)
      acd57(38)=acd57(41)+acd57(40)+acd57(39)-acd57(21)+acd57(38)
      acd57(38)=acd57(2)*acd57(38)
      acd57(39)=acd57(25)*acd57(32)
      acd57(40)=-acd57(6)*acd57(12)
      acd57(41)=acd57(14)*acd57(31)
      acd57(39)=acd57(41)+acd57(40)-acd57(33)+acd57(39)
      acd57(39)=acd57(9)*acd57(39)
      acd57(40)=-acd57(25)*acd57(35)
      acd57(41)=acd57(6)*acd57(13)
      acd57(42)=-acd57(14)*acd57(34)
      brack=acd57(36)+acd57(37)+acd57(38)+acd57(39)+acd57(40)+acd57(41)+acd57(4&
      &2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd57
      complex(ki) :: brack
      acd57(1)=k1(iv1)
      acd57(2)=dotproduct(qshift,spvak2l3)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(37)
      acd57(5)=abb57(39)
      acd57(6)=qshift(iv1)
      acd57(7)=abb57(41)
      acd57(8)=abb57(48)
      acd57(9)=dotproduct(qshift,spvak2l4)
      acd57(10)=abb57(45)
      acd57(11)=abb57(17)
      acd57(12)=abb57(43)
      acd57(13)=abb57(33)
      acd57(14)=spvak2l3(iv1)
      acd57(15)=dotproduct(k1,qshift)
      acd57(16)=dotproduct(qshift,qshift)
      acd57(17)=dotproduct(qshift,spvak2k1)
      acd57(18)=abb57(10)
      acd57(19)=dotproduct(qshift,spval4k1)
      acd57(20)=abb57(28)
      acd57(21)=abb57(40)
      acd57(22)=abb57(19)
      acd57(23)=abb57(50)
      acd57(24)=abb57(49)
      acd57(25)=spvak2k5(iv1)
      acd57(26)=abb57(13)
      acd57(27)=abb57(31)
      acd57(28)=abb57(18)
      acd57(29)=dotproduct(qshift,spval3k1)
      acd57(30)=abb57(47)
      acd57(31)=abb57(14)
      acd57(32)=abb57(11)
      acd57(33)=abb57(30)
      acd57(34)=abb57(12)
      acd57(35)=spvak2l4(iv1)
      acd57(36)=abb57(21)
      acd57(37)=abb57(46)
      acd57(38)=abb57(42)
      acd57(39)=spvak2k1(iv1)
      acd57(40)=abb57(15)
      acd57(41)=spval4k1(iv1)
      acd57(42)=spval3k1(iv1)
      acd57(43)=abb57(35)
      acd57(44)=acd57(19)*acd57(20)
      acd57(45)=acd57(4)*acd57(15)
      acd57(46)=acd57(16)*acd57(7)
      acd57(47)=acd57(17)*acd57(18)
      acd57(44)=acd57(21)-acd57(44)-acd57(45)+acd57(46)-acd57(47)
      acd57(45)=-acd57(14)*acd57(44)
      acd57(46)=acd57(20)*acd57(41)
      acd57(47)=acd57(4)*acd57(1)
      acd57(48)=2.0_ki*acd57(6)
      acd57(49)=-acd57(7)*acd57(48)
      acd57(50)=acd57(39)*acd57(18)
      acd57(46)=acd57(50)+acd57(49)+acd57(46)+acd57(47)
      acd57(46)=acd57(2)*acd57(46)
      acd57(47)=acd57(42)*acd57(30)
      acd57(49)=-acd57(10)*acd57(48)
      acd57(50)=acd57(39)*acd57(28)
      acd57(47)=acd57(50)+acd57(47)+acd57(49)
      acd57(47)=acd57(9)*acd57(47)
      acd57(49)=acd57(29)*acd57(30)
      acd57(50)=acd57(16)*acd57(10)
      acd57(49)=-acd57(31)+acd57(49)-acd57(50)
      acd57(50)=acd57(35)*acd57(49)
      acd57(51)=acd57(3)*acd57(26)
      acd57(51)=acd57(51)-acd57(32)
      acd57(51)=acd57(39)*acd57(51)
      acd57(52)=-acd57(42)*acd57(33)
      acd57(53)=acd57(11)*acd57(48)
      acd57(54)=acd57(17)*acd57(35)
      acd57(55)=acd57(28)*acd57(54)
      acd57(56)=acd57(17)*acd57(26)
      acd57(56)=-acd57(27)+acd57(56)
      acd57(56)=acd57(25)*acd57(56)
      acd57(45)=2.0_ki*acd57(56)+acd57(46)+acd57(47)+acd57(45)+acd57(55)+acd57(&
      &50)+acd57(52)+acd57(53)+acd57(51)
      acd57(45)=acd57(3)*acd57(45)
      acd57(44)=-acd57(2)*acd57(44)
      acd57(46)=acd57(17)*acd57(28)
      acd57(46)=acd57(46)+acd57(49)
      acd57(46)=acd57(9)*acd57(46)
      acd57(47)=-acd57(29)*acd57(33)
      acd57(49)=acd57(16)*acd57(11)
      acd57(50)=-acd57(17)*acd57(32)
      acd57(44)=acd57(44)+acd57(46)+acd57(50)+acd57(49)+acd57(34)+acd57(47)
      acd57(44)=acd57(25)*acd57(44)
      acd57(46)=-acd57(19)*acd57(23)
      acd57(47)=-acd57(15)*acd57(5)
      acd57(49)=acd57(16)*acd57(8)
      acd57(50)=-acd57(17)*acd57(22)
      acd57(46)=acd57(50)+acd57(49)+acd57(47)+acd57(24)+acd57(46)
      acd57(46)=acd57(14)*acd57(46)
      acd57(47)=-acd57(23)*acd57(41)
      acd57(49)=-acd57(1)*acd57(5)
      acd57(50)=acd57(8)*acd57(48)
      acd57(51)=-acd57(39)*acd57(22)
      acd57(47)=acd57(51)+acd57(50)+acd57(47)+acd57(49)
      acd57(47)=acd57(2)*acd57(47)
      acd57(49)=-acd57(42)*acd57(37)
      acd57(50)=acd57(12)*acd57(48)
      acd57(51)=-acd57(39)*acd57(36)
      acd57(49)=acd57(51)+acd57(49)+acd57(50)
      acd57(49)=acd57(9)*acd57(49)
      acd57(50)=-acd57(29)*acd57(37)
      acd57(51)=acd57(16)*acd57(12)
      acd57(50)=acd57(51)+acd57(38)+acd57(50)
      acd57(50)=acd57(35)*acd57(50)
      acd57(51)=acd57(42)*acd57(43)
      acd57(48)=-acd57(13)*acd57(48)
      acd57(52)=acd57(39)*acd57(40)
      acd57(53)=-acd57(36)*acd57(54)
      brack=acd57(44)+acd57(45)+acd57(46)+acd57(47)+acd57(48)+acd57(49)+acd57(5&
      &0)+acd57(51)+acd57(52)+acd57(53)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=dotproduct(qshift,spvak2l3)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(41)
      acd57(5)=abb57(48)
      acd57(6)=dotproduct(qshift,spvak2l4)
      acd57(7)=abb57(45)
      acd57(8)=abb57(17)
      acd57(9)=abb57(43)
      acd57(10)=abb57(33)
      acd57(11)=k1(iv1)
      acd57(12)=spvak2l3(iv2)
      acd57(13)=abb57(37)
      acd57(14)=abb57(39)
      acd57(15)=spvak2k5(iv2)
      acd57(16)=k1(iv2)
      acd57(17)=spvak2l3(iv1)
      acd57(18)=spvak2k5(iv1)
      acd57(19)=qshift(iv1)
      acd57(20)=spvak2l4(iv2)
      acd57(21)=qshift(iv2)
      acd57(22)=spvak2l4(iv1)
      acd57(23)=dotproduct(k1,qshift)
      acd57(24)=dotproduct(qshift,qshift)
      acd57(25)=dotproduct(qshift,spvak2k1)
      acd57(26)=abb57(10)
      acd57(27)=dotproduct(qshift,spval4k1)
      acd57(28)=abb57(28)
      acd57(29)=abb57(40)
      acd57(30)=spvak2k1(iv2)
      acd57(31)=abb57(19)
      acd57(32)=spval4k1(iv2)
      acd57(33)=abb57(50)
      acd57(34)=spvak2k1(iv1)
      acd57(35)=spval4k1(iv1)
      acd57(36)=abb57(13)
      acd57(37)=abb57(31)
      acd57(38)=abb57(18)
      acd57(39)=dotproduct(qshift,spval3k1)
      acd57(40)=abb57(47)
      acd57(41)=abb57(14)
      acd57(42)=abb57(11)
      acd57(43)=spval3k1(iv2)
      acd57(44)=abb57(30)
      acd57(45)=spval3k1(iv1)
      acd57(46)=abb57(21)
      acd57(47)=abb57(46)
      acd57(48)=acd57(28)*acd57(35)
      acd57(49)=acd57(13)*acd57(11)
      acd57(50)=acd57(34)*acd57(26)
      acd57(51)=2.0_ki*acd57(19)
      acd57(52)=acd57(51)*acd57(4)
      acd57(48)=acd57(48)+acd57(49)+acd57(50)-acd57(52)
      acd57(49)=-acd57(2)*acd57(48)
      acd57(50)=acd57(28)*acd57(27)
      acd57(52)=acd57(26)*acd57(25)
      acd57(53)=acd57(13)*acd57(23)
      acd57(54)=acd57(4)*acd57(24)
      acd57(50)=-acd57(29)+acd57(50)+acd57(52)+acd57(53)-acd57(54)
      acd57(52)=-acd57(17)*acd57(50)
      acd57(53)=acd57(40)*acd57(45)
      acd57(54)=acd57(34)*acd57(38)
      acd57(55)=acd57(51)*acd57(7)
      acd57(53)=-acd57(55)+acd57(53)+acd57(54)
      acd57(54)=-acd57(6)*acd57(53)
      acd57(55)=acd57(40)*acd57(39)
      acd57(56)=acd57(38)*acd57(25)
      acd57(57)=acd57(7)*acd57(24)
      acd57(55)=-acd57(55)-acd57(56)+acd57(57)+acd57(41)
      acd57(56)=acd57(22)*acd57(55)
      acd57(57)=acd57(3)*acd57(36)
      acd57(57)=-acd57(42)+2.0_ki*acd57(57)
      acd57(58)=-acd57(34)*acd57(57)
      acd57(59)=acd57(45)*acd57(44)
      acd57(60)=-acd57(8)*acd57(51)
      acd57(61)=-acd57(25)*acd57(36)
      acd57(61)=acd57(37)+acd57(61)
      acd57(61)=acd57(18)*acd57(61)
      acd57(49)=2.0_ki*acd57(61)+acd57(52)+acd57(49)+acd57(56)+acd57(54)+acd57(&
      &59)+acd57(60)+acd57(58)
      acd57(49)=acd57(15)*acd57(49)
      acd57(52)=acd57(28)*acd57(32)
      acd57(54)=acd57(13)*acd57(16)
      acd57(56)=2.0_ki*acd57(21)
      acd57(58)=acd57(56)*acd57(4)
      acd57(59)=acd57(30)*acd57(26)
      acd57(52)=-acd57(52)-acd57(54)+acd57(58)-acd57(59)
      acd57(54)=acd57(17)*acd57(52)
      acd57(48)=-acd57(12)*acd57(48)
      acd57(58)=acd57(40)*acd57(43)
      acd57(59)=acd57(56)*acd57(7)
      acd57(60)=acd57(30)*acd57(38)
      acd57(58)=acd57(60)+acd57(58)-acd57(59)
      acd57(59)=-acd57(22)*acd57(58)
      acd57(53)=-acd57(20)*acd57(53)
      acd57(60)=-acd57(1)*acd57(8)
      acd57(61)=acd57(6)*acd57(1)
      acd57(62)=acd57(7)*acd57(61)
      acd57(60)=acd57(60)+acd57(62)
      acd57(62)=acd57(2)*acd57(1)
      acd57(63)=2.0_ki*acd57(4)
      acd57(63)=acd57(63)*acd57(62)
      acd57(48)=acd57(48)+acd57(54)+acd57(63)+acd57(53)+2.0_ki*acd57(60)+acd57(&
      &59)
      acd57(48)=acd57(3)*acd57(48)
      acd57(52)=acd57(2)*acd57(52)
      acd57(50)=-acd57(12)*acd57(50)
      acd57(53)=-acd57(6)*acd57(58)
      acd57(54)=acd57(20)*acd57(55)
      acd57(55)=-acd57(30)*acd57(57)
      acd57(57)=acd57(43)*acd57(44)
      acd57(58)=-acd57(8)*acd57(56)
      acd57(50)=acd57(50)+acd57(52)+acd57(54)+acd57(53)+acd57(57)+acd57(58)+acd&
      &57(55)
      acd57(50)=acd57(18)*acd57(50)
      acd57(52)=acd57(32)*acd57(33)
      acd57(53)=acd57(16)*acd57(14)
      acd57(54)=-acd57(5)*acd57(56)
      acd57(55)=acd57(30)*acd57(31)
      acd57(52)=acd57(55)+acd57(54)+acd57(52)+acd57(53)
      acd57(52)=acd57(17)*acd57(52)
      acd57(53)=acd57(35)*acd57(33)
      acd57(54)=acd57(11)*acd57(14)
      acd57(55)=-acd57(5)*acd57(51)
      acd57(57)=acd57(34)*acd57(31)
      acd57(53)=acd57(57)+acd57(55)+acd57(53)+acd57(54)
      acd57(53)=acd57(12)*acd57(53)
      acd57(54)=acd57(43)*acd57(47)
      acd57(55)=-acd57(9)*acd57(56)
      acd57(56)=acd57(30)*acd57(46)
      acd57(54)=acd57(56)+acd57(54)+acd57(55)
      acd57(54)=acd57(22)*acd57(54)
      acd57(55)=acd57(45)*acd57(47)
      acd57(51)=-acd57(9)*acd57(51)
      acd57(56)=acd57(34)*acd57(46)
      acd57(51)=acd57(56)+acd57(55)+acd57(51)
      acd57(51)=acd57(20)*acd57(51)
      acd57(55)=acd57(1)*acd57(10)
      acd57(56)=-acd57(9)*acd57(61)
      acd57(55)=acd57(55)+acd57(56)
      acd57(56)=2.0_ki*acd57(5)
      acd57(56)=-acd57(56)*acd57(62)
      brack=acd57(48)+acd57(49)+acd57(50)+acd57(51)+acd57(52)+acd57(53)+acd57(5&
      &4)+2.0_ki*acd57(55)+acd57(56)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=spvak2l3(iv3)
      acd57(3)=dotproduct(qshift,spvak2k5)
      acd57(4)=abb57(41)
      acd57(5)=abb57(48)
      acd57(6)=spvak2k5(iv3)
      acd57(7)=dotproduct(qshift,spvak2l3)
      acd57(8)=dotproduct(qshift,spvak2l4)
      acd57(9)=abb57(45)
      acd57(10)=abb57(17)
      acd57(11)=spvak2l4(iv3)
      acd57(12)=abb57(43)
      acd57(13)=d(iv1,iv3)
      acd57(14)=spvak2l3(iv2)
      acd57(15)=spvak2k5(iv2)
      acd57(16)=spvak2l4(iv2)
      acd57(17)=d(iv2,iv3)
      acd57(18)=spvak2l3(iv1)
      acd57(19)=spvak2k5(iv1)
      acd57(20)=spvak2l4(iv1)
      acd57(21)=k1(iv1)
      acd57(22)=abb57(37)
      acd57(23)=k1(iv2)
      acd57(24)=k1(iv3)
      acd57(25)=qshift(iv1)
      acd57(26)=qshift(iv2)
      acd57(27)=qshift(iv3)
      acd57(28)=spvak2k1(iv3)
      acd57(29)=abb57(10)
      acd57(30)=spval4k1(iv3)
      acd57(31)=abb57(28)
      acd57(32)=spvak2k1(iv2)
      acd57(33)=spval4k1(iv2)
      acd57(34)=spvak2k1(iv1)
      acd57(35)=spval4k1(iv1)
      acd57(36)=abb57(13)
      acd57(37)=abb57(18)
      acd57(38)=spval3k1(iv3)
      acd57(39)=abb57(47)
      acd57(40)=spval3k1(iv2)
      acd57(41)=spval3k1(iv1)
      acd57(42)=acd57(11)*acd57(9)
      acd57(43)=-acd57(2)*acd57(4)
      acd57(43)=acd57(43)-acd57(42)
      acd57(43)=acd57(1)*acd57(43)
      acd57(44)=acd57(16)*acd57(9)
      acd57(45)=-acd57(14)*acd57(4)
      acd57(45)=acd57(45)-acd57(44)
      acd57(45)=acd57(13)*acd57(45)
      acd57(46)=acd57(20)*acd57(9)
      acd57(47)=-acd57(18)*acd57(4)
      acd57(47)=acd57(47)-acd57(46)
      acd57(47)=acd57(17)*acd57(47)
      acd57(43)=acd57(47)+acd57(43)+acd57(45)
      acd57(43)=acd57(3)*acd57(43)
      acd57(45)=acd57(1)*acd57(6)
      acd57(47)=acd57(13)*acd57(15)
      acd57(48)=acd57(17)*acd57(19)
      acd57(45)=acd57(48)+acd57(45)+acd57(47)
      acd57(47)=-acd57(8)*acd57(9)
      acd57(47)=acd57(47)+acd57(10)
      acd57(47)=acd57(45)*acd57(47)
      acd57(48)=acd57(2)*acd57(15)
      acd57(49)=acd57(14)*acd57(6)
      acd57(48)=acd57(48)+acd57(49)
      acd57(49)=-acd57(4)*acd57(48)
      acd57(50)=-acd57(15)*acd57(42)
      acd57(51)=-acd57(6)*acd57(44)
      acd57(49)=acd57(51)+acd57(50)+acd57(49)
      acd57(49)=acd57(25)*acd57(49)
      acd57(50)=acd57(2)*acd57(19)
      acd57(51)=acd57(18)*acd57(6)
      acd57(50)=acd57(50)+acd57(51)
      acd57(51)=-acd57(4)*acd57(50)
      acd57(42)=-acd57(19)*acd57(42)
      acd57(52)=-acd57(6)*acd57(46)
      acd57(42)=acd57(52)+acd57(42)+acd57(51)
      acd57(42)=acd57(26)*acd57(42)
      acd57(51)=acd57(14)*acd57(19)
      acd57(52)=acd57(18)*acd57(15)
      acd57(51)=acd57(51)+acd57(52)
      acd57(52)=-acd57(4)*acd57(51)
      acd57(44)=-acd57(19)*acd57(44)
      acd57(46)=-acd57(15)*acd57(46)
      acd57(44)=acd57(46)+acd57(44)+acd57(52)
      acd57(44)=acd57(27)*acd57(44)
      acd57(46)=acd57(1)*acd57(2)
      acd57(52)=acd57(13)*acd57(14)
      acd57(53)=acd57(17)*acd57(18)
      acd57(46)=acd57(53)+acd57(46)+acd57(52)
      acd57(46)=acd57(5)*acd57(46)
      acd57(45)=-acd57(7)*acd57(4)*acd57(45)
      acd57(52)=acd57(1)*acd57(11)
      acd57(53)=acd57(13)*acd57(16)
      acd57(54)=acd57(17)*acd57(20)
      acd57(52)=acd57(54)+acd57(52)+acd57(53)
      acd57(52)=acd57(12)*acd57(52)
      acd57(53)=acd57(28)*acd57(15)
      acd57(54)=acd57(32)*acd57(6)
      acd57(53)=acd57(53)+acd57(54)
      acd57(53)=acd57(19)*acd57(53)
      acd57(54)=acd57(34)*acd57(15)*acd57(6)
      acd57(53)=acd57(54)+acd57(53)
      acd57(53)=acd57(36)*acd57(53)
      acd57(42)=acd57(43)+acd57(49)+acd57(47)+acd57(52)+acd57(53)+acd57(42)+acd&
      &57(44)+acd57(46)+acd57(45)
      acd57(43)=acd57(21)*acd57(48)
      acd57(44)=acd57(23)*acd57(50)
      acd57(45)=acd57(24)*acd57(51)
      acd57(43)=acd57(45)+acd57(44)+acd57(43)
      acd57(43)=acd57(22)*acd57(43)
      acd57(44)=acd57(30)*acd57(51)
      acd57(45)=acd57(33)*acd57(50)
      acd57(46)=acd57(35)*acd57(48)
      acd57(44)=acd57(46)+acd57(45)+acd57(44)
      acd57(44)=acd57(31)*acd57(44)
      acd57(45)=acd57(20)*acd57(15)
      acd57(46)=acd57(16)*acd57(19)
      acd57(45)=acd57(45)+acd57(46)
      acd57(46)=acd57(38)*acd57(45)
      acd57(47)=acd57(20)*acd57(6)
      acd57(49)=acd57(11)*acd57(19)
      acd57(47)=acd57(47)+acd57(49)
      acd57(49)=acd57(40)*acd57(47)
      acd57(52)=acd57(11)*acd57(15)
      acd57(53)=acd57(16)*acd57(6)
      acd57(52)=acd57(52)+acd57(53)
      acd57(53)=acd57(41)*acd57(52)
      acd57(46)=acd57(53)+acd57(49)+acd57(46)
      acd57(46)=acd57(39)*acd57(46)
      acd57(49)=acd57(29)*acd57(51)
      acd57(45)=acd57(37)*acd57(45)
      acd57(45)=acd57(49)+acd57(45)
      acd57(45)=acd57(28)*acd57(45)
      acd57(49)=acd57(29)*acd57(50)
      acd57(47)=acd57(37)*acd57(47)
      acd57(47)=acd57(49)+acd57(47)
      acd57(47)=acd57(32)*acd57(47)
      acd57(48)=acd57(29)*acd57(48)
      acd57(49)=acd57(37)*acd57(52)
      acd57(48)=acd57(48)+acd57(49)
      acd57(48)=acd57(34)*acd57(48)
      brack=2.0_ki*acd57(42)+acd57(43)+acd57(44)+acd57(45)+acd57(46)+acd57(47)+&
      &acd57(48)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd57
      complex(ki) :: brack
      acd57(1)=d(iv1,iv2)
      acd57(2)=spvak2l3(iv3)
      acd57(3)=spvak2k5(iv4)
      acd57(4)=abb57(41)
      acd57(5)=spvak2l3(iv4)
      acd57(6)=spvak2k5(iv3)
      acd57(7)=spvak2l4(iv4)
      acd57(8)=abb57(45)
      acd57(9)=spvak2l4(iv3)
      acd57(10)=d(iv1,iv3)
      acd57(11)=spvak2l3(iv2)
      acd57(12)=spvak2k5(iv2)
      acd57(13)=spvak2l4(iv2)
      acd57(14)=d(iv1,iv4)
      acd57(15)=d(iv2,iv3)
      acd57(16)=spvak2l3(iv1)
      acd57(17)=spvak2k5(iv1)
      acd57(18)=spvak2l4(iv1)
      acd57(19)=d(iv2,iv4)
      acd57(20)=d(iv3,iv4)
      acd57(21)=acd57(20)*acd57(13)
      acd57(22)=acd57(19)*acd57(9)
      acd57(23)=acd57(15)*acd57(7)
      acd57(21)=acd57(23)+acd57(21)+acd57(22)
      acd57(21)=acd57(17)*acd57(21)
      acd57(22)=acd57(20)*acd57(18)
      acd57(23)=acd57(14)*acd57(9)
      acd57(24)=acd57(10)*acd57(7)
      acd57(22)=acd57(24)+acd57(22)+acd57(23)
      acd57(22)=acd57(12)*acd57(22)
      acd57(23)=acd57(19)*acd57(18)
      acd57(24)=acd57(14)*acd57(13)
      acd57(25)=acd57(1)*acd57(7)
      acd57(23)=acd57(25)+acd57(23)+acd57(24)
      acd57(23)=acd57(6)*acd57(23)
      acd57(24)=acd57(15)*acd57(18)
      acd57(25)=acd57(10)*acd57(13)
      acd57(26)=acd57(1)*acd57(9)
      acd57(24)=acd57(26)+acd57(24)+acd57(25)
      acd57(24)=acd57(3)*acd57(24)
      acd57(21)=acd57(24)+acd57(23)+acd57(21)+acd57(22)
      acd57(21)=acd57(8)*acd57(21)
      acd57(22)=acd57(20)*acd57(11)
      acd57(23)=acd57(19)*acd57(2)
      acd57(24)=acd57(15)*acd57(5)
      acd57(22)=acd57(24)+acd57(22)+acd57(23)
      acd57(22)=acd57(17)*acd57(22)
      acd57(23)=acd57(20)*acd57(16)
      acd57(24)=acd57(14)*acd57(2)
      acd57(25)=acd57(10)*acd57(5)
      acd57(23)=acd57(25)+acd57(23)+acd57(24)
      acd57(23)=acd57(12)*acd57(23)
      acd57(24)=acd57(19)*acd57(16)
      acd57(25)=acd57(14)*acd57(11)
      acd57(26)=acd57(1)*acd57(5)
      acd57(24)=acd57(26)+acd57(24)+acd57(25)
      acd57(24)=acd57(6)*acd57(24)
      acd57(25)=acd57(15)*acd57(16)
      acd57(26)=acd57(10)*acd57(11)
      acd57(27)=acd57(1)*acd57(2)
      acd57(25)=acd57(27)+acd57(25)+acd57(26)
      acd57(25)=acd57(3)*acd57(25)
      acd57(22)=acd57(25)+acd57(24)+acd57(22)+acd57(23)
      acd57(22)=acd57(4)*acd57(22)
      acd57(21)=acd57(21)+acd57(22)
      brack=2.0_ki*acd57(21)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd57h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd57
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd57h1
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
      qshift = -k3+k2-k5
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
end module     p0_gg_hhg_d57h1l1d
