module     pb_gg_hh_d8h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity0d8h0l1d.f90
   ! generator: buildfortran_d.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d8
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd8
      complex(ki) :: brack
      acd8(1)=dotproduct(k1,qshift)
      acd8(2)=abb8(26)
      acd8(3)=dotproduct(k2,qshift)
      acd8(4)=abb8(25)
      acd8(5)=dotproduct(qshift,qshift)
      acd8(6)=abb8(11)
      acd8(7)=dotproduct(qshift,spvak1k2)
      acd8(8)=dotproduct(qshift,spvak2k1)
      acd8(9)=abb8(7)
      acd8(10)=abb8(18)
      acd8(11)=dotproduct(qshift,spvak2l4)
      acd8(12)=abb8(17)
      acd8(13)=dotproduct(qshift,spval4k1)
      acd8(14)=abb8(30)
      acd8(15)=abb8(23)
      acd8(16)=abb8(10)
      acd8(17)=abb8(13)
      acd8(18)=abb8(21)
      acd8(19)=dotproduct(l4,qshift)
      acd8(20)=abb8(27)
      acd8(21)=abb8(20)
      acd8(22)=abb8(5)
      acd8(23)=abb8(32)
      acd8(24)=abb8(28)
      acd8(25)=abb8(19)
      acd8(26)=abb8(12)
      acd8(27)=abb8(6)
      acd8(28)=abb8(22)
      acd8(29)=abb8(14)
      acd8(30)=abb8(8)
      acd8(31)=abb8(33)
      acd8(32)=abb8(29)
      acd8(33)=abb8(16)
      acd8(34)=-acd8(19)*acd8(9)
      acd8(35)=-acd8(3)*acd8(17)
      acd8(34)=acd8(35)+acd8(26)+acd8(34)
      acd8(34)=acd8(8)*acd8(34)
      acd8(35)=acd8(13)*acd8(28)
      acd8(36)=acd8(11)*acd8(27)
      acd8(37)=-acd8(3)*acd8(10)
      acd8(38)=acd8(8)*acd8(9)
      acd8(38)=-acd8(10)+acd8(38)
      acd8(38)=acd8(1)*acd8(38)
      acd8(39)=acd8(8)*acd8(22)
      acd8(39)=acd8(10)+acd8(39)
      acd8(39)=acd8(5)*acd8(39)
      acd8(34)=acd8(39)+acd8(38)+acd8(34)+acd8(37)+acd8(36)-acd8(29)+acd8(35)
      acd8(34)=acd8(7)*acd8(34)
      acd8(35)=acd8(5)-acd8(19)
      acd8(35)=acd8(20)*acd8(35)
      acd8(36)=acd8(13)*acd8(24)
      acd8(37)=-acd8(11)*acd8(23)
      acd8(38)=-acd8(3)*acd8(16)
      acd8(39)=-acd8(1)*acd8(6)
      acd8(35)=acd8(39)+acd8(38)+acd8(37)+acd8(36)+acd8(25)+acd8(35)
      acd8(35)=acd8(5)*acd8(35)
      acd8(36)=acd8(13)*acd8(14)
      acd8(37)=acd8(11)*acd8(12)
      acd8(38)=acd8(3)*acd8(4)
      acd8(39)=acd8(1)*acd8(2)
      acd8(36)=acd8(39)+acd8(38)+acd8(37)-acd8(15)+acd8(36)
      acd8(36)=acd8(1)*acd8(36)
      acd8(37)=-acd8(19)*acd8(21)
      acd8(38)=-acd8(13)*acd8(32)
      acd8(39)=-acd8(11)*acd8(31)
      acd8(40)=-acd8(3)*acd8(18)
      acd8(41)=-acd8(8)*acd8(30)
      brack=acd8(33)+acd8(34)+acd8(35)+acd8(36)+acd8(37)+acd8(38)+acd8(39)+acd8&
      &(40)+acd8(41)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd8
      complex(ki) :: brack
      acd8(1)=k1(iv1)
      acd8(2)=dotproduct(k1,qshift)
      acd8(3)=abb8(26)
      acd8(4)=dotproduct(k2,qshift)
      acd8(5)=abb8(25)
      acd8(6)=dotproduct(qshift,qshift)
      acd8(7)=abb8(11)
      acd8(8)=dotproduct(qshift,spvak1k2)
      acd8(9)=dotproduct(qshift,spvak2k1)
      acd8(10)=abb8(7)
      acd8(11)=abb8(18)
      acd8(12)=dotproduct(qshift,spvak2l4)
      acd8(13)=abb8(17)
      acd8(14)=dotproduct(qshift,spval4k1)
      acd8(15)=abb8(30)
      acd8(16)=abb8(23)
      acd8(17)=k2(iv1)
      acd8(18)=abb8(10)
      acd8(19)=abb8(13)
      acd8(20)=abb8(21)
      acd8(21)=l4(iv1)
      acd8(22)=abb8(27)
      acd8(23)=abb8(20)
      acd8(24)=qshift(iv1)
      acd8(25)=dotproduct(l4,qshift)
      acd8(26)=abb8(5)
      acd8(27)=abb8(32)
      acd8(28)=abb8(28)
      acd8(29)=abb8(19)
      acd8(30)=spvak1k2(iv1)
      acd8(31)=abb8(12)
      acd8(32)=abb8(6)
      acd8(33)=abb8(22)
      acd8(34)=abb8(14)
      acd8(35)=spvak2k1(iv1)
      acd8(36)=abb8(8)
      acd8(37)=spvak2l4(iv1)
      acd8(38)=abb8(33)
      acd8(39)=spval4k1(iv1)
      acd8(40)=abb8(29)
      acd8(41)=acd8(22)*acd8(25)
      acd8(42)=-acd8(14)*acd8(28)
      acd8(43)=acd8(12)*acd8(27)
      acd8(44)=acd8(4)*acd8(18)
      acd8(45)=acd8(2)*acd8(7)
      acd8(41)=acd8(45)+acd8(44)+acd8(43)+acd8(42)-acd8(29)+acd8(41)
      acd8(42)=2.0_ki*acd8(24)
      acd8(41)=acd8(41)*acd8(42)
      acd8(43)=-4.0_ki*acd8(24)+acd8(21)
      acd8(43)=acd8(22)*acd8(43)
      acd8(44)=-acd8(39)*acd8(28)
      acd8(45)=acd8(37)*acd8(27)
      acd8(46)=acd8(17)*acd8(18)
      acd8(47)=acd8(1)*acd8(7)
      acd8(43)=acd8(47)+acd8(46)+acd8(45)+acd8(44)+acd8(43)
      acd8(43)=acd8(6)*acd8(43)
      acd8(44)=acd8(4)*acd8(19)
      acd8(45)=acd8(2)*acd8(10)
      acd8(44)=-acd8(45)+acd8(44)-acd8(31)
      acd8(45)=acd8(10)*acd8(25)
      acd8(46)=acd8(45)+acd8(44)
      acd8(46)=acd8(9)*acd8(46)
      acd8(47)=acd8(2)+acd8(4)
      acd8(47)=acd8(11)*acd8(47)
      acd8(48)=-acd8(14)*acd8(33)
      acd8(49)=-acd8(12)*acd8(32)
      acd8(50)=-acd8(9)*acd8(26)
      acd8(50)=-acd8(11)+acd8(50)
      acd8(50)=acd8(6)*acd8(50)
      acd8(46)=acd8(50)+acd8(46)+acd8(49)+acd8(34)+acd8(48)+acd8(47)
      acd8(46)=acd8(30)*acd8(46)
      acd8(47)=-acd8(6)*acd8(26)
      acd8(44)=acd8(45)+acd8(47)+acd8(44)
      acd8(44)=acd8(35)*acd8(44)
      acd8(45)=-acd8(1)+acd8(21)
      acd8(45)=acd8(10)*acd8(45)
      acd8(47)=acd8(17)*acd8(19)
      acd8(48)=-acd8(26)*acd8(42)
      acd8(45)=acd8(48)+acd8(47)+acd8(45)
      acd8(45)=acd8(9)*acd8(45)
      acd8(42)=-acd8(42)+acd8(1)+acd8(17)
      acd8(42)=acd8(11)*acd8(42)
      acd8(47)=-acd8(39)*acd8(33)
      acd8(48)=-acd8(37)*acd8(32)
      acd8(42)=acd8(45)+acd8(47)+acd8(48)+acd8(42)+acd8(44)
      acd8(42)=acd8(8)*acd8(42)
      acd8(44)=-acd8(14)*acd8(15)
      acd8(45)=-acd8(12)*acd8(13)
      acd8(47)=-acd8(4)*acd8(5)
      acd8(48)=acd8(2)*acd8(3)
      acd8(44)=-2.0_ki*acd8(48)+acd8(47)+acd8(45)+acd8(16)+acd8(44)
      acd8(44)=acd8(1)*acd8(44)
      acd8(45)=-acd8(39)*acd8(15)
      acd8(47)=-acd8(37)*acd8(13)
      acd8(48)=-acd8(17)*acd8(5)
      acd8(45)=acd8(48)+acd8(45)+acd8(47)
      acd8(45)=acd8(2)*acd8(45)
      acd8(47)=acd8(21)*acd8(23)
      acd8(48)=acd8(39)*acd8(40)
      acd8(49)=acd8(37)*acd8(38)
      acd8(50)=acd8(17)*acd8(20)
      acd8(51)=acd8(35)*acd8(36)
      brack=acd8(41)+acd8(42)+acd8(43)+acd8(44)+acd8(45)+acd8(46)+acd8(47)+acd8&
      &(48)+acd8(49)+acd8(50)+acd8(51)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(55) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=dotproduct(k1,qshift)
      acd8(3)=abb8(11)
      acd8(4)=dotproduct(k2,qshift)
      acd8(5)=abb8(10)
      acd8(6)=dotproduct(l4,qshift)
      acd8(7)=abb8(27)
      acd8(8)=dotproduct(qshift,qshift)
      acd8(9)=dotproduct(qshift,spvak1k2)
      acd8(10)=dotproduct(qshift,spvak2k1)
      acd8(11)=abb8(5)
      acd8(12)=abb8(18)
      acd8(13)=dotproduct(qshift,spvak2l4)
      acd8(14)=abb8(32)
      acd8(15)=dotproduct(qshift,spval4k1)
      acd8(16)=abb8(28)
      acd8(17)=abb8(19)
      acd8(18)=k1(iv1)
      acd8(19)=k1(iv2)
      acd8(20)=abb8(26)
      acd8(21)=k2(iv2)
      acd8(22)=abb8(25)
      acd8(23)=qshift(iv2)
      acd8(24)=spvak1k2(iv2)
      acd8(25)=abb8(7)
      acd8(26)=spvak2k1(iv2)
      acd8(27)=spvak2l4(iv2)
      acd8(28)=abb8(17)
      acd8(29)=spval4k1(iv2)
      acd8(30)=abb8(30)
      acd8(31)=k2(iv1)
      acd8(32)=qshift(iv1)
      acd8(33)=spvak1k2(iv1)
      acd8(34)=spvak2k1(iv1)
      acd8(35)=spvak2l4(iv1)
      acd8(36)=spval4k1(iv1)
      acd8(37)=abb8(13)
      acd8(38)=l4(iv1)
      acd8(39)=l4(iv2)
      acd8(40)=abb8(12)
      acd8(41)=abb8(6)
      acd8(42)=abb8(22)
      acd8(43)=acd8(37)*acd8(4)
      acd8(44)=acd8(11)*acd8(8)
      acd8(43)=-acd8(40)+acd8(43)-acd8(44)
      acd8(44)=-acd8(26)*acd8(43)
      acd8(45)=2.0_ki*acd8(23)
      acd8(46)=acd8(45)*acd8(11)
      acd8(47)=acd8(37)*acd8(21)
      acd8(46)=acd8(46)-acd8(47)
      acd8(47)=acd8(10)*acd8(46)
      acd8(48)=acd8(2)-acd8(6)
      acd8(49)=acd8(26)*acd8(48)
      acd8(50)=acd8(19)-acd8(39)
      acd8(51)=acd8(10)*acd8(50)
      acd8(49)=acd8(49)+acd8(51)
      acd8(49)=acd8(25)*acd8(49)
      acd8(51)=acd8(45)-acd8(19)-acd8(21)
      acd8(51)=acd8(12)*acd8(51)
      acd8(52)=acd8(29)*acd8(42)
      acd8(53)=acd8(27)*acd8(41)
      acd8(44)=acd8(49)+acd8(47)+acd8(44)+acd8(52)+acd8(53)+acd8(51)
      acd8(44)=acd8(33)*acd8(44)
      acd8(43)=-acd8(34)*acd8(43)
      acd8(47)=2.0_ki*acd8(32)
      acd8(49)=acd8(47)*acd8(11)
      acd8(51)=acd8(37)*acd8(31)
      acd8(49)=acd8(49)-acd8(51)
      acd8(51)=acd8(10)*acd8(49)
      acd8(48)=acd8(34)*acd8(48)
      acd8(52)=acd8(18)-acd8(38)
      acd8(53)=acd8(10)*acd8(52)
      acd8(48)=acd8(48)+acd8(53)
      acd8(48)=acd8(25)*acd8(48)
      acd8(53)=acd8(47)-acd8(18)-acd8(31)
      acd8(53)=acd8(12)*acd8(53)
      acd8(54)=acd8(36)*acd8(42)
      acd8(55)=acd8(35)*acd8(41)
      acd8(43)=acd8(48)+acd8(51)+acd8(43)+acd8(54)+acd8(55)+acd8(53)
      acd8(43)=acd8(24)*acd8(43)
      acd8(46)=acd8(34)*acd8(46)
      acd8(48)=acd8(26)*acd8(49)
      acd8(49)=2.0_ki*acd8(1)
      acd8(51)=acd8(10)*acd8(11)
      acd8(51)=acd8(12)+acd8(51)
      acd8(51)=acd8(51)*acd8(49)
      acd8(50)=acd8(34)*acd8(50)
      acd8(52)=acd8(26)*acd8(52)
      acd8(50)=acd8(50)+acd8(52)
      acd8(50)=acd8(25)*acd8(50)
      acd8(46)=acd8(50)+acd8(51)+acd8(48)+acd8(46)
      acd8(46)=acd8(9)*acd8(46)
      acd8(48)=acd8(16)*acd8(29)
      acd8(50)=-acd8(14)*acd8(27)
      acd8(51)=-acd8(21)*acd8(5)
      acd8(52)=-acd8(7)*acd8(39)
      acd8(53)=-acd8(19)*acd8(3)
      acd8(48)=acd8(53)+acd8(52)+acd8(51)+acd8(48)+acd8(50)
      acd8(47)=acd8(48)*acd8(47)
      acd8(48)=4.0_ki*acd8(32)-acd8(38)
      acd8(48)=acd8(7)*acd8(48)
      acd8(50)=acd8(16)*acd8(36)
      acd8(51)=-acd8(14)*acd8(35)
      acd8(52)=-acd8(31)*acd8(5)
      acd8(53)=-acd8(18)*acd8(3)
      acd8(48)=acd8(53)+acd8(52)+acd8(50)+acd8(51)+acd8(48)
      acd8(45)=acd8(48)*acd8(45)
      acd8(48)=acd8(16)*acd8(15)
      acd8(50)=-acd8(14)*acd8(13)
      acd8(51)=-acd8(4)*acd8(5)
      acd8(52)=-acd8(2)*acd8(3)
      acd8(53)=2.0_ki*acd8(8)-acd8(6)
      acd8(53)=acd8(7)*acd8(53)
      acd8(48)=acd8(53)+acd8(52)+acd8(51)+acd8(50)+acd8(17)+acd8(48)
      acd8(48)=acd8(48)*acd8(49)
      acd8(49)=acd8(29)*acd8(30)
      acd8(50)=acd8(27)*acd8(28)
      acd8(51)=acd8(21)*acd8(22)
      acd8(52)=acd8(19)*acd8(20)
      acd8(49)=2.0_ki*acd8(52)+acd8(51)+acd8(49)+acd8(50)
      acd8(49)=acd8(18)*acd8(49)
      acd8(50)=acd8(36)*acd8(30)
      acd8(51)=acd8(35)*acd8(28)
      acd8(52)=acd8(31)*acd8(22)
      acd8(50)=acd8(52)+acd8(50)+acd8(51)
      acd8(50)=acd8(19)*acd8(50)
      brack=acd8(43)+acd8(44)+acd8(45)+acd8(46)+acd8(47)+acd8(48)+acd8(49)+acd8&
      &(50)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=k1(iv3)
      acd8(3)=abb8(11)
      acd8(4)=k2(iv3)
      acd8(5)=abb8(10)
      acd8(6)=l4(iv3)
      acd8(7)=abb8(27)
      acd8(8)=qshift(iv3)
      acd8(9)=spvak1k2(iv3)
      acd8(10)=dotproduct(qshift,spvak2k1)
      acd8(11)=abb8(5)
      acd8(12)=abb8(18)
      acd8(13)=spvak2k1(iv3)
      acd8(14)=dotproduct(qshift,spvak1k2)
      acd8(15)=spvak2l4(iv3)
      acd8(16)=abb8(32)
      acd8(17)=spval4k1(iv3)
      acd8(18)=abb8(28)
      acd8(19)=d(iv1,iv3)
      acd8(20)=k1(iv2)
      acd8(21)=k2(iv2)
      acd8(22)=l4(iv2)
      acd8(23)=qshift(iv2)
      acd8(24)=spvak1k2(iv2)
      acd8(25)=spvak2k1(iv2)
      acd8(26)=spvak2l4(iv2)
      acd8(27)=spval4k1(iv2)
      acd8(28)=d(iv2,iv3)
      acd8(29)=k1(iv1)
      acd8(30)=k2(iv1)
      acd8(31)=l4(iv1)
      acd8(32)=qshift(iv1)
      acd8(33)=spvak1k2(iv1)
      acd8(34)=spvak2k1(iv1)
      acd8(35)=spvak2l4(iv1)
      acd8(36)=spval4k1(iv1)
      acd8(37)=abb8(7)
      acd8(38)=abb8(13)
      acd8(39)=acd8(1)*acd8(9)
      acd8(40)=acd8(19)*acd8(24)
      acd8(41)=acd8(28)*acd8(33)
      acd8(39)=acd8(39)+acd8(40)+acd8(41)
      acd8(40)=-acd8(10)*acd8(11)*acd8(39)
      acd8(39)=acd8(12)*acd8(39)
      acd8(41)=-acd8(13)*acd8(1)
      acd8(42)=-acd8(25)*acd8(19)
      acd8(43)=-acd8(34)*acd8(28)
      acd8(41)=acd8(43)+acd8(41)+acd8(42)
      acd8(41)=acd8(14)*acd8(11)*acd8(41)
      acd8(42)=acd8(25)*acd8(33)
      acd8(43)=acd8(34)*acd8(24)
      acd8(42)=acd8(42)+acd8(43)
      acd8(43)=-acd8(11)*acd8(42)
      acd8(44)=4.0_ki*acd8(7)
      acd8(45)=-acd8(1)*acd8(44)
      acd8(43)=acd8(45)+acd8(43)
      acd8(43)=acd8(8)*acd8(43)
      acd8(45)=acd8(13)*acd8(33)
      acd8(46)=acd8(34)*acd8(9)
      acd8(45)=acd8(45)+acd8(46)
      acd8(46)=-acd8(11)*acd8(45)
      acd8(47)=-acd8(19)*acd8(44)
      acd8(46)=acd8(47)+acd8(46)
      acd8(46)=acd8(23)*acd8(46)
      acd8(47)=acd8(13)*acd8(24)
      acd8(48)=acd8(25)*acd8(9)
      acd8(47)=acd8(47)+acd8(48)
      acd8(48)=-acd8(11)*acd8(47)
      acd8(44)=-acd8(28)*acd8(44)
      acd8(44)=acd8(44)+acd8(48)
      acd8(44)=acd8(32)*acd8(44)
      acd8(39)=acd8(43)+acd8(40)-acd8(39)+acd8(41)+acd8(46)+acd8(44)
      acd8(40)=acd8(3)*acd8(2)
      acd8(41)=acd8(5)*acd8(4)
      acd8(43)=acd8(15)*acd8(16)
      acd8(44)=-acd8(17)*acd8(18)
      acd8(40)=acd8(44)+acd8(43)+acd8(41)+acd8(40)
      acd8(41)=2.0_ki*acd8(1)
      acd8(40)=acd8(41)*acd8(40)
      acd8(43)=acd8(35)*acd8(16)
      acd8(44)=-acd8(36)*acd8(18)
      acd8(43)=acd8(44)+acd8(43)
      acd8(44)=2.0_ki*acd8(28)
      acd8(43)=acd8(44)*acd8(43)
      acd8(46)=acd8(26)*acd8(16)
      acd8(48)=-acd8(27)*acd8(18)
      acd8(46)=acd8(48)+acd8(46)
      acd8(48)=2.0_ki*acd8(19)
      acd8(46)=acd8(48)*acd8(46)
      acd8(49)=acd8(37)*acd8(42)
      acd8(50)=-acd8(2)*acd8(49)
      acd8(42)=acd8(4)*acd8(38)*acd8(42)
      acd8(41)=acd8(7)*acd8(41)
      acd8(41)=acd8(41)+acd8(49)
      acd8(41)=acd8(6)*acd8(41)
      acd8(49)=acd8(37)*acd8(45)
      acd8(51)=acd8(3)*acd8(48)
      acd8(51)=acd8(51)-acd8(49)
      acd8(51)=acd8(20)*acd8(51)
      acd8(45)=acd8(38)*acd8(45)
      acd8(52)=acd8(5)*acd8(48)
      acd8(45)=acd8(45)+acd8(52)
      acd8(45)=acd8(21)*acd8(45)
      acd8(48)=acd8(7)*acd8(48)
      acd8(48)=acd8(48)+acd8(49)
      acd8(48)=acd8(22)*acd8(48)
      acd8(49)=acd8(37)*acd8(47)
      acd8(52)=acd8(3)*acd8(44)
      acd8(52)=acd8(52)-acd8(49)
      acd8(52)=acd8(29)*acd8(52)
      acd8(47)=acd8(38)*acd8(47)
      acd8(53)=acd8(5)*acd8(44)
      acd8(47)=acd8(47)+acd8(53)
      acd8(47)=acd8(30)*acd8(47)
      acd8(44)=acd8(7)*acd8(44)
      acd8(44)=acd8(44)+acd8(49)
      acd8(44)=acd8(31)*acd8(44)
      brack=2.0_ki*acd8(39)+acd8(40)+acd8(41)+acd8(42)+acd8(43)+acd8(44)+acd8(4&
      &5)+acd8(46)+acd8(47)+acd8(48)+acd8(50)+acd8(51)+acd8(52)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=d(iv3,iv4)
      acd8(3)=abb8(27)
      acd8(4)=spvak1k2(iv3)
      acd8(5)=spvak2k1(iv4)
      acd8(6)=abb8(5)
      acd8(7)=spvak1k2(iv4)
      acd8(8)=spvak2k1(iv3)
      acd8(9)=d(iv1,iv3)
      acd8(10)=d(iv2,iv4)
      acd8(11)=spvak1k2(iv2)
      acd8(12)=spvak2k1(iv2)
      acd8(13)=d(iv1,iv4)
      acd8(14)=d(iv2,iv3)
      acd8(15)=spvak1k2(iv1)
      acd8(16)=spvak2k1(iv1)
      acd8(17)=acd8(11)*acd8(13)
      acd8(18)=acd8(10)*acd8(15)
      acd8(17)=acd8(17)+acd8(18)
      acd8(17)=acd8(8)*acd8(17)
      acd8(18)=acd8(14)*acd8(16)
      acd8(19)=acd8(9)*acd8(12)
      acd8(18)=acd8(18)+acd8(19)
      acd8(18)=acd8(7)*acd8(18)
      acd8(19)=acd8(14)*acd8(15)
      acd8(20)=acd8(9)*acd8(11)
      acd8(19)=acd8(19)+acd8(20)
      acd8(19)=acd8(5)*acd8(19)
      acd8(20)=acd8(12)*acd8(13)
      acd8(21)=acd8(10)*acd8(16)
      acd8(20)=acd8(20)+acd8(21)
      acd8(20)=acd8(4)*acd8(20)
      acd8(21)=acd8(12)*acd8(15)
      acd8(22)=acd8(11)*acd8(16)
      acd8(21)=acd8(21)+acd8(22)
      acd8(21)=acd8(2)*acd8(21)
      acd8(22)=acd8(7)*acd8(8)
      acd8(23)=acd8(4)*acd8(5)
      acd8(22)=acd8(22)+acd8(23)
      acd8(22)=acd8(1)*acd8(22)
      acd8(17)=acd8(22)+acd8(21)+acd8(20)+acd8(19)+acd8(17)+acd8(18)
      acd8(17)=acd8(6)*acd8(17)
      acd8(18)=acd8(13)*acd8(14)
      acd8(19)=acd8(9)*acd8(10)
      acd8(20)=acd8(1)*acd8(2)
      acd8(18)=acd8(20)+acd8(18)+acd8(19)
      acd8(18)=acd8(3)*acd8(18)
      acd8(17)=4.0_ki*acd8(18)+acd8(17)
      brack=2.0_ki*acd8(17)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd8h0
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
!---#[ subroutine reconstruct_d8:
   subroutine     reconstruct_d8(coeffs)
      use pb_gg_hh_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_8:
      coeffs%coeffs_8%c0 = derivative(czip)
      coeffs%coeffs_8%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_8%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_8%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_8%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_8%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_8%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_8%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_8%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_8%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_8%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_8%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_8%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_8%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_8%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_8%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_8%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_8%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_8%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_8%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_8%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_8%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_8%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_8%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_8%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_8%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_8%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_8%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_8%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_8%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_8%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_8%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_8%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_8%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_8%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_8%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_8%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_8%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_8%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_8%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_8%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_8%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_8%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_8%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_8%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_8%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_8%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_8%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_8%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_8%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_8%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_8%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_8%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_8%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_8%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_8%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_8%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_8%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_8%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_8%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_8%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_8%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_8%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_8%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_8%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_8%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_8%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_8%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_8%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_8%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_8:
   end subroutine reconstruct_d8
!---#] subroutine reconstruct_d8:
end module     pb_gg_hh_d8h0l1d
