module     p1_dbarc_epnebbbar_d3h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity0d3h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d3
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd3
      complex(ki) :: brack
      acd3(1)=dotproduct(k1,qshift)
      acd3(2)=abb3(10)
      acd3(3)=dotproduct(k2,qshift)
      acd3(4)=dotproduct(qshift,spvak1k2)
      acd3(5)=abb3(32)
      acd3(6)=dotproduct(qshift,spvak4k2)
      acd3(7)=abb3(15)
      acd3(8)=dotproduct(k3,qshift)
      acd3(9)=dotproduct(qshift,spval5k2)
      acd3(10)=abb3(19)
      acd3(11)=dotproduct(qshift,spval6k2)
      acd3(12)=abb3(21)
      acd3(13)=dotproduct(k4,qshift)
      acd3(14)=dotproduct(qshift,qshift)
      acd3(15)=abb3(31)
      acd3(16)=abb3(16)
      acd3(17)=abb3(18)
      acd3(18)=dotproduct(qshift,spvak4k3)
      acd3(19)=abb3(7)
      acd3(20)=abb3(33)
      acd3(21)=abb3(11)
      acd3(22)=abb3(34)
      acd3(23)=abb3(6)
      acd3(24)=abb3(27)
      acd3(25)=abb3(26)
      acd3(26)=abb3(29)
      acd3(27)=abb3(25)
      acd3(28)=abb3(24)
      acd3(29)=dotproduct(qshift,spvak1k3)
      acd3(30)=abb3(12)
      acd3(31)=abb3(9)
      acd3(32)=abb3(22)
      acd3(33)=abb3(30)
      acd3(34)=abb3(8)
      acd3(35)=dotproduct(qshift,spvak3k2)
      acd3(36)=abb3(17)
      acd3(37)=abb3(13)
      acd3(38)=acd3(8)+acd3(13)
      acd3(39)=acd3(38)-acd3(3)
      acd3(40)=-acd3(5)*acd3(39)
      acd3(41)=-acd3(14)*acd3(15)
      acd3(42)=acd3(18)*acd3(23)
      acd3(43)=-acd3(18)*acd3(21)
      acd3(43)=acd3(22)+acd3(43)
      acd3(43)=acd3(11)*acd3(43)
      acd3(44)=-acd3(18)*acd3(19)
      acd3(44)=acd3(20)+acd3(44)
      acd3(44)=acd3(9)*acd3(44)
      acd3(40)=acd3(44)+acd3(43)+acd3(42)+acd3(41)+acd3(40)
      acd3(40)=acd3(4)*acd3(40)
      acd3(38)=acd3(38)-acd3(14)
      acd3(41)=-acd3(12)*acd3(38)
      acd3(42)=acd3(29)*acd3(33)
      acd3(43)=acd3(18)*acd3(32)
      acd3(44)=acd3(6)*acd3(25)
      acd3(41)=acd3(44)+acd3(43)-acd3(34)+acd3(42)+acd3(41)
      acd3(41)=acd3(11)*acd3(41)
      acd3(38)=-acd3(10)*acd3(38)
      acd3(42)=acd3(29)*acd3(30)
      acd3(43)=acd3(18)*acd3(28)
      acd3(44)=acd3(6)*acd3(24)
      acd3(38)=acd3(44)+acd3(43)-acd3(31)+acd3(42)+acd3(38)
      acd3(38)=acd3(9)*acd3(38)
      acd3(39)=acd3(7)*acd3(39)
      acd3(42)=-acd3(14)*acd3(16)
      acd3(43)=acd3(18)*acd3(26)
      acd3(39)=acd3(43)+acd3(42)-acd3(27)+acd3(39)
      acd3(39)=acd3(6)*acd3(39)
      acd3(42)=-acd3(18)*acd3(16)
      acd3(42)=acd3(42)-acd3(36)
      acd3(42)=acd3(35)*acd3(42)
      acd3(43)=-acd3(1)*acd3(2)
      acd3(44)=acd3(14)*acd3(17)
      brack=acd3(37)+acd3(38)+acd3(39)+acd3(40)+acd3(41)+acd3(42)+acd3(43)+acd3&
      &(44)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd3
      complex(ki) :: brack
      acd3(1)=k1(iv1)
      acd3(2)=abb3(10)
      acd3(3)=k2(iv1)
      acd3(4)=dotproduct(qshift,spvak1k2)
      acd3(5)=abb3(32)
      acd3(6)=dotproduct(qshift,spvak4k2)
      acd3(7)=abb3(15)
      acd3(8)=k3(iv1)
      acd3(9)=dotproduct(qshift,spval5k2)
      acd3(10)=abb3(19)
      acd3(11)=dotproduct(qshift,spval6k2)
      acd3(12)=abb3(21)
      acd3(13)=k4(iv1)
      acd3(14)=qshift(iv1)
      acd3(15)=abb3(31)
      acd3(16)=abb3(16)
      acd3(17)=abb3(18)
      acd3(18)=spvak1k2(iv1)
      acd3(19)=dotproduct(k2,qshift)
      acd3(20)=dotproduct(k3,qshift)
      acd3(21)=dotproduct(k4,qshift)
      acd3(22)=dotproduct(qshift,qshift)
      acd3(23)=dotproduct(qshift,spvak4k3)
      acd3(24)=abb3(7)
      acd3(25)=abb3(33)
      acd3(26)=abb3(11)
      acd3(27)=abb3(34)
      acd3(28)=abb3(6)
      acd3(29)=spvak4k2(iv1)
      acd3(30)=abb3(27)
      acd3(31)=abb3(26)
      acd3(32)=abb3(29)
      acd3(33)=abb3(25)
      acd3(34)=spval5k2(iv1)
      acd3(35)=abb3(24)
      acd3(36)=dotproduct(qshift,spvak1k3)
      acd3(37)=abb3(12)
      acd3(38)=abb3(9)
      acd3(39)=spval6k2(iv1)
      acd3(40)=abb3(22)
      acd3(41)=abb3(30)
      acd3(42)=abb3(8)
      acd3(43)=spvak4k3(iv1)
      acd3(44)=dotproduct(qshift,spvak3k2)
      acd3(45)=spvak1k3(iv1)
      acd3(46)=spvak3k2(iv1)
      acd3(47)=abb3(17)
      acd3(48)=-acd3(11)*acd3(26)
      acd3(49)=-acd3(9)*acd3(24)
      acd3(48)=acd3(49)+acd3(48)+acd3(28)
      acd3(48)=acd3(43)*acd3(48)
      acd3(49)=-acd3(39)*acd3(26)
      acd3(50)=-acd3(34)*acd3(24)
      acd3(49)=acd3(49)+acd3(50)
      acd3(49)=acd3(23)*acd3(49)
      acd3(50)=2.0_ki*acd3(14)
      acd3(51)=-acd3(15)*acd3(50)
      acd3(52)=acd3(8)+acd3(13)
      acd3(53)=acd3(52)-acd3(3)
      acd3(54)=-acd3(5)*acd3(53)
      acd3(55)=acd3(39)*acd3(27)
      acd3(56)=acd3(34)*acd3(25)
      acd3(48)=acd3(49)+acd3(56)+acd3(55)+acd3(51)+acd3(54)+acd3(48)
      acd3(48)=acd3(4)*acd3(48)
      acd3(49)=acd3(52)-acd3(50)
      acd3(51)=-acd3(12)*acd3(49)
      acd3(52)=acd3(41)*acd3(45)
      acd3(54)=acd3(43)*acd3(40)
      acd3(55)=acd3(29)*acd3(31)
      acd3(56)=-acd3(23)*acd3(26)
      acd3(56)=acd3(27)+acd3(56)
      acd3(56)=acd3(18)*acd3(56)
      acd3(51)=acd3(56)+acd3(55)+acd3(54)+acd3(52)+acd3(51)
      acd3(51)=acd3(11)*acd3(51)
      acd3(49)=-acd3(10)*acd3(49)
      acd3(52)=acd3(37)*acd3(45)
      acd3(54)=acd3(43)*acd3(35)
      acd3(55)=acd3(29)*acd3(30)
      acd3(56)=-acd3(23)*acd3(24)
      acd3(56)=acd3(25)+acd3(56)
      acd3(56)=acd3(18)*acd3(56)
      acd3(49)=acd3(56)+acd3(55)+acd3(54)+acd3(52)+acd3(49)
      acd3(49)=acd3(9)*acd3(49)
      acd3(52)=-acd3(16)*acd3(46)
      acd3(54)=acd3(29)*acd3(32)
      acd3(55)=acd3(39)*acd3(40)
      acd3(56)=acd3(34)*acd3(35)
      acd3(52)=acd3(56)+acd3(55)+acd3(52)+acd3(54)
      acd3(52)=acd3(23)*acd3(52)
      acd3(54)=-acd3(16)*acd3(50)
      acd3(53)=acd3(7)*acd3(53)
      acd3(55)=acd3(43)*acd3(32)
      acd3(53)=acd3(55)+acd3(54)+acd3(53)
      acd3(53)=acd3(6)*acd3(53)
      acd3(54)=acd3(36)*acd3(41)
      acd3(55)=acd3(20)+acd3(21)
      acd3(56)=acd3(55)-acd3(22)
      acd3(57)=-acd3(12)*acd3(56)
      acd3(58)=acd3(6)*acd3(31)
      acd3(54)=acd3(58)+acd3(57)-acd3(42)+acd3(54)
      acd3(54)=acd3(39)*acd3(54)
      acd3(57)=acd3(36)*acd3(37)
      acd3(56)=-acd3(10)*acd3(56)
      acd3(58)=acd3(6)*acd3(30)
      acd3(56)=acd3(58)+acd3(56)-acd3(38)+acd3(57)
      acd3(56)=acd3(34)*acd3(56)
      acd3(57)=-acd3(22)*acd3(15)
      acd3(55)=acd3(55)-acd3(19)
      acd3(58)=-acd3(5)*acd3(55)
      acd3(59)=acd3(23)*acd3(28)
      acd3(57)=acd3(59)+acd3(57)+acd3(58)
      acd3(57)=acd3(18)*acd3(57)
      acd3(58)=-acd3(16)*acd3(22)
      acd3(55)=acd3(7)*acd3(55)
      acd3(55)=acd3(55)-acd3(33)+acd3(58)
      acd3(55)=acd3(29)*acd3(55)
      acd3(58)=-acd3(1)*acd3(2)
      acd3(59)=-acd3(46)*acd3(47)
      acd3(50)=acd3(17)*acd3(50)
      acd3(60)=-acd3(43)*acd3(16)*acd3(44)
      brack=acd3(48)+acd3(49)+acd3(50)+acd3(51)+acd3(52)+acd3(53)+acd3(54)+acd3&
      &(55)+acd3(56)+acd3(57)+acd3(58)+acd3(59)+acd3(60)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd3
      complex(ki) :: brack
      acd3(1)=d(iv1,iv2)
      acd3(2)=dotproduct(qshift,spvak1k2)
      acd3(3)=abb3(31)
      acd3(4)=dotproduct(qshift,spvak4k2)
      acd3(5)=abb3(16)
      acd3(6)=dotproduct(qshift,spval5k2)
      acd3(7)=abb3(19)
      acd3(8)=dotproduct(qshift,spval6k2)
      acd3(9)=abb3(21)
      acd3(10)=abb3(18)
      acd3(11)=k2(iv1)
      acd3(12)=spvak1k2(iv2)
      acd3(13)=abb3(32)
      acd3(14)=spvak4k2(iv2)
      acd3(15)=abb3(15)
      acd3(16)=k2(iv2)
      acd3(17)=spvak1k2(iv1)
      acd3(18)=spvak4k2(iv1)
      acd3(19)=k3(iv1)
      acd3(20)=spval5k2(iv2)
      acd3(21)=spval6k2(iv2)
      acd3(22)=k3(iv2)
      acd3(23)=spval5k2(iv1)
      acd3(24)=spval6k2(iv1)
      acd3(25)=k4(iv1)
      acd3(26)=k4(iv2)
      acd3(27)=qshift(iv1)
      acd3(28)=qshift(iv2)
      acd3(29)=dotproduct(qshift,spvak4k3)
      acd3(30)=abb3(7)
      acd3(31)=abb3(33)
      acd3(32)=abb3(11)
      acd3(33)=abb3(34)
      acd3(34)=spvak4k3(iv2)
      acd3(35)=abb3(6)
      acd3(36)=spvak4k3(iv1)
      acd3(37)=abb3(27)
      acd3(38)=abb3(26)
      acd3(39)=abb3(29)
      acd3(40)=abb3(24)
      acd3(41)=spvak1k3(iv2)
      acd3(42)=abb3(12)
      acd3(43)=spvak1k3(iv1)
      acd3(44)=abb3(22)
      acd3(45)=abb3(30)
      acd3(46)=spvak3k2(iv2)
      acd3(47)=spvak3k2(iv1)
      acd3(48)=acd3(32)*acd3(8)
      acd3(49)=acd3(30)*acd3(6)
      acd3(48)=acd3(48)+acd3(49)-acd3(35)
      acd3(49)=-acd3(34)*acd3(48)
      acd3(50)=2.0_ki*acd3(28)
      acd3(51)=-acd3(3)*acd3(50)
      acd3(52)=acd3(22)+acd3(26)
      acd3(53)=acd3(52)-acd3(16)
      acd3(54)=-acd3(13)*acd3(53)
      acd3(55)=acd3(32)*acd3(29)
      acd3(55)=acd3(55)-acd3(33)
      acd3(56)=-acd3(21)*acd3(55)
      acd3(57)=acd3(30)*acd3(29)
      acd3(57)=acd3(57)-acd3(31)
      acd3(58)=-acd3(20)*acd3(57)
      acd3(49)=acd3(58)+acd3(56)+acd3(49)+acd3(51)+acd3(54)
      acd3(49)=acd3(17)*acd3(49)
      acd3(48)=-acd3(36)*acd3(48)
      acd3(51)=2.0_ki*acd3(27)
      acd3(54)=-acd3(3)*acd3(51)
      acd3(56)=acd3(19)+acd3(25)
      acd3(58)=acd3(56)-acd3(11)
      acd3(59)=-acd3(13)*acd3(58)
      acd3(55)=-acd3(24)*acd3(55)
      acd3(57)=-acd3(23)*acd3(57)
      acd3(48)=acd3(57)+acd3(55)+acd3(48)+acd3(54)+acd3(59)
      acd3(48)=acd3(12)*acd3(48)
      acd3(54)=-acd3(5)*acd3(4)
      acd3(55)=-acd3(2)*acd3(3)
      acd3(57)=acd3(9)*acd3(8)
      acd3(59)=acd3(7)*acd3(6)
      acd3(54)=acd3(59)+acd3(57)+acd3(55)+acd3(10)+acd3(54)
      acd3(55)=2.0_ki*acd3(1)
      acd3(54)=acd3(55)*acd3(54)
      acd3(52)=acd3(52)-acd3(50)
      acd3(55)=-acd3(9)*acd3(52)
      acd3(57)=acd3(41)*acd3(45)
      acd3(59)=acd3(14)*acd3(38)
      acd3(60)=acd3(32)*acd3(2)
      acd3(60)=acd3(60)-acd3(44)
      acd3(61)=-acd3(34)*acd3(60)
      acd3(55)=acd3(61)+acd3(55)+acd3(57)+acd3(59)
      acd3(55)=acd3(24)*acd3(55)
      acd3(52)=-acd3(7)*acd3(52)
      acd3(57)=acd3(41)*acd3(42)
      acd3(59)=acd3(14)*acd3(37)
      acd3(61)=acd3(30)*acd3(2)
      acd3(61)=acd3(61)-acd3(40)
      acd3(62)=-acd3(34)*acd3(61)
      acd3(52)=acd3(62)+acd3(52)+acd3(57)+acd3(59)
      acd3(52)=acd3(23)*acd3(52)
      acd3(56)=acd3(56)-acd3(51)
      acd3(57)=-acd3(9)*acd3(56)
      acd3(59)=acd3(43)*acd3(45)
      acd3(62)=acd3(18)*acd3(38)
      acd3(60)=-acd3(36)*acd3(60)
      acd3(57)=acd3(60)+acd3(57)+acd3(59)+acd3(62)
      acd3(57)=acd3(21)*acd3(57)
      acd3(56)=-acd3(7)*acd3(56)
      acd3(59)=acd3(42)*acd3(43)
      acd3(60)=acd3(18)*acd3(37)
      acd3(61)=-acd3(36)*acd3(61)
      acd3(56)=acd3(61)+acd3(56)+acd3(59)+acd3(60)
      acd3(56)=acd3(20)*acd3(56)
      acd3(50)=-acd3(5)*acd3(50)
      acd3(53)=acd3(15)*acd3(53)
      acd3(50)=acd3(50)+acd3(53)
      acd3(50)=acd3(18)*acd3(50)
      acd3(51)=-acd3(5)*acd3(51)
      acd3(53)=acd3(15)*acd3(58)
      acd3(51)=acd3(51)+acd3(53)
      acd3(51)=acd3(14)*acd3(51)
      acd3(53)=-acd3(5)*acd3(46)
      acd3(58)=acd3(14)*acd3(39)
      acd3(53)=acd3(53)+acd3(58)
      acd3(53)=acd3(36)*acd3(53)
      acd3(58)=-acd3(5)*acd3(47)
      acd3(59)=acd3(18)*acd3(39)
      acd3(58)=acd3(58)+acd3(59)
      acd3(58)=acd3(34)*acd3(58)
      brack=acd3(48)+acd3(49)+acd3(50)+acd3(51)+acd3(52)+acd3(53)+acd3(54)+acd3&
      &(55)+acd3(56)+acd3(57)+acd3(58)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd3h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(34) :: acd3
      complex(ki) :: brack
      acd3(1)=d(iv1,iv2)
      acd3(2)=spvak1k2(iv3)
      acd3(3)=abb3(31)
      acd3(4)=spvak4k2(iv3)
      acd3(5)=abb3(16)
      acd3(6)=spval5k2(iv3)
      acd3(7)=abb3(19)
      acd3(8)=spval6k2(iv3)
      acd3(9)=abb3(21)
      acd3(10)=d(iv1,iv3)
      acd3(11)=spvak1k2(iv2)
      acd3(12)=spvak4k2(iv2)
      acd3(13)=spval5k2(iv2)
      acd3(14)=spval6k2(iv2)
      acd3(15)=d(iv2,iv3)
      acd3(16)=spvak1k2(iv1)
      acd3(17)=spvak4k2(iv1)
      acd3(18)=spval5k2(iv1)
      acd3(19)=spval6k2(iv1)
      acd3(20)=spvak4k3(iv3)
      acd3(21)=abb3(7)
      acd3(22)=spvak4k3(iv2)
      acd3(23)=abb3(11)
      acd3(24)=spvak4k3(iv1)
      acd3(25)=-acd3(4)*acd3(1)
      acd3(26)=-acd3(12)*acd3(10)
      acd3(27)=-acd3(17)*acd3(15)
      acd3(25)=acd3(27)+acd3(26)+acd3(25)
      acd3(26)=2.0_ki*acd3(5)
      acd3(25)=acd3(26)*acd3(25)
      acd3(26)=-acd3(1)*acd3(2)
      acd3(27)=-acd3(10)*acd3(11)
      acd3(28)=-acd3(15)*acd3(16)
      acd3(26)=acd3(28)+acd3(26)+acd3(27)
      acd3(26)=acd3(3)*acd3(26)
      acd3(27)=acd3(22)*acd3(16)
      acd3(28)=acd3(24)*acd3(11)
      acd3(27)=acd3(27)+acd3(28)
      acd3(28)=-acd3(21)*acd3(27)
      acd3(29)=2.0_ki*acd3(7)
      acd3(30)=acd3(1)*acd3(29)
      acd3(28)=acd3(30)+acd3(28)
      acd3(28)=acd3(6)*acd3(28)
      acd3(27)=-acd3(23)*acd3(27)
      acd3(30)=2.0_ki*acd3(9)
      acd3(31)=acd3(1)*acd3(30)
      acd3(27)=acd3(31)+acd3(27)
      acd3(27)=acd3(8)*acd3(27)
      acd3(31)=acd3(20)*acd3(16)
      acd3(32)=acd3(24)*acd3(2)
      acd3(31)=acd3(31)+acd3(32)
      acd3(32)=-acd3(21)*acd3(31)
      acd3(33)=acd3(10)*acd3(29)
      acd3(32)=acd3(33)+acd3(32)
      acd3(32)=acd3(13)*acd3(32)
      acd3(31)=-acd3(23)*acd3(31)
      acd3(33)=acd3(10)*acd3(30)
      acd3(31)=acd3(33)+acd3(31)
      acd3(31)=acd3(14)*acd3(31)
      acd3(33)=acd3(20)*acd3(11)
      acd3(34)=acd3(22)*acd3(2)
      acd3(33)=acd3(33)+acd3(34)
      acd3(34)=-acd3(21)*acd3(33)
      acd3(29)=acd3(15)*acd3(29)
      acd3(29)=acd3(29)+acd3(34)
      acd3(29)=acd3(18)*acd3(29)
      acd3(33)=-acd3(23)*acd3(33)
      acd3(30)=acd3(15)*acd3(30)
      acd3(30)=acd3(30)+acd3(33)
      acd3(30)=acd3(19)*acd3(30)
      brack=acd3(25)+2.0_ki*acd3(26)+acd3(27)+acd3(28)+acd3(29)+acd3(30)+acd3(3&
      &1)+acd3(32)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd3h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k2
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
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d3:
   subroutine     reconstruct_d3(coeffs)
      use p1_dbarc_epnebbbar_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_3:
      coeffs%coeffs_3%c0 = derivative(czip)
      coeffs%coeffs_3%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_3%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_3%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_3%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_3%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_3%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_3%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_3%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_3%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_3%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_3%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_3%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_3%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_3%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_3%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_3%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_3%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_3%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_3%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_3%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_3%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_3%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_3%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_3%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_3%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_3%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_3%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_3%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_3%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_3%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_3%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_3%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_3%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_3%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_3:
   end subroutine reconstruct_d3
!---#] subroutine reconstruct_d3:
end module     p1_dbarc_epnebbbar_d3h0l1d
