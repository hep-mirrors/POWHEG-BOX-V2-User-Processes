module     p0_gg_hhg_d55h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d55h1l1d.f90
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
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd55
      complex(ki) :: brack
      acd55(1)=dotproduct(k1,qshift)
      acd55(2)=dotproduct(qshift,spvak2l3)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(37)
      acd55(5)=abb55(39)
      acd55(6)=dotproduct(qshift,qshift)
      acd55(7)=abb55(41)
      acd55(8)=abb55(48)
      acd55(9)=dotproduct(qshift,spvak2l4)
      acd55(10)=abb55(45)
      acd55(11)=abb55(17)
      acd55(12)=abb55(43)
      acd55(13)=abb55(33)
      acd55(14)=dotproduct(qshift,spvak2k1)
      acd55(15)=abb55(10)
      acd55(16)=dotproduct(qshift,spval4k1)
      acd55(17)=abb55(28)
      acd55(18)=abb55(40)
      acd55(19)=abb55(19)
      acd55(20)=abb55(50)
      acd55(21)=abb55(49)
      acd55(22)=abb55(13)
      acd55(23)=abb55(31)
      acd55(24)=abb55(18)
      acd55(25)=dotproduct(qshift,spval3k1)
      acd55(26)=abb55(47)
      acd55(27)=abb55(14)
      acd55(28)=abb55(11)
      acd55(29)=abb55(30)
      acd55(30)=abb55(12)
      acd55(31)=abb55(21)
      acd55(32)=abb55(46)
      acd55(33)=abb55(42)
      acd55(34)=abb55(15)
      acd55(35)=abb55(35)
      acd55(36)=abb55(16)
      acd55(37)=-acd55(16)*acd55(17)
      acd55(38)=-acd55(1)*acd55(4)
      acd55(39)=-acd55(6)*acd55(7)
      acd55(40)=-acd55(14)*acd55(15)
      acd55(37)=acd55(40)+acd55(39)+acd55(38)+acd55(18)+acd55(37)
      acd55(37)=acd55(2)*acd55(37)
      acd55(38)=-acd55(25)*acd55(26)
      acd55(39)=acd55(6)*acd55(10)
      acd55(40)=-acd55(14)*acd55(24)
      acd55(38)=acd55(40)+acd55(39)+acd55(27)+acd55(38)
      acd55(38)=acd55(9)*acd55(38)
      acd55(39)=acd55(25)*acd55(29)
      acd55(40)=-acd55(6)*acd55(11)
      acd55(41)=acd55(14)*acd55(28)
      acd55(42)=-acd55(14)*acd55(22)
      acd55(42)=acd55(23)+acd55(42)
      acd55(42)=acd55(3)*acd55(42)
      acd55(37)=acd55(42)+acd55(37)+acd55(38)+acd55(41)+acd55(40)-acd55(30)+acd&
      &55(39)
      acd55(37)=acd55(3)*acd55(37)
      acd55(38)=acd55(16)*acd55(20)
      acd55(39)=acd55(1)*acd55(5)
      acd55(40)=acd55(6)*acd55(8)
      acd55(41)=acd55(14)*acd55(19)
      acd55(38)=acd55(41)+acd55(40)+acd55(39)-acd55(21)+acd55(38)
      acd55(38)=acd55(2)*acd55(38)
      acd55(39)=acd55(25)*acd55(32)
      acd55(40)=-acd55(6)*acd55(12)
      acd55(41)=acd55(14)*acd55(31)
      acd55(39)=acd55(41)+acd55(40)-acd55(33)+acd55(39)
      acd55(39)=acd55(9)*acd55(39)
      acd55(40)=-acd55(25)*acd55(35)
      acd55(41)=acd55(6)*acd55(13)
      acd55(42)=-acd55(14)*acd55(34)
      brack=acd55(36)+acd55(37)+acd55(38)+acd55(39)+acd55(40)+acd55(41)+acd55(4&
      &2)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd55
      complex(ki) :: brack
      acd55(1)=k1(iv1)
      acd55(2)=dotproduct(qshift,spvak2l3)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(37)
      acd55(5)=abb55(39)
      acd55(6)=qshift(iv1)
      acd55(7)=abb55(41)
      acd55(8)=abb55(48)
      acd55(9)=dotproduct(qshift,spvak2l4)
      acd55(10)=abb55(45)
      acd55(11)=abb55(17)
      acd55(12)=abb55(43)
      acd55(13)=abb55(33)
      acd55(14)=spvak2l3(iv1)
      acd55(15)=dotproduct(k1,qshift)
      acd55(16)=dotproduct(qshift,qshift)
      acd55(17)=dotproduct(qshift,spvak2k1)
      acd55(18)=abb55(10)
      acd55(19)=dotproduct(qshift,spval4k1)
      acd55(20)=abb55(28)
      acd55(21)=abb55(40)
      acd55(22)=abb55(19)
      acd55(23)=abb55(50)
      acd55(24)=abb55(49)
      acd55(25)=spvak2k5(iv1)
      acd55(26)=abb55(13)
      acd55(27)=abb55(31)
      acd55(28)=abb55(18)
      acd55(29)=dotproduct(qshift,spval3k1)
      acd55(30)=abb55(47)
      acd55(31)=abb55(14)
      acd55(32)=abb55(11)
      acd55(33)=abb55(30)
      acd55(34)=abb55(12)
      acd55(35)=spvak2l4(iv1)
      acd55(36)=abb55(21)
      acd55(37)=abb55(46)
      acd55(38)=abb55(42)
      acd55(39)=spvak2k1(iv1)
      acd55(40)=abb55(15)
      acd55(41)=spval4k1(iv1)
      acd55(42)=spval3k1(iv1)
      acd55(43)=abb55(35)
      acd55(44)=acd55(19)*acd55(20)
      acd55(45)=acd55(4)*acd55(15)
      acd55(46)=acd55(16)*acd55(7)
      acd55(47)=acd55(17)*acd55(18)
      acd55(44)=-acd55(21)+acd55(44)+acd55(45)+acd55(46)+acd55(47)
      acd55(45)=-acd55(14)*acd55(44)
      acd55(46)=-acd55(20)*acd55(41)
      acd55(47)=-acd55(4)*acd55(1)
      acd55(48)=2.0_ki*acd55(6)
      acd55(49)=-acd55(7)*acd55(48)
      acd55(50)=-acd55(39)*acd55(18)
      acd55(46)=acd55(50)+acd55(49)+acd55(46)+acd55(47)
      acd55(46)=acd55(2)*acd55(46)
      acd55(47)=-acd55(42)*acd55(30)
      acd55(49)=acd55(10)*acd55(48)
      acd55(50)=-acd55(39)*acd55(28)
      acd55(47)=acd55(50)+acd55(47)+acd55(49)
      acd55(47)=acd55(9)*acd55(47)
      acd55(49)=acd55(29)*acd55(30)
      acd55(50)=acd55(16)*acd55(10)
      acd55(49)=-acd55(31)+acd55(49)-acd55(50)
      acd55(50)=-acd55(35)*acd55(49)
      acd55(51)=-acd55(3)*acd55(26)
      acd55(51)=acd55(51)+acd55(32)
      acd55(51)=acd55(39)*acd55(51)
      acd55(52)=acd55(42)*acd55(33)
      acd55(53)=-acd55(11)*acd55(48)
      acd55(54)=acd55(17)*acd55(35)
      acd55(55)=-acd55(28)*acd55(54)
      acd55(56)=-acd55(17)*acd55(26)
      acd55(56)=acd55(27)+acd55(56)
      acd55(56)=acd55(25)*acd55(56)
      acd55(45)=2.0_ki*acd55(56)+acd55(46)+acd55(47)+acd55(45)+acd55(55)+acd55(&
      &50)+acd55(52)+acd55(53)+acd55(51)
      acd55(45)=acd55(3)*acd55(45)
      acd55(44)=-acd55(2)*acd55(44)
      acd55(46)=acd55(17)*acd55(28)
      acd55(46)=-acd55(46)-acd55(49)
      acd55(46)=acd55(9)*acd55(46)
      acd55(47)=acd55(29)*acd55(33)
      acd55(49)=-acd55(16)*acd55(11)
      acd55(50)=acd55(17)*acd55(32)
      acd55(44)=acd55(44)+acd55(46)+acd55(50)+acd55(49)-acd55(34)+acd55(47)
      acd55(44)=acd55(25)*acd55(44)
      acd55(46)=acd55(19)*acd55(23)
      acd55(47)=acd55(15)*acd55(5)
      acd55(49)=acd55(16)*acd55(8)
      acd55(50)=acd55(17)*acd55(22)
      acd55(46)=acd55(50)+acd55(49)+acd55(47)-acd55(24)+acd55(46)
      acd55(46)=acd55(14)*acd55(46)
      acd55(47)=acd55(23)*acd55(41)
      acd55(49)=acd55(1)*acd55(5)
      acd55(50)=acd55(8)*acd55(48)
      acd55(51)=acd55(39)*acd55(22)
      acd55(47)=acd55(51)+acd55(50)+acd55(47)+acd55(49)
      acd55(47)=acd55(2)*acd55(47)
      acd55(49)=acd55(42)*acd55(37)
      acd55(50)=-acd55(12)*acd55(48)
      acd55(51)=acd55(39)*acd55(36)
      acd55(49)=acd55(51)+acd55(49)+acd55(50)
      acd55(49)=acd55(9)*acd55(49)
      acd55(50)=acd55(29)*acd55(37)
      acd55(51)=-acd55(16)*acd55(12)
      acd55(50)=acd55(51)-acd55(38)+acd55(50)
      acd55(50)=acd55(35)*acd55(50)
      acd55(51)=-acd55(42)*acd55(43)
      acd55(48)=acd55(13)*acd55(48)
      acd55(52)=-acd55(39)*acd55(40)
      acd55(53)=acd55(36)*acd55(54)
      brack=acd55(44)+acd55(45)+acd55(46)+acd55(47)+acd55(48)+acd55(49)+acd55(5&
      &0)+acd55(51)+acd55(52)+acd55(53)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=dotproduct(qshift,spvak2l3)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(41)
      acd55(5)=abb55(48)
      acd55(6)=dotproduct(qshift,spvak2l4)
      acd55(7)=abb55(45)
      acd55(8)=abb55(17)
      acd55(9)=abb55(43)
      acd55(10)=abb55(33)
      acd55(11)=k1(iv1)
      acd55(12)=spvak2l3(iv2)
      acd55(13)=abb55(37)
      acd55(14)=abb55(39)
      acd55(15)=spvak2k5(iv2)
      acd55(16)=k1(iv2)
      acd55(17)=spvak2l3(iv1)
      acd55(18)=spvak2k5(iv1)
      acd55(19)=qshift(iv1)
      acd55(20)=spvak2l4(iv2)
      acd55(21)=qshift(iv2)
      acd55(22)=spvak2l4(iv1)
      acd55(23)=dotproduct(k1,qshift)
      acd55(24)=dotproduct(qshift,qshift)
      acd55(25)=dotproduct(qshift,spvak2k1)
      acd55(26)=abb55(10)
      acd55(27)=dotproduct(qshift,spval4k1)
      acd55(28)=abb55(28)
      acd55(29)=abb55(40)
      acd55(30)=spvak2k1(iv2)
      acd55(31)=abb55(19)
      acd55(32)=spval4k1(iv2)
      acd55(33)=abb55(50)
      acd55(34)=spvak2k1(iv1)
      acd55(35)=spval4k1(iv1)
      acd55(36)=abb55(13)
      acd55(37)=abb55(31)
      acd55(38)=abb55(18)
      acd55(39)=dotproduct(qshift,spval3k1)
      acd55(40)=abb55(47)
      acd55(41)=abb55(14)
      acd55(42)=abb55(11)
      acd55(43)=spval3k1(iv2)
      acd55(44)=abb55(30)
      acd55(45)=spval3k1(iv1)
      acd55(46)=abb55(21)
      acd55(47)=abb55(46)
      acd55(48)=acd55(28)*acd55(35)
      acd55(49)=acd55(13)*acd55(11)
      acd55(50)=acd55(34)*acd55(26)
      acd55(51)=2.0_ki*acd55(19)
      acd55(52)=acd55(51)*acd55(4)
      acd55(48)=acd55(48)+acd55(49)+acd55(50)+acd55(52)
      acd55(49)=-acd55(2)*acd55(48)
      acd55(50)=acd55(28)*acd55(27)
      acd55(52)=acd55(26)*acd55(25)
      acd55(53)=acd55(13)*acd55(23)
      acd55(54)=acd55(4)*acd55(24)
      acd55(50)=-acd55(29)+acd55(50)+acd55(52)+acd55(53)+acd55(54)
      acd55(52)=-acd55(17)*acd55(50)
      acd55(53)=acd55(40)*acd55(45)
      acd55(54)=acd55(34)*acd55(38)
      acd55(55)=acd55(51)*acd55(7)
      acd55(53)=-acd55(55)+acd55(53)+acd55(54)
      acd55(54)=-acd55(6)*acd55(53)
      acd55(55)=acd55(40)*acd55(39)
      acd55(56)=acd55(38)*acd55(25)
      acd55(57)=acd55(7)*acd55(24)
      acd55(55)=-acd55(55)-acd55(56)+acd55(57)+acd55(41)
      acd55(56)=acd55(22)*acd55(55)
      acd55(57)=acd55(3)*acd55(36)
      acd55(57)=-acd55(42)+2.0_ki*acd55(57)
      acd55(58)=-acd55(34)*acd55(57)
      acd55(59)=acd55(45)*acd55(44)
      acd55(60)=-acd55(8)*acd55(51)
      acd55(61)=-acd55(25)*acd55(36)
      acd55(61)=acd55(37)+acd55(61)
      acd55(61)=acd55(18)*acd55(61)
      acd55(49)=2.0_ki*acd55(61)+acd55(52)+acd55(49)+acd55(56)+acd55(54)+acd55(&
      &59)+acd55(60)+acd55(58)
      acd55(49)=acd55(15)*acd55(49)
      acd55(52)=acd55(28)*acd55(32)
      acd55(54)=acd55(13)*acd55(16)
      acd55(56)=2.0_ki*acd55(21)
      acd55(58)=acd55(56)*acd55(4)
      acd55(59)=acd55(30)*acd55(26)
      acd55(52)=acd55(52)+acd55(54)+acd55(58)+acd55(59)
      acd55(54)=-acd55(17)*acd55(52)
      acd55(48)=-acd55(12)*acd55(48)
      acd55(58)=acd55(40)*acd55(43)
      acd55(59)=acd55(56)*acd55(7)
      acd55(60)=acd55(30)*acd55(38)
      acd55(58)=acd55(60)+acd55(58)-acd55(59)
      acd55(59)=-acd55(22)*acd55(58)
      acd55(53)=-acd55(20)*acd55(53)
      acd55(60)=-acd55(1)*acd55(8)
      acd55(61)=acd55(6)*acd55(1)
      acd55(62)=acd55(7)*acd55(61)
      acd55(60)=acd55(60)+acd55(62)
      acd55(62)=acd55(2)*acd55(1)
      acd55(63)=2.0_ki*acd55(4)
      acd55(63)=-acd55(63)*acd55(62)
      acd55(48)=acd55(48)+acd55(54)+acd55(63)+acd55(53)+2.0_ki*acd55(60)+acd55(&
      &59)
      acd55(48)=acd55(3)*acd55(48)
      acd55(52)=-acd55(2)*acd55(52)
      acd55(50)=-acd55(12)*acd55(50)
      acd55(53)=-acd55(6)*acd55(58)
      acd55(54)=acd55(20)*acd55(55)
      acd55(55)=-acd55(30)*acd55(57)
      acd55(57)=acd55(43)*acd55(44)
      acd55(58)=-acd55(8)*acd55(56)
      acd55(50)=acd55(50)+acd55(52)+acd55(54)+acd55(53)+acd55(57)+acd55(58)+acd&
      &55(55)
      acd55(50)=acd55(18)*acd55(50)
      acd55(52)=acd55(32)*acd55(33)
      acd55(53)=acd55(16)*acd55(14)
      acd55(54)=acd55(5)*acd55(56)
      acd55(55)=acd55(30)*acd55(31)
      acd55(52)=acd55(55)+acd55(54)+acd55(52)+acd55(53)
      acd55(52)=acd55(17)*acd55(52)
      acd55(53)=acd55(35)*acd55(33)
      acd55(54)=acd55(11)*acd55(14)
      acd55(55)=acd55(5)*acd55(51)
      acd55(57)=acd55(34)*acd55(31)
      acd55(53)=acd55(57)+acd55(55)+acd55(53)+acd55(54)
      acd55(53)=acd55(12)*acd55(53)
      acd55(54)=acd55(43)*acd55(47)
      acd55(55)=-acd55(9)*acd55(56)
      acd55(56)=acd55(30)*acd55(46)
      acd55(54)=acd55(56)+acd55(54)+acd55(55)
      acd55(54)=acd55(22)*acd55(54)
      acd55(55)=acd55(45)*acd55(47)
      acd55(51)=-acd55(9)*acd55(51)
      acd55(56)=acd55(34)*acd55(46)
      acd55(51)=acd55(56)+acd55(55)+acd55(51)
      acd55(51)=acd55(20)*acd55(51)
      acd55(55)=acd55(1)*acd55(10)
      acd55(56)=-acd55(9)*acd55(61)
      acd55(55)=acd55(55)+acd55(56)
      acd55(56)=2.0_ki*acd55(5)
      acd55(56)=acd55(56)*acd55(62)
      brack=acd55(48)+acd55(49)+acd55(50)+acd55(51)+acd55(52)+acd55(53)+acd55(5&
      &4)+2.0_ki*acd55(55)+acd55(56)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=spvak2l3(iv3)
      acd55(3)=dotproduct(qshift,spvak2k5)
      acd55(4)=abb55(41)
      acd55(5)=abb55(48)
      acd55(6)=spvak2k5(iv3)
      acd55(7)=dotproduct(qshift,spvak2l3)
      acd55(8)=dotproduct(qshift,spvak2l4)
      acd55(9)=abb55(45)
      acd55(10)=abb55(17)
      acd55(11)=spvak2l4(iv3)
      acd55(12)=abb55(43)
      acd55(13)=d(iv1,iv3)
      acd55(14)=spvak2l3(iv2)
      acd55(15)=spvak2k5(iv2)
      acd55(16)=spvak2l4(iv2)
      acd55(17)=d(iv2,iv3)
      acd55(18)=spvak2l3(iv1)
      acd55(19)=spvak2k5(iv1)
      acd55(20)=spvak2l4(iv1)
      acd55(21)=k1(iv1)
      acd55(22)=abb55(37)
      acd55(23)=k1(iv2)
      acd55(24)=k1(iv3)
      acd55(25)=qshift(iv1)
      acd55(26)=qshift(iv2)
      acd55(27)=qshift(iv3)
      acd55(28)=spvak2k1(iv3)
      acd55(29)=abb55(10)
      acd55(30)=spval4k1(iv3)
      acd55(31)=abb55(28)
      acd55(32)=spvak2k1(iv2)
      acd55(33)=spval4k1(iv2)
      acd55(34)=spvak2k1(iv1)
      acd55(35)=spval4k1(iv1)
      acd55(36)=abb55(13)
      acd55(37)=abb55(18)
      acd55(38)=spval3k1(iv3)
      acd55(39)=abb55(47)
      acd55(40)=spval3k1(iv2)
      acd55(41)=spval3k1(iv1)
      acd55(42)=acd55(11)*acd55(9)
      acd55(43)=-acd55(2)*acd55(4)
      acd55(43)=acd55(43)+acd55(42)
      acd55(43)=acd55(1)*acd55(43)
      acd55(44)=acd55(16)*acd55(9)
      acd55(45)=-acd55(14)*acd55(4)
      acd55(45)=acd55(45)+acd55(44)
      acd55(45)=acd55(13)*acd55(45)
      acd55(46)=acd55(20)*acd55(9)
      acd55(47)=-acd55(18)*acd55(4)
      acd55(47)=acd55(47)+acd55(46)
      acd55(47)=acd55(17)*acd55(47)
      acd55(43)=acd55(47)+acd55(43)+acd55(45)
      acd55(43)=acd55(3)*acd55(43)
      acd55(45)=acd55(1)*acd55(6)
      acd55(47)=acd55(13)*acd55(15)
      acd55(48)=acd55(17)*acd55(19)
      acd55(45)=acd55(48)+acd55(45)+acd55(47)
      acd55(47)=acd55(8)*acd55(9)
      acd55(47)=acd55(47)-acd55(10)
      acd55(47)=acd55(45)*acd55(47)
      acd55(48)=acd55(2)*acd55(15)
      acd55(49)=acd55(14)*acd55(6)
      acd55(48)=acd55(48)+acd55(49)
      acd55(49)=-acd55(4)*acd55(48)
      acd55(50)=acd55(15)*acd55(42)
      acd55(51)=acd55(6)*acd55(44)
      acd55(49)=acd55(51)+acd55(50)+acd55(49)
      acd55(49)=acd55(25)*acd55(49)
      acd55(50)=acd55(2)*acd55(19)
      acd55(51)=acd55(18)*acd55(6)
      acd55(50)=acd55(50)+acd55(51)
      acd55(51)=-acd55(4)*acd55(50)
      acd55(42)=acd55(19)*acd55(42)
      acd55(52)=acd55(6)*acd55(46)
      acd55(42)=acd55(52)+acd55(42)+acd55(51)
      acd55(42)=acd55(26)*acd55(42)
      acd55(51)=acd55(14)*acd55(19)
      acd55(52)=acd55(18)*acd55(15)
      acd55(51)=acd55(51)+acd55(52)
      acd55(52)=-acd55(4)*acd55(51)
      acd55(44)=acd55(19)*acd55(44)
      acd55(46)=acd55(15)*acd55(46)
      acd55(44)=acd55(46)+acd55(44)+acd55(52)
      acd55(44)=acd55(27)*acd55(44)
      acd55(46)=acd55(1)*acd55(2)
      acd55(52)=acd55(13)*acd55(14)
      acd55(53)=acd55(17)*acd55(18)
      acd55(46)=acd55(53)+acd55(46)+acd55(52)
      acd55(46)=acd55(5)*acd55(46)
      acd55(45)=-acd55(7)*acd55(4)*acd55(45)
      acd55(52)=-acd55(1)*acd55(11)
      acd55(53)=-acd55(13)*acd55(16)
      acd55(54)=-acd55(17)*acd55(20)
      acd55(52)=acd55(54)+acd55(52)+acd55(53)
      acd55(52)=acd55(12)*acd55(52)
      acd55(53)=-acd55(28)*acd55(15)
      acd55(54)=-acd55(32)*acd55(6)
      acd55(53)=acd55(53)+acd55(54)
      acd55(53)=acd55(19)*acd55(53)
      acd55(54)=-acd55(34)*acd55(15)*acd55(6)
      acd55(53)=acd55(54)+acd55(53)
      acd55(53)=acd55(36)*acd55(53)
      acd55(42)=acd55(43)+acd55(49)+acd55(47)+acd55(52)+acd55(53)+acd55(42)+acd&
      &55(44)+acd55(46)+acd55(45)
      acd55(43)=-acd55(21)*acd55(48)
      acd55(44)=-acd55(23)*acd55(50)
      acd55(45)=-acd55(24)*acd55(51)
      acd55(43)=acd55(45)+acd55(44)+acd55(43)
      acd55(43)=acd55(22)*acd55(43)
      acd55(44)=-acd55(30)*acd55(51)
      acd55(45)=-acd55(33)*acd55(50)
      acd55(46)=-acd55(35)*acd55(48)
      acd55(44)=acd55(46)+acd55(45)+acd55(44)
      acd55(44)=acd55(31)*acd55(44)
      acd55(45)=acd55(20)*acd55(15)
      acd55(46)=acd55(16)*acd55(19)
      acd55(45)=acd55(45)+acd55(46)
      acd55(46)=-acd55(38)*acd55(45)
      acd55(47)=acd55(20)*acd55(6)
      acd55(49)=acd55(11)*acd55(19)
      acd55(47)=acd55(47)+acd55(49)
      acd55(49)=-acd55(40)*acd55(47)
      acd55(52)=acd55(11)*acd55(15)
      acd55(53)=acd55(16)*acd55(6)
      acd55(52)=acd55(52)+acd55(53)
      acd55(53)=-acd55(41)*acd55(52)
      acd55(46)=acd55(53)+acd55(49)+acd55(46)
      acd55(46)=acd55(39)*acd55(46)
      acd55(49)=-acd55(29)*acd55(51)
      acd55(45)=-acd55(37)*acd55(45)
      acd55(45)=acd55(49)+acd55(45)
      acd55(45)=acd55(28)*acd55(45)
      acd55(49)=-acd55(29)*acd55(50)
      acd55(47)=-acd55(37)*acd55(47)
      acd55(47)=acd55(49)+acd55(47)
      acd55(47)=acd55(32)*acd55(47)
      acd55(48)=-acd55(29)*acd55(48)
      acd55(49)=-acd55(37)*acd55(52)
      acd55(48)=acd55(48)+acd55(49)
      acd55(48)=acd55(34)*acd55(48)
      brack=2.0_ki*acd55(42)+acd55(43)+acd55(44)+acd55(45)+acd55(46)+acd55(47)+&
      &acd55(48)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd55
      complex(ki) :: brack
      acd55(1)=d(iv1,iv2)
      acd55(2)=spvak2l3(iv3)
      acd55(3)=spvak2k5(iv4)
      acd55(4)=abb55(41)
      acd55(5)=spvak2l3(iv4)
      acd55(6)=spvak2k5(iv3)
      acd55(7)=spvak2l4(iv4)
      acd55(8)=abb55(45)
      acd55(9)=spvak2l4(iv3)
      acd55(10)=d(iv1,iv3)
      acd55(11)=spvak2l3(iv2)
      acd55(12)=spvak2k5(iv2)
      acd55(13)=spvak2l4(iv2)
      acd55(14)=d(iv1,iv4)
      acd55(15)=d(iv2,iv3)
      acd55(16)=spvak2l3(iv1)
      acd55(17)=spvak2k5(iv1)
      acd55(18)=spvak2l4(iv1)
      acd55(19)=d(iv2,iv4)
      acd55(20)=d(iv3,iv4)
      acd55(21)=acd55(20)*acd55(13)
      acd55(22)=acd55(19)*acd55(9)
      acd55(23)=acd55(15)*acd55(7)
      acd55(21)=acd55(23)+acd55(21)+acd55(22)
      acd55(21)=acd55(17)*acd55(21)
      acd55(22)=acd55(20)*acd55(18)
      acd55(23)=acd55(14)*acd55(9)
      acd55(24)=acd55(10)*acd55(7)
      acd55(22)=acd55(24)+acd55(22)+acd55(23)
      acd55(22)=acd55(12)*acd55(22)
      acd55(23)=acd55(19)*acd55(18)
      acd55(24)=acd55(14)*acd55(13)
      acd55(25)=acd55(1)*acd55(7)
      acd55(23)=acd55(25)+acd55(23)+acd55(24)
      acd55(23)=acd55(6)*acd55(23)
      acd55(24)=acd55(15)*acd55(18)
      acd55(25)=acd55(10)*acd55(13)
      acd55(26)=acd55(1)*acd55(9)
      acd55(24)=acd55(26)+acd55(24)+acd55(25)
      acd55(24)=acd55(3)*acd55(24)
      acd55(21)=acd55(24)+acd55(23)+acd55(21)+acd55(22)
      acd55(21)=acd55(8)*acd55(21)
      acd55(22)=-acd55(20)*acd55(11)
      acd55(23)=-acd55(19)*acd55(2)
      acd55(24)=-acd55(15)*acd55(5)
      acd55(22)=acd55(24)+acd55(22)+acd55(23)
      acd55(22)=acd55(17)*acd55(22)
      acd55(23)=-acd55(20)*acd55(16)
      acd55(24)=-acd55(14)*acd55(2)
      acd55(25)=-acd55(10)*acd55(5)
      acd55(23)=acd55(25)+acd55(23)+acd55(24)
      acd55(23)=acd55(12)*acd55(23)
      acd55(24)=-acd55(19)*acd55(16)
      acd55(25)=-acd55(14)*acd55(11)
      acd55(26)=-acd55(1)*acd55(5)
      acd55(24)=acd55(26)+acd55(24)+acd55(25)
      acd55(24)=acd55(6)*acd55(24)
      acd55(25)=-acd55(15)*acd55(16)
      acd55(26)=-acd55(10)*acd55(11)
      acd55(27)=-acd55(1)*acd55(2)
      acd55(25)=acd55(27)+acd55(25)+acd55(26)
      acd55(25)=acd55(3)*acd55(25)
      acd55(22)=acd55(25)+acd55(24)+acd55(22)+acd55(23)
      acd55(22)=acd55(4)*acd55(22)
      acd55(21)=acd55(21)+acd55(22)
      brack=2.0_ki*acd55(21)
   end function brack_5
!---#] function brack_5:
!---#[ function brack_6:
   pure function brack_6(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd55h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd55
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_6
!---#] function brack_6:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4,i5) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd55h1
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
end module     p0_gg_hhg_d55h1l1d
