module     p0_gg_hhg_d25h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d25h3l1d.f90
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
   public :: derivative
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd25
      complex(ki) :: brack
      acd25(1)=dotproduct(k1,qshift)
      acd25(2)=dotproduct(k2,qshift)
      acd25(3)=abb25(19)
      acd25(4)=dotproduct(qshift,qshift)
      acd25(5)=abb25(47)
      acd25(6)=dotproduct(qshift,spvak2l3)
      acd25(7)=abb25(46)
      acd25(8)=abb25(48)
      acd25(9)=abb25(43)
      acd25(10)=dotproduct(qshift,spvak2k1)
      acd25(11)=abb25(33)
      acd25(12)=dotproduct(qshift,spval3k1)
      acd25(13)=abb25(22)
      acd25(14)=dotproduct(qshift,spval4k1)
      acd25(15)=abb25(26)
      acd25(16)=abb25(39)
      acd25(17)=abb25(18)
      acd25(18)=abb25(10)
      acd25(19)=abb25(17)
      acd25(20)=abb25(52)
      acd25(21)=dotproduct(qshift,spvak2l4)
      acd25(22)=abb25(27)
      acd25(23)=dotproduct(qshift,spvak5k1)
      acd25(24)=abb25(14)
      acd25(25)=abb25(11)
      acd25(26)=abb25(21)
      acd25(27)=abb25(23)
      acd25(28)=abb25(28)
      acd25(29)=abb25(25)
      acd25(30)=abb25(15)
      acd25(31)=abb25(31)
      acd25(32)=abb25(13)
      acd25(33)=abb25(30)
      acd25(34)=abb25(45)
      acd25(35)=abb25(34)
      acd25(36)=abb25(16)
      acd25(37)=abb25(53)
      acd25(38)=abb25(40)
      acd25(39)=dotproduct(qshift,spvak2k5)
      acd25(40)=abb25(37)
      acd25(41)=abb25(12)
      acd25(42)=abb25(35)
      acd25(43)=abb25(24)
      acd25(44)=acd25(4)+acd25(1)
      acd25(44)=acd25(5)*acd25(44)
      acd25(45)=-acd25(21)*acd25(22)
      acd25(46)=-acd25(14)*acd25(20)
      acd25(47)=-acd25(23)*acd25(24)
      acd25(48)=-acd25(6)*acd25(17)
      acd25(49)=-acd25(12)*acd25(19)
      acd25(50)=-acd25(2)*acd25(9)
      acd25(51)=-acd25(10)*acd25(18)
      acd25(44)=acd25(51)+acd25(50)+acd25(49)+acd25(48)+acd25(47)+acd25(46)+acd&
      &25(25)+acd25(45)+acd25(44)
      acd25(44)=acd25(4)*acd25(44)
      acd25(45)=acd25(21)*acd25(31)
      acd25(46)=acd25(23)*acd25(32)
      acd25(47)=acd25(6)*acd25(26)
      acd25(48)=acd25(12)*acd25(30)
      acd25(49)=acd25(2)*acd25(11)
      acd25(50)=acd25(10)*acd25(29)
      acd25(45)=acd25(50)+acd25(49)+acd25(48)+acd25(47)+acd25(46)-acd25(33)+acd&
      &25(45)
      acd25(45)=acd25(10)*acd25(45)
      acd25(46)=acd25(14)*acd25(15)
      acd25(47)=acd25(1)*acd25(3)
      acd25(48)=acd25(12)*acd25(13)
      acd25(46)=acd25(48)+acd25(47)-acd25(16)+acd25(46)
      acd25(46)=acd25(2)*acd25(46)
      acd25(47)=acd25(14)*acd25(27)
      acd25(48)=acd25(1)*acd25(7)
      acd25(47)=acd25(48)-acd25(28)+acd25(47)
      acd25(47)=acd25(6)*acd25(47)
      acd25(48)=acd25(21)*acd25(34)
      acd25(49)=acd25(23)*acd25(35)
      acd25(48)=acd25(49)-acd25(36)+acd25(48)
      acd25(48)=acd25(12)*acd25(48)
      acd25(49)=-acd25(39)*acd25(42)
      acd25(50)=-acd25(21)*acd25(38)
      acd25(51)=-acd25(14)*acd25(37)
      acd25(52)=-acd25(1)*acd25(8)
      acd25(53)=acd25(39)*acd25(40)
      acd25(53)=-acd25(41)+acd25(53)
      acd25(53)=acd25(23)*acd25(53)
      brack=acd25(43)+acd25(44)+acd25(45)+acd25(46)+acd25(47)+acd25(48)+acd25(4&
      &9)+acd25(50)+acd25(51)+acd25(52)+acd25(53)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd25
      complex(ki) :: brack
      acd25(1)=k1(iv1)
      acd25(2)=dotproduct(k2,qshift)
      acd25(3)=abb25(19)
      acd25(4)=dotproduct(qshift,qshift)
      acd25(5)=abb25(47)
      acd25(6)=dotproduct(qshift,spvak2l3)
      acd25(7)=abb25(46)
      acd25(8)=abb25(48)
      acd25(9)=k2(iv1)
      acd25(10)=dotproduct(k1,qshift)
      acd25(11)=abb25(43)
      acd25(12)=dotproduct(qshift,spvak2k1)
      acd25(13)=abb25(33)
      acd25(14)=dotproduct(qshift,spval3k1)
      acd25(15)=abb25(22)
      acd25(16)=dotproduct(qshift,spval4k1)
      acd25(17)=abb25(26)
      acd25(18)=abb25(39)
      acd25(19)=qshift(iv1)
      acd25(20)=abb25(18)
      acd25(21)=abb25(10)
      acd25(22)=abb25(17)
      acd25(23)=abb25(52)
      acd25(24)=dotproduct(qshift,spvak2l4)
      acd25(25)=abb25(27)
      acd25(26)=dotproduct(qshift,spvak5k1)
      acd25(27)=abb25(14)
      acd25(28)=abb25(11)
      acd25(29)=spvak2l3(iv1)
      acd25(30)=abb25(21)
      acd25(31)=abb25(23)
      acd25(32)=abb25(28)
      acd25(33)=spvak2k1(iv1)
      acd25(34)=abb25(25)
      acd25(35)=abb25(15)
      acd25(36)=abb25(31)
      acd25(37)=abb25(13)
      acd25(38)=abb25(30)
      acd25(39)=spval3k1(iv1)
      acd25(40)=abb25(45)
      acd25(41)=abb25(34)
      acd25(42)=abb25(16)
      acd25(43)=spval4k1(iv1)
      acd25(44)=abb25(53)
      acd25(45)=spvak2l4(iv1)
      acd25(46)=abb25(40)
      acd25(47)=spvak5k1(iv1)
      acd25(48)=dotproduct(qshift,spvak2k5)
      acd25(49)=abb25(37)
      acd25(50)=abb25(12)
      acd25(51)=spvak2k5(iv1)
      acd25(52)=abb25(35)
      acd25(53)=-acd25(45)*acd25(25)
      acd25(54)=-acd25(43)*acd25(23)
      acd25(55)=acd25(1)*acd25(5)
      acd25(56)=-acd25(47)*acd25(27)
      acd25(57)=-acd25(29)*acd25(20)
      acd25(58)=-acd25(39)*acd25(22)
      acd25(59)=-acd25(9)*acd25(11)
      acd25(60)=-acd25(33)*acd25(21)
      acd25(53)=acd25(60)+acd25(59)+acd25(58)+acd25(57)+acd25(56)+acd25(55)+acd&
      &25(53)+acd25(54)
      acd25(53)=acd25(4)*acd25(53)
      acd25(54)=2.0_ki*acd25(4)+acd25(10)
      acd25(54)=acd25(5)*acd25(54)
      acd25(55)=-acd25(24)*acd25(25)
      acd25(56)=-acd25(16)*acd25(23)
      acd25(57)=-acd25(26)*acd25(27)
      acd25(58)=-acd25(6)*acd25(20)
      acd25(59)=-acd25(14)*acd25(22)
      acd25(60)=-acd25(2)*acd25(11)
      acd25(61)=-acd25(12)*acd25(21)
      acd25(54)=acd25(61)+acd25(60)+acd25(59)+acd25(58)+acd25(57)+acd25(56)+acd&
      &25(28)+acd25(55)+acd25(54)
      acd25(54)=acd25(19)*acd25(54)
      acd25(55)=acd25(24)*acd25(36)
      acd25(56)=acd25(26)*acd25(37)
      acd25(57)=acd25(6)*acd25(30)
      acd25(58)=acd25(14)*acd25(35)
      acd25(59)=acd25(2)*acd25(13)
      acd25(60)=acd25(12)*acd25(34)
      acd25(55)=2.0_ki*acd25(60)+acd25(59)+acd25(58)+acd25(57)+acd25(56)-acd25(&
      &38)+acd25(55)
      acd25(55)=acd25(33)*acd25(55)
      acd25(56)=acd25(45)*acd25(36)
      acd25(57)=acd25(47)*acd25(37)
      acd25(58)=acd25(29)*acd25(30)
      acd25(59)=acd25(39)*acd25(35)
      acd25(60)=acd25(9)*acd25(13)
      acd25(56)=acd25(60)+acd25(59)+acd25(58)+acd25(56)+acd25(57)
      acd25(56)=acd25(12)*acd25(56)
      acd25(57)=acd25(24)*acd25(40)
      acd25(58)=acd25(26)*acd25(41)
      acd25(59)=acd25(2)*acd25(15)
      acd25(57)=acd25(59)+acd25(58)-acd25(42)+acd25(57)
      acd25(57)=acd25(39)*acd25(57)
      acd25(58)=acd25(16)*acd25(17)
      acd25(59)=acd25(10)*acd25(3)
      acd25(60)=acd25(14)*acd25(15)
      acd25(58)=acd25(60)+acd25(59)-acd25(18)+acd25(58)
      acd25(58)=acd25(9)*acd25(58)
      acd25(59)=acd25(16)*acd25(31)
      acd25(60)=acd25(10)*acd25(7)
      acd25(59)=acd25(60)-acd25(32)+acd25(59)
      acd25(59)=acd25(29)*acd25(59)
      acd25(60)=acd25(45)*acd25(40)
      acd25(61)=acd25(47)*acd25(41)
      acd25(60)=acd25(60)+acd25(61)
      acd25(60)=acd25(14)*acd25(60)
      acd25(61)=acd25(43)*acd25(17)
      acd25(62)=acd25(1)*acd25(3)
      acd25(61)=acd25(61)+acd25(62)
      acd25(61)=acd25(2)*acd25(61)
      acd25(62)=acd25(26)*acd25(49)
      acd25(62)=acd25(62)-acd25(52)
      acd25(62)=acd25(51)*acd25(62)
      acd25(63)=acd25(6)*acd25(31)
      acd25(63)=acd25(63)-acd25(44)
      acd25(63)=acd25(43)*acd25(63)
      acd25(64)=-acd25(45)*acd25(46)
      acd25(65)=acd25(6)*acd25(7)
      acd25(65)=-acd25(8)+acd25(65)
      acd25(65)=acd25(1)*acd25(65)
      acd25(66)=acd25(49)*acd25(48)
      acd25(66)=-acd25(50)+acd25(66)
      acd25(66)=acd25(47)*acd25(66)
      brack=acd25(53)+2.0_ki*acd25(54)+acd25(55)+acd25(56)+acd25(57)+acd25(58)+&
      &acd25(59)+acd25(60)+acd25(61)+acd25(62)+acd25(63)+acd25(64)+acd25(65)+ac&
      &d25(66)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=dotproduct(k1,qshift)
      acd25(3)=abb25(47)
      acd25(4)=dotproduct(k2,qshift)
      acd25(5)=abb25(43)
      acd25(6)=dotproduct(qshift,qshift)
      acd25(7)=dotproduct(qshift,spvak2k1)
      acd25(8)=abb25(10)
      acd25(9)=dotproduct(qshift,spvak2l3)
      acd25(10)=abb25(18)
      acd25(11)=dotproduct(qshift,spvak2l4)
      acd25(12)=abb25(27)
      acd25(13)=dotproduct(qshift,spval3k1)
      acd25(14)=abb25(17)
      acd25(15)=dotproduct(qshift,spval4k1)
      acd25(16)=abb25(52)
      acd25(17)=dotproduct(qshift,spvak5k1)
      acd25(18)=abb25(14)
      acd25(19)=abb25(11)
      acd25(20)=k1(iv1)
      acd25(21)=k2(iv2)
      acd25(22)=abb25(19)
      acd25(23)=qshift(iv2)
      acd25(24)=spvak2l3(iv2)
      acd25(25)=abb25(46)
      acd25(26)=k1(iv2)
      acd25(27)=k2(iv1)
      acd25(28)=qshift(iv1)
      acd25(29)=spvak2l3(iv1)
      acd25(30)=spvak2k1(iv2)
      acd25(31)=abb25(33)
      acd25(32)=spval3k1(iv2)
      acd25(33)=abb25(22)
      acd25(34)=spval4k1(iv2)
      acd25(35)=abb25(26)
      acd25(36)=spvak2k1(iv1)
      acd25(37)=spval3k1(iv1)
      acd25(38)=spval4k1(iv1)
      acd25(39)=spvak2l4(iv2)
      acd25(40)=spvak5k1(iv2)
      acd25(41)=spvak2l4(iv1)
      acd25(42)=spvak5k1(iv1)
      acd25(43)=abb25(25)
      acd25(44)=abb25(21)
      acd25(45)=abb25(31)
      acd25(46)=abb25(15)
      acd25(47)=abb25(13)
      acd25(48)=abb25(23)
      acd25(49)=abb25(45)
      acd25(50)=abb25(34)
      acd25(51)=spvak2k5(iv2)
      acd25(52)=abb25(37)
      acd25(53)=spvak2k5(iv1)
      acd25(54)=-acd25(16)*acd25(34)
      acd25(55)=-acd25(12)*acd25(39)
      acd25(56)=-acd25(40)*acd25(18)
      acd25(57)=-acd25(24)*acd25(10)
      acd25(58)=-acd25(32)*acd25(14)
      acd25(59)=-acd25(21)*acd25(5)
      acd25(60)=acd25(3)*acd25(26)
      acd25(61)=-acd25(30)*acd25(8)
      acd25(54)=acd25(61)+acd25(60)+acd25(59)+acd25(58)+acd25(57)+acd25(56)+acd&
      &25(54)+acd25(55)
      acd25(54)=acd25(28)*acd25(54)
      acd25(55)=4.0_ki*acd25(28)+acd25(20)
      acd25(55)=acd25(3)*acd25(55)
      acd25(56)=-acd25(16)*acd25(38)
      acd25(57)=-acd25(12)*acd25(41)
      acd25(58)=-acd25(42)*acd25(18)
      acd25(59)=-acd25(29)*acd25(10)
      acd25(60)=-acd25(37)*acd25(14)
      acd25(61)=-acd25(27)*acd25(5)
      acd25(62)=-acd25(36)*acd25(8)
      acd25(55)=acd25(62)+acd25(61)+acd25(60)+acd25(59)+acd25(58)+acd25(56)+acd&
      &25(57)+acd25(55)
      acd25(55)=acd25(23)*acd25(55)
      acd25(56)=-acd25(18)*acd25(17)
      acd25(57)=-acd25(16)*acd25(15)
      acd25(58)=-acd25(14)*acd25(13)
      acd25(59)=-acd25(12)*acd25(11)
      acd25(60)=-acd25(10)*acd25(9)
      acd25(61)=-acd25(8)*acd25(7)
      acd25(62)=-acd25(5)*acd25(4)
      acd25(63)=2.0_ki*acd25(6)+acd25(2)
      acd25(63)=acd25(3)*acd25(63)
      acd25(56)=acd25(63)+acd25(62)+acd25(61)+acd25(60)+acd25(59)+acd25(58)+acd&
      &25(57)+acd25(19)+acd25(56)
      acd25(56)=acd25(1)*acd25(56)
      acd25(54)=acd25(56)+acd25(54)+acd25(55)
      acd25(55)=acd25(41)*acd25(45)
      acd25(56)=acd25(42)*acd25(47)
      acd25(57)=acd25(29)*acd25(44)
      acd25(58)=acd25(37)*acd25(46)
      acd25(59)=acd25(27)*acd25(31)
      acd25(60)=acd25(36)*acd25(43)
      acd25(55)=2.0_ki*acd25(60)+acd25(59)+acd25(58)+acd25(57)+acd25(55)+acd25(&
      &56)
      acd25(55)=acd25(30)*acd25(55)
      acd25(56)=acd25(39)*acd25(45)
      acd25(57)=acd25(40)*acd25(47)
      acd25(58)=acd25(24)*acd25(44)
      acd25(59)=acd25(32)*acd25(46)
      acd25(60)=acd25(21)*acd25(31)
      acd25(56)=acd25(60)+acd25(59)+acd25(58)+acd25(56)+acd25(57)
      acd25(56)=acd25(36)*acd25(56)
      acd25(57)=acd25(34)*acd25(35)
      acd25(58)=acd25(26)*acd25(22)
      acd25(59)=acd25(32)*acd25(33)
      acd25(57)=acd25(59)+acd25(57)+acd25(58)
      acd25(57)=acd25(27)*acd25(57)
      acd25(58)=acd25(38)*acd25(35)
      acd25(59)=acd25(20)*acd25(22)
      acd25(60)=acd25(37)*acd25(33)
      acd25(58)=acd25(60)+acd25(58)+acd25(59)
      acd25(58)=acd25(21)*acd25(58)
      acd25(59)=acd25(42)*acd25(51)
      acd25(60)=acd25(40)*acd25(53)
      acd25(59)=acd25(59)+acd25(60)
      acd25(59)=acd25(52)*acd25(59)
      acd25(60)=acd25(34)*acd25(48)
      acd25(61)=acd25(26)*acd25(25)
      acd25(60)=acd25(60)+acd25(61)
      acd25(60)=acd25(29)*acd25(60)
      acd25(61)=acd25(38)*acd25(48)
      acd25(62)=acd25(20)*acd25(25)
      acd25(61)=acd25(61)+acd25(62)
      acd25(61)=acd25(24)*acd25(61)
      acd25(62)=acd25(39)*acd25(49)
      acd25(63)=acd25(40)*acd25(50)
      acd25(62)=acd25(62)+acd25(63)
      acd25(62)=acd25(37)*acd25(62)
      acd25(63)=acd25(41)*acd25(49)
      acd25(64)=acd25(42)*acd25(50)
      acd25(63)=acd25(63)+acd25(64)
      acd25(63)=acd25(32)*acd25(63)
      brack=2.0_ki*acd25(54)+acd25(55)+acd25(56)+acd25(57)+acd25(58)+acd25(59)+&
      &acd25(60)+acd25(61)+acd25(62)+acd25(63)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=k1(iv3)
      acd25(3)=abb25(47)
      acd25(4)=k2(iv3)
      acd25(5)=abb25(43)
      acd25(6)=qshift(iv3)
      acd25(7)=spvak2k1(iv3)
      acd25(8)=abb25(10)
      acd25(9)=spvak2l3(iv3)
      acd25(10)=abb25(18)
      acd25(11)=spvak2l4(iv3)
      acd25(12)=abb25(27)
      acd25(13)=spval3k1(iv3)
      acd25(14)=abb25(17)
      acd25(15)=spval4k1(iv3)
      acd25(16)=abb25(52)
      acd25(17)=spvak5k1(iv3)
      acd25(18)=abb25(14)
      acd25(19)=d(iv1,iv3)
      acd25(20)=k1(iv2)
      acd25(21)=k2(iv2)
      acd25(22)=qshift(iv2)
      acd25(23)=spvak2k1(iv2)
      acd25(24)=spvak2l3(iv2)
      acd25(25)=spvak2l4(iv2)
      acd25(26)=spval3k1(iv2)
      acd25(27)=spval4k1(iv2)
      acd25(28)=spvak5k1(iv2)
      acd25(29)=d(iv2,iv3)
      acd25(30)=k1(iv1)
      acd25(31)=k2(iv1)
      acd25(32)=qshift(iv1)
      acd25(33)=spvak2k1(iv1)
      acd25(34)=spvak2l3(iv1)
      acd25(35)=spvak2l4(iv1)
      acd25(36)=spval3k1(iv1)
      acd25(37)=spval4k1(iv1)
      acd25(38)=spvak5k1(iv1)
      acd25(39)=-acd25(18)*acd25(38)
      acd25(40)=-acd25(16)*acd25(37)
      acd25(41)=-acd25(14)*acd25(36)
      acd25(42)=-acd25(12)*acd25(35)
      acd25(43)=-acd25(10)*acd25(34)
      acd25(44)=-acd25(8)*acd25(33)
      acd25(45)=-acd25(5)*acd25(31)
      acd25(46)=4.0_ki*acd25(32)+acd25(30)
      acd25(46)=acd25(3)*acd25(46)
      acd25(39)=acd25(46)+acd25(45)+acd25(44)+acd25(43)+acd25(42)+acd25(41)+acd&
      &25(39)+acd25(40)
      acd25(39)=acd25(29)*acd25(39)
      acd25(40)=-acd25(18)*acd25(28)
      acd25(41)=-acd25(16)*acd25(27)
      acd25(42)=-acd25(14)*acd25(26)
      acd25(43)=-acd25(12)*acd25(25)
      acd25(44)=-acd25(10)*acd25(24)
      acd25(45)=-acd25(8)*acd25(23)
      acd25(46)=-acd25(5)*acd25(21)
      acd25(47)=4.0_ki*acd25(22)+acd25(20)
      acd25(47)=acd25(3)*acd25(47)
      acd25(40)=acd25(47)+acd25(46)+acd25(45)+acd25(44)+acd25(43)+acd25(42)+acd&
      &25(40)+acd25(41)
      acd25(40)=acd25(19)*acd25(40)
      acd25(41)=-acd25(18)*acd25(17)
      acd25(42)=-acd25(16)*acd25(15)
      acd25(43)=-acd25(14)*acd25(13)
      acd25(44)=-acd25(12)*acd25(11)
      acd25(45)=-acd25(10)*acd25(9)
      acd25(46)=-acd25(8)*acd25(7)
      acd25(47)=-acd25(5)*acd25(4)
      acd25(48)=4.0_ki*acd25(6)+acd25(2)
      acd25(48)=acd25(3)*acd25(48)
      acd25(41)=acd25(48)+acd25(47)+acd25(46)+acd25(45)+acd25(44)+acd25(43)+acd&
      &25(41)+acd25(42)
      acd25(41)=acd25(1)*acd25(41)
      acd25(39)=acd25(41)+acd25(39)+acd25(40)
      brack=2.0_ki*acd25(39)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd25h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd25
      complex(ki) :: brack
      acd25(1)=d(iv1,iv2)
      acd25(2)=d(iv3,iv4)
      acd25(3)=abb25(47)
      acd25(4)=d(iv1,iv3)
      acd25(5)=d(iv2,iv4)
      acd25(6)=d(iv1,iv4)
      acd25(7)=d(iv2,iv3)
      acd25(8)=acd25(2)*acd25(1)
      acd25(9)=acd25(5)*acd25(4)
      acd25(10)=acd25(7)*acd25(6)
      acd25(8)=acd25(10)+acd25(8)+acd25(9)
      brack=8.0_ki*acd25(8)*acd25(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd25h3
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
end module     p0_gg_hhg_d25h3l1d
