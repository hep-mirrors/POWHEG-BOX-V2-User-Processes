module     p5_usbar_epnebbbarg_d72h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d72h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d72
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd72
      complex(ki) :: brack
      acd72(1)=dotproduct(k1,qshift)
      acd72(2)=dotproduct(qshift,spvak2k1)
      acd72(3)=abb72(25)
      acd72(4)=dotproduct(qshift,spvak4k1)
      acd72(5)=abb72(29)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(15)
      acd72(8)=dotproduct(qshift,spvak4l6)
      acd72(9)=abb72(38)
      acd72(10)=abb72(19)
      acd72(11)=dotproduct(l6,qshift)
      acd72(12)=abb72(34)
      acd72(13)=dotproduct(qshift,qshift)
      acd72(14)=abb72(24)
      acd72(15)=abb72(12)
      acd72(16)=abb72(16)
      acd72(17)=abb72(20)
      acd72(18)=abb72(21)
      acd72(19)=dotproduct(qshift,spvak2l5)
      acd72(20)=abb72(22)
      acd72(21)=dotproduct(qshift,spvak2k7)
      acd72(22)=abb72(14)
      acd72(23)=dotproduct(qshift,spvak2e7)
      acd72(24)=abb72(10)
      acd72(25)=abb72(9)
      acd72(26)=dotproduct(qshift,spvak2k3)
      acd72(27)=abb72(28)
      acd72(28)=abb72(8)
      acd72(29)=dotproduct(qshift,spvak2l6)
      acd72(30)=abb72(11)
      acd72(31)=abb72(17)
      acd72(32)=dotproduct(qshift,spvak1l6)
      acd72(33)=abb72(26)
      acd72(34)=abb72(23)
      acd72(35)=abb72(13)
      acd72(36)=dotproduct(qshift,spval6k1)
      acd72(37)=abb72(27)
      acd72(38)=abb72(18)
      acd72(39)=-acd72(23)*acd72(24)
      acd72(40)=-acd72(21)*acd72(22)
      acd72(41)=-acd72(19)*acd72(20)
      acd72(39)=acd72(41)+acd72(40)+acd72(25)+acd72(39)
      acd72(39)=acd72(6)*acd72(39)
      acd72(40)=acd72(26)*acd72(27)
      acd72(41)=-acd72(13)*acd72(14)
      acd72(42)=acd72(1)*acd72(3)
      acd72(43)=acd72(2)*acd72(18)
      acd72(39)=acd72(43)+acd72(39)+acd72(42)+acd72(41)-acd72(28)+acd72(40)
      acd72(39)=acd72(2)*acd72(39)
      acd72(40)=-acd72(8)*acd72(16)
      acd72(41)=-acd72(4)*acd72(15)
      acd72(40)=acd72(41)+acd72(17)+acd72(40)
      acd72(40)=acd72(13)*acd72(40)
      acd72(41)=acd72(8)*acd72(9)
      acd72(42)=acd72(4)*acd72(5)
      acd72(41)=acd72(42)-acd72(10)+acd72(41)
      acd72(41)=acd72(1)*acd72(41)
      acd72(42)=acd72(1)+acd72(13)+acd72(11)
      acd72(42)=acd72(7)*acd72(42)
      acd72(43)=acd72(29)*acd72(30)
      acd72(42)=-acd72(31)+acd72(43)+acd72(42)
      acd72(42)=acd72(6)*acd72(42)
      acd72(43)=-acd72(36)*acd72(37)
      acd72(44)=-acd72(32)*acd72(33)
      acd72(45)=-acd72(29)*acd72(35)
      acd72(46)=-acd72(26)*acd72(34)
      acd72(47)=-acd72(11)*acd72(12)
      brack=acd72(38)+acd72(39)+acd72(40)+acd72(41)+acd72(42)+acd72(43)+acd72(4&
      &4)+acd72(45)+acd72(46)+acd72(47)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd72
      complex(ki) :: brack
      acd72(1)=k1(iv1)
      acd72(2)=dotproduct(qshift,spvak2k1)
      acd72(3)=abb72(25)
      acd72(4)=dotproduct(qshift,spvak4k1)
      acd72(5)=abb72(29)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(15)
      acd72(8)=dotproduct(qshift,spvak4l6)
      acd72(9)=abb72(38)
      acd72(10)=abb72(19)
      acd72(11)=l6(iv1)
      acd72(12)=abb72(34)
      acd72(13)=qshift(iv1)
      acd72(14)=abb72(24)
      acd72(15)=abb72(12)
      acd72(16)=abb72(16)
      acd72(17)=abb72(20)
      acd72(18)=spvak2k1(iv1)
      acd72(19)=dotproduct(k1,qshift)
      acd72(20)=dotproduct(qshift,qshift)
      acd72(21)=abb72(21)
      acd72(22)=dotproduct(qshift,spvak2l5)
      acd72(23)=abb72(22)
      acd72(24)=dotproduct(qshift,spvak2k7)
      acd72(25)=abb72(14)
      acd72(26)=dotproduct(qshift,spvak2e7)
      acd72(27)=abb72(10)
      acd72(28)=abb72(9)
      acd72(29)=dotproduct(qshift,spvak2k3)
      acd72(30)=abb72(28)
      acd72(31)=abb72(8)
      acd72(32)=spvak4k1(iv1)
      acd72(33)=spvak4k3(iv1)
      acd72(34)=dotproduct(l6,qshift)
      acd72(35)=dotproduct(qshift,spvak2l6)
      acd72(36)=abb72(11)
      acd72(37)=abb72(17)
      acd72(38)=spvak4l6(iv1)
      acd72(39)=spvak1l6(iv1)
      acd72(40)=abb72(26)
      acd72(41)=spvak2k3(iv1)
      acd72(42)=abb72(23)
      acd72(43)=spvak2l5(iv1)
      acd72(44)=spvak2k7(iv1)
      acd72(45)=spvak2e7(iv1)
      acd72(46)=spvak2l6(iv1)
      acd72(47)=abb72(13)
      acd72(48)=spval6k1(iv1)
      acd72(49)=abb72(27)
      acd72(50)=acd72(27)*acd72(26)
      acd72(51)=acd72(25)*acd72(24)
      acd72(52)=acd72(23)*acd72(22)
      acd72(50)=acd72(50)+acd72(51)+acd72(52)-acd72(28)
      acd72(51)=-acd72(33)*acd72(50)
      acd72(52)=-acd72(27)*acd72(45)
      acd72(53)=-acd72(25)*acd72(44)
      acd72(54)=-acd72(23)*acd72(43)
      acd72(52)=acd72(54)+acd72(52)+acd72(53)
      acd72(52)=acd72(6)*acd72(52)
      acd72(53)=acd72(30)*acd72(41)
      acd72(54)=2.0_ki*acd72(13)
      acd72(55)=-acd72(14)*acd72(54)
      acd72(56)=acd72(1)*acd72(3)
      acd72(57)=acd72(18)*acd72(21)
      acd72(51)=acd72(52)+2.0_ki*acd72(57)+acd72(51)+acd72(56)+acd72(53)+acd72(&
      &55)
      acd72(51)=acd72(2)*acd72(51)
      acd72(52)=acd72(30)*acd72(29)
      acd72(53)=-acd72(20)*acd72(14)
      acd72(55)=acd72(19)*acd72(3)
      acd72(52)=acd72(55)+acd72(53)-acd72(31)+acd72(52)
      acd72(52)=acd72(18)*acd72(52)
      acd72(50)=-acd72(18)*acd72(50)
      acd72(53)=acd72(36)*acd72(46)
      acd72(55)=acd72(1)+acd72(11)+acd72(54)
      acd72(55)=acd72(7)*acd72(55)
      acd72(50)=acd72(50)+acd72(53)+acd72(55)
      acd72(50)=acd72(6)*acd72(50)
      acd72(53)=-acd72(16)*acd72(38)
      acd72(55)=-acd72(15)*acd72(32)
      acd72(53)=acd72(53)+acd72(55)
      acd72(53)=acd72(20)*acd72(53)
      acd72(55)=acd72(9)*acd72(38)
      acd72(56)=acd72(5)*acd72(32)
      acd72(55)=acd72(55)+acd72(56)
      acd72(55)=acd72(19)*acd72(55)
      acd72(56)=-acd72(8)*acd72(16)
      acd72(57)=-acd72(4)*acd72(15)
      acd72(56)=acd72(57)+acd72(17)+acd72(56)
      acd72(54)=acd72(56)*acd72(54)
      acd72(56)=acd72(8)*acd72(9)
      acd72(57)=acd72(4)*acd72(5)
      acd72(56)=acd72(57)-acd72(10)+acd72(56)
      acd72(56)=acd72(1)*acd72(56)
      acd72(57)=acd72(36)*acd72(35)
      acd72(58)=acd72(19)+acd72(34)+acd72(20)
      acd72(58)=acd72(7)*acd72(58)
      acd72(57)=acd72(58)-acd72(37)+acd72(57)
      acd72(57)=acd72(33)*acd72(57)
      acd72(58)=-acd72(48)*acd72(49)
      acd72(59)=-acd72(39)*acd72(40)
      acd72(60)=-acd72(46)*acd72(47)
      acd72(61)=-acd72(41)*acd72(42)
      acd72(62)=-acd72(11)*acd72(12)
      brack=acd72(50)+acd72(51)+acd72(52)+acd72(53)+acd72(54)+acd72(55)+acd72(5&
      &6)+acd72(57)+acd72(58)+acd72(59)+acd72(60)+acd72(61)+acd72(62)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=dotproduct(qshift,spvak2k1)
      acd72(3)=abb72(24)
      acd72(4)=dotproduct(qshift,spvak4k1)
      acd72(5)=abb72(12)
      acd72(6)=dotproduct(qshift,spvak4k3)
      acd72(7)=abb72(15)
      acd72(8)=dotproduct(qshift,spvak4l6)
      acd72(9)=abb72(16)
      acd72(10)=abb72(20)
      acd72(11)=k1(iv1)
      acd72(12)=spvak2k1(iv2)
      acd72(13)=abb72(25)
      acd72(14)=spvak4k1(iv2)
      acd72(15)=abb72(29)
      acd72(16)=spvak4k3(iv2)
      acd72(17)=spvak4l6(iv2)
      acd72(18)=abb72(38)
      acd72(19)=k1(iv2)
      acd72(20)=spvak2k1(iv1)
      acd72(21)=spvak4k1(iv1)
      acd72(22)=spvak4k3(iv1)
      acd72(23)=spvak4l6(iv1)
      acd72(24)=l6(iv1)
      acd72(25)=l6(iv2)
      acd72(26)=qshift(iv1)
      acd72(27)=qshift(iv2)
      acd72(28)=abb72(21)
      acd72(29)=dotproduct(qshift,spvak2l5)
      acd72(30)=abb72(22)
      acd72(31)=dotproduct(qshift,spvak2k7)
      acd72(32)=abb72(14)
      acd72(33)=dotproduct(qshift,spvak2e7)
      acd72(34)=abb72(10)
      acd72(35)=abb72(9)
      acd72(36)=spvak2k3(iv2)
      acd72(37)=abb72(28)
      acd72(38)=spvak2l5(iv2)
      acd72(39)=spvak2k7(iv2)
      acd72(40)=spvak2e7(iv2)
      acd72(41)=spvak2k3(iv1)
      acd72(42)=spvak2l5(iv1)
      acd72(43)=spvak2k7(iv1)
      acd72(44)=spvak2e7(iv1)
      acd72(45)=spvak2l6(iv2)
      acd72(46)=abb72(11)
      acd72(47)=spvak2l6(iv1)
      acd72(48)=acd72(34)*acd72(44)
      acd72(49)=acd72(32)*acd72(43)
      acd72(50)=acd72(30)*acd72(42)
      acd72(48)=acd72(48)+acd72(49)+acd72(50)
      acd72(49)=-acd72(6)*acd72(48)
      acd72(50)=acd72(34)*acd72(33)
      acd72(51)=acd72(32)*acd72(31)
      acd72(52)=acd72(30)*acd72(29)
      acd72(50)=acd72(50)+acd72(51)+acd72(52)-acd72(35)
      acd72(51)=-acd72(22)*acd72(50)
      acd72(52)=acd72(37)*acd72(41)
      acd72(53)=2.0_ki*acd72(3)
      acd72(54)=-acd72(26)*acd72(53)
      acd72(55)=acd72(11)*acd72(13)
      acd72(56)=acd72(20)*acd72(28)
      acd72(49)=2.0_ki*acd72(56)+acd72(51)+acd72(49)+acd72(55)+acd72(52)+acd72(&
      &54)
      acd72(49)=acd72(12)*acd72(49)
      acd72(51)=-acd72(9)*acd72(8)
      acd72(52)=-acd72(5)*acd72(4)
      acd72(54)=acd72(6)*acd72(7)
      acd72(55)=-acd72(2)*acd72(3)
      acd72(51)=acd72(55)+acd72(54)+acd72(52)+acd72(10)+acd72(51)
      acd72(52)=2.0_ki*acd72(1)
      acd72(51)=acd72(52)*acd72(51)
      acd72(52)=acd72(34)*acd72(40)
      acd72(54)=acd72(32)*acd72(39)
      acd72(55)=acd72(30)*acd72(38)
      acd72(52)=acd72(55)+acd72(52)+acd72(54)
      acd72(54)=-acd72(6)*acd72(52)
      acd72(55)=acd72(37)*acd72(36)
      acd72(53)=-acd72(27)*acd72(53)
      acd72(56)=acd72(19)*acd72(13)
      acd72(53)=acd72(54)+acd72(56)+acd72(55)+acd72(53)
      acd72(53)=acd72(20)*acd72(53)
      acd72(48)=-acd72(2)*acd72(48)
      acd72(50)=-acd72(20)*acd72(50)
      acd72(54)=acd72(46)*acd72(47)
      acd72(55)=acd72(11)+acd72(24)+2.0_ki*acd72(26)
      acd72(55)=acd72(7)*acd72(55)
      acd72(48)=acd72(50)+acd72(48)+acd72(54)+acd72(55)
      acd72(48)=acd72(16)*acd72(48)
      acd72(50)=-acd72(9)*acd72(23)
      acd72(54)=-acd72(5)*acd72(21)
      acd72(50)=acd72(50)+acd72(54)
      acd72(50)=acd72(27)*acd72(50)
      acd72(54)=-acd72(9)*acd72(17)
      acd72(55)=-acd72(5)*acd72(14)
      acd72(54)=acd72(54)+acd72(55)
      acd72(54)=acd72(26)*acd72(54)
      acd72(50)=acd72(50)+acd72(54)
      acd72(52)=-acd72(2)*acd72(52)
      acd72(54)=acd72(46)*acd72(45)
      acd72(55)=acd72(19)+acd72(25)+2.0_ki*acd72(27)
      acd72(55)=acd72(7)*acd72(55)
      acd72(52)=acd72(52)+acd72(54)+acd72(55)
      acd72(52)=acd72(22)*acd72(52)
      acd72(54)=acd72(18)*acd72(23)
      acd72(55)=acd72(15)*acd72(21)
      acd72(54)=acd72(54)+acd72(55)
      acd72(54)=acd72(19)*acd72(54)
      acd72(55)=acd72(17)*acd72(18)
      acd72(56)=acd72(14)*acd72(15)
      acd72(55)=acd72(55)+acd72(56)
      acd72(55)=acd72(11)*acd72(55)
      brack=acd72(48)+acd72(49)+2.0_ki*acd72(50)+acd72(51)+acd72(52)+acd72(53)+&
      &acd72(54)+acd72(55)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd72
      complex(ki) :: brack
      acd72(1)=d(iv1,iv2)
      acd72(2)=spvak2k1(iv3)
      acd72(3)=abb72(24)
      acd72(4)=spvak4k1(iv3)
      acd72(5)=abb72(12)
      acd72(6)=spvak4k3(iv3)
      acd72(7)=abb72(15)
      acd72(8)=spvak4l6(iv3)
      acd72(9)=abb72(16)
      acd72(10)=d(iv1,iv3)
      acd72(11)=spvak2k1(iv2)
      acd72(12)=spvak4k1(iv2)
      acd72(13)=spvak4k3(iv2)
      acd72(14)=spvak4l6(iv2)
      acd72(15)=d(iv2,iv3)
      acd72(16)=spvak2k1(iv1)
      acd72(17)=spvak4k1(iv1)
      acd72(18)=spvak4k3(iv1)
      acd72(19)=spvak4l6(iv1)
      acd72(20)=spvak2l5(iv3)
      acd72(21)=abb72(22)
      acd72(22)=spvak2k7(iv3)
      acd72(23)=abb72(14)
      acd72(24)=spvak2e7(iv3)
      acd72(25)=abb72(10)
      acd72(26)=spvak2l5(iv2)
      acd72(27)=spvak2k7(iv2)
      acd72(28)=spvak2e7(iv2)
      acd72(29)=spvak2l5(iv1)
      acd72(30)=spvak2k7(iv1)
      acd72(31)=spvak2e7(iv1)
      acd72(32)=acd72(16)*acd72(13)
      acd72(33)=acd72(18)*acd72(11)
      acd72(32)=acd72(32)+acd72(33)
      acd72(33)=-acd72(20)*acd72(32)
      acd72(34)=acd72(16)*acd72(6)
      acd72(35)=acd72(18)*acd72(2)
      acd72(34)=acd72(34)+acd72(35)
      acd72(35)=-acd72(26)*acd72(34)
      acd72(36)=acd72(11)*acd72(6)
      acd72(37)=acd72(13)*acd72(2)
      acd72(36)=acd72(36)+acd72(37)
      acd72(37)=-acd72(29)*acd72(36)
      acd72(33)=acd72(37)+acd72(35)+acd72(33)
      acd72(33)=acd72(21)*acd72(33)
      acd72(35)=-acd72(22)*acd72(32)
      acd72(37)=-acd72(27)*acd72(34)
      acd72(38)=-acd72(30)*acd72(36)
      acd72(35)=acd72(38)+acd72(37)+acd72(35)
      acd72(35)=acd72(23)*acd72(35)
      acd72(32)=-acd72(24)*acd72(32)
      acd72(34)=-acd72(28)*acd72(34)
      acd72(36)=-acd72(31)*acd72(36)
      acd72(32)=acd72(36)+acd72(34)+acd72(32)
      acd72(32)=acd72(25)*acd72(32)
      acd72(34)=-acd72(1)*acd72(2)
      acd72(36)=-acd72(10)*acd72(11)
      acd72(37)=-acd72(15)*acd72(16)
      acd72(34)=acd72(37)+acd72(34)+acd72(36)
      acd72(34)=acd72(3)*acd72(34)
      acd72(36)=acd72(1)*acd72(6)
      acd72(37)=acd72(10)*acd72(13)
      acd72(38)=acd72(15)*acd72(18)
      acd72(36)=acd72(38)+acd72(36)+acd72(37)
      acd72(36)=acd72(7)*acd72(36)
      acd72(34)=acd72(34)+acd72(36)
      acd72(36)=-acd72(8)*acd72(1)
      acd72(37)=-acd72(14)*acd72(10)
      acd72(38)=-acd72(19)*acd72(15)
      acd72(36)=acd72(38)+acd72(37)+acd72(36)
      acd72(37)=2.0_ki*acd72(9)
      acd72(36)=acd72(37)*acd72(36)
      acd72(37)=-acd72(4)*acd72(1)
      acd72(38)=-acd72(12)*acd72(10)
      acd72(39)=-acd72(17)*acd72(15)
      acd72(37)=acd72(39)+acd72(38)+acd72(37)
      acd72(38)=2.0_ki*acd72(5)
      acd72(37)=acd72(38)*acd72(37)
      brack=acd72(32)+acd72(33)+2.0_ki*acd72(34)+acd72(35)+acd72(36)+acd72(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd72h2
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d72:
   subroutine     reconstruct_d72(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_72:
      coeffs%coeffs_72%c0 = derivative(czip)
      coeffs%coeffs_72%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_72%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_72%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_72%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_72%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_72%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_72%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_72%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_72%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_72%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_72%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_72%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_72%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_72%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_72%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_72%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_72%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_72%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_72%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_72%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_72%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_72%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_72%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_72%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_72%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_72%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_72%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_72%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_72%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_72%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_72%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_72%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_72%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_72%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_72:
   end subroutine reconstruct_d72
!---#] subroutine reconstruct_d72:
end module     p5_usbar_epnebbbarg_d72h2l1d
