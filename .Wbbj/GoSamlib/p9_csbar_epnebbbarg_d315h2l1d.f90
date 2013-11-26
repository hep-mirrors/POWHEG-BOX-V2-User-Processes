module     p9_csbar_epnebbbarg_d315h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d315h2l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d315
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd315h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd315
      complex(ki) :: brack
      acd315(1)=dotproduct(k1,qshift)
      acd315(2)=dotproduct(e7,qshift)
      acd315(3)=abb315(10)
      acd315(4)=abb315(64)
      acd315(5)=dotproduct(k2,qshift)
      acd315(6)=dotproduct(qshift,spvak2k1)
      acd315(7)=abb315(11)
      acd315(8)=dotproduct(qshift,spvak4k1)
      acd315(9)=abb315(46)
      acd315(10)=dotproduct(qshift,spvae7k1)
      acd315(11)=abb315(35)
      acd315(12)=dotproduct(l6,qshift)
      acd315(13)=abb315(40)
      acd315(14)=abb315(26)
      acd315(15)=dotproduct(qshift,qshift)
      acd315(16)=abb315(9)
      acd315(17)=abb315(24)
      acd315(18)=dotproduct(qshift,spvak2l6)
      acd315(19)=abb315(17)
      acd315(20)=dotproduct(qshift,spvak4l6)
      acd315(21)=abb315(44)
      acd315(22)=dotproduct(qshift,spval6k1)
      acd315(23)=abb315(8)
      acd315(24)=abb315(18)
      acd315(25)=abb315(13)
      acd315(26)=abb315(41)
      acd315(27)=dotproduct(qshift,spvak2e7)
      acd315(28)=abb315(38)
      acd315(29)=dotproduct(qshift,spvae7l6)
      acd315(30)=abb315(29)
      acd315(31)=abb315(23)
      acd315(32)=abb315(20)
      acd315(33)=abb315(25)
      acd315(34)=abb315(19)
      acd315(35)=abb315(42)
      acd315(36)=abb315(15)
      acd315(37)=abb315(12)
      acd315(38)=dotproduct(qshift,spvak1l6)
      acd315(39)=abb315(14)
      acd315(40)=abb315(21)
      acd315(41)=acd315(15)-acd315(12)
      acd315(41)=acd315(13)*acd315(41)
      acd315(42)=-acd315(5)*acd315(9)
      acd315(42)=acd315(42)+acd315(17)
      acd315(42)=acd315(8)*acd315(42)
      acd315(43)=acd315(20)*acd315(21)
      acd315(44)=acd315(22)*acd315(23)
      acd315(45)=acd315(18)*acd315(19)
      acd315(46)=acd315(1)*acd315(3)
      acd315(47)=-acd315(5)*acd315(7)
      acd315(47)=acd315(16)+acd315(47)
      acd315(47)=acd315(6)*acd315(47)
      acd315(41)=acd315(47)+acd315(46)+acd315(45)+acd315(44)-acd315(24)+acd315(&
      &43)+acd315(42)+acd315(41)
      acd315(41)=acd315(2)*acd315(41)
      acd315(42)=acd315(29)*acd315(30)
      acd315(43)=-acd315(27)*acd315(28)
      acd315(44)=-acd315(10)*acd315(26)
      acd315(45)=-acd315(6)*acd315(25)
      acd315(42)=acd315(45)+acd315(44)+acd315(43)+acd315(31)+acd315(42)
      acd315(42)=acd315(15)*acd315(42)
      acd315(43)=acd315(5)*acd315(11)
      acd315(43)=acd315(43)-acd315(33)
      acd315(43)=acd315(10)*acd315(43)
      acd315(44)=-acd315(38)*acd315(39)
      acd315(45)=-acd315(29)*acd315(37)
      acd315(46)=-acd315(27)*acd315(36)
      acd315(47)=-acd315(22)*acd315(35)
      acd315(48)=-acd315(18)*acd315(34)
      acd315(49)=-acd315(12)*acd315(14)
      acd315(50)=-acd315(1)*acd315(4)
      acd315(51)=-acd315(6)*acd315(32)
      brack=acd315(40)+acd315(41)+acd315(42)+acd315(43)+acd315(44)+acd315(45)+a&
      &cd315(46)+acd315(47)+acd315(48)+acd315(49)+acd315(50)+acd315(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd315h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd315
      complex(ki) :: brack
      acd315(1)=k1(iv1)
      acd315(2)=dotproduct(e7,qshift)
      acd315(3)=abb315(10)
      acd315(4)=abb315(64)
      acd315(5)=k2(iv1)
      acd315(6)=dotproduct(qshift,spvak2k1)
      acd315(7)=abb315(11)
      acd315(8)=dotproduct(qshift,spvak4k1)
      acd315(9)=abb315(46)
      acd315(10)=dotproduct(qshift,spvae7k1)
      acd315(11)=abb315(35)
      acd315(12)=l6(iv1)
      acd315(13)=abb315(40)
      acd315(14)=abb315(26)
      acd315(15)=e7(iv1)
      acd315(16)=dotproduct(k1,qshift)
      acd315(17)=dotproduct(k2,qshift)
      acd315(18)=dotproduct(l6,qshift)
      acd315(19)=dotproduct(qshift,qshift)
      acd315(20)=abb315(9)
      acd315(21)=abb315(24)
      acd315(22)=dotproduct(qshift,spvak2l6)
      acd315(23)=abb315(17)
      acd315(24)=dotproduct(qshift,spvak4l6)
      acd315(25)=abb315(44)
      acd315(26)=dotproduct(qshift,spval6k1)
      acd315(27)=abb315(8)
      acd315(28)=abb315(18)
      acd315(29)=qshift(iv1)
      acd315(30)=abb315(13)
      acd315(31)=abb315(41)
      acd315(32)=dotproduct(qshift,spvak2e7)
      acd315(33)=abb315(38)
      acd315(34)=dotproduct(qshift,spvae7l6)
      acd315(35)=abb315(29)
      acd315(36)=abb315(23)
      acd315(37)=spvak2k1(iv1)
      acd315(38)=abb315(20)
      acd315(39)=spvak4k1(iv1)
      acd315(40)=spvae7k1(iv1)
      acd315(41)=abb315(25)
      acd315(42)=spvak2l6(iv1)
      acd315(43)=abb315(19)
      acd315(44)=spvak4l6(iv1)
      acd315(45)=spval6k1(iv1)
      acd315(46)=abb315(42)
      acd315(47)=spvak2e7(iv1)
      acd315(48)=abb315(15)
      acd315(49)=spvae7l6(iv1)
      acd315(50)=abb315(12)
      acd315(51)=spvak1l6(iv1)
      acd315(52)=abb315(14)
      acd315(53)=acd315(8)*acd315(9)
      acd315(54)=acd315(6)*acd315(7)
      acd315(53)=acd315(53)+acd315(54)
      acd315(54)=-acd315(5)*acd315(53)
      acd315(55)=-acd315(9)*acd315(39)
      acd315(56)=-acd315(37)*acd315(7)
      acd315(55)=acd315(55)+acd315(56)
      acd315(55)=acd315(17)*acd315(55)
      acd315(56)=2.0_ki*acd315(29)
      acd315(57)=acd315(56)-acd315(12)
      acd315(57)=acd315(13)*acd315(57)
      acd315(58)=acd315(27)*acd315(45)
      acd315(59)=acd315(25)*acd315(44)
      acd315(60)=acd315(23)*acd315(42)
      acd315(61)=acd315(21)*acd315(39)
      acd315(62)=acd315(1)*acd315(3)
      acd315(63)=acd315(37)*acd315(20)
      acd315(54)=acd315(55)+acd315(63)+acd315(62)+acd315(61)+acd315(60)+acd315(&
      &58)+acd315(59)+acd315(57)+acd315(54)
      acd315(54)=acd315(2)*acd315(54)
      acd315(53)=-acd315(17)*acd315(53)
      acd315(55)=acd315(19)-acd315(18)
      acd315(55)=acd315(13)*acd315(55)
      acd315(57)=acd315(27)*acd315(26)
      acd315(58)=acd315(25)*acd315(24)
      acd315(59)=acd315(23)*acd315(22)
      acd315(60)=acd315(3)*acd315(16)
      acd315(61)=acd315(8)*acd315(21)
      acd315(62)=acd315(6)*acd315(20)
      acd315(53)=acd315(53)+acd315(62)+acd315(61)+acd315(60)+acd315(59)+acd315(&
      &58)-acd315(28)+acd315(57)+acd315(55)
      acd315(53)=acd315(15)*acd315(53)
      acd315(55)=acd315(35)*acd315(49)
      acd315(57)=-acd315(33)*acd315(47)
      acd315(58)=-acd315(40)*acd315(31)
      acd315(59)=-acd315(37)*acd315(30)
      acd315(55)=acd315(59)+acd315(58)+acd315(55)+acd315(57)
      acd315(55)=acd315(19)*acd315(55)
      acd315(57)=acd315(35)*acd315(34)
      acd315(58)=-acd315(33)*acd315(32)
      acd315(59)=-acd315(10)*acd315(31)
      acd315(60)=-acd315(6)*acd315(30)
      acd315(57)=acd315(60)+acd315(59)+acd315(58)+acd315(36)+acd315(57)
      acd315(56)=acd315(57)*acd315(56)
      acd315(57)=acd315(17)*acd315(11)
      acd315(57)=acd315(57)-acd315(41)
      acd315(57)=acd315(40)*acd315(57)
      acd315(58)=-acd315(51)*acd315(52)
      acd315(59)=-acd315(49)*acd315(50)
      acd315(60)=-acd315(47)*acd315(48)
      acd315(61)=-acd315(45)*acd315(46)
      acd315(62)=-acd315(42)*acd315(43)
      acd315(63)=-acd315(12)*acd315(14)
      acd315(64)=-acd315(1)*acd315(4)
      acd315(65)=acd315(5)*acd315(10)*acd315(11)
      acd315(66)=-acd315(37)*acd315(38)
      brack=acd315(53)+acd315(54)+acd315(55)+acd315(56)+acd315(57)+acd315(58)+a&
      &cd315(59)+acd315(60)+acd315(61)+acd315(62)+acd315(63)+acd315(64)+acd315(&
      &65)+acd315(66)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd315h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd315
      complex(ki) :: brack
      acd315(1)=d(iv1,iv2)
      acd315(2)=dotproduct(e7,qshift)
      acd315(3)=abb315(40)
      acd315(4)=dotproduct(qshift,spvak2k1)
      acd315(5)=abb315(13)
      acd315(6)=dotproduct(qshift,spvae7k1)
      acd315(7)=abb315(41)
      acd315(8)=dotproduct(qshift,spvak2e7)
      acd315(9)=abb315(38)
      acd315(10)=dotproduct(qshift,spvae7l6)
      acd315(11)=abb315(29)
      acd315(12)=abb315(23)
      acd315(13)=k1(iv1)
      acd315(14)=e7(iv2)
      acd315(15)=abb315(10)
      acd315(16)=k1(iv2)
      acd315(17)=e7(iv1)
      acd315(18)=k2(iv1)
      acd315(19)=abb315(11)
      acd315(20)=dotproduct(qshift,spvak4k1)
      acd315(21)=abb315(46)
      acd315(22)=spvak2k1(iv2)
      acd315(23)=spvae7k1(iv2)
      acd315(24)=abb315(35)
      acd315(25)=spvak4k1(iv2)
      acd315(26)=k2(iv2)
      acd315(27)=spvak2k1(iv1)
      acd315(28)=spvae7k1(iv1)
      acd315(29)=spvak4k1(iv1)
      acd315(30)=l6(iv1)
      acd315(31)=l6(iv2)
      acd315(32)=qshift(iv2)
      acd315(33)=dotproduct(k2,qshift)
      acd315(34)=abb315(9)
      acd315(35)=abb315(24)
      acd315(36)=spvak2l6(iv2)
      acd315(37)=abb315(17)
      acd315(38)=spvak4l6(iv2)
      acd315(39)=abb315(44)
      acd315(40)=spval6k1(iv2)
      acd315(41)=abb315(8)
      acd315(42)=qshift(iv1)
      acd315(43)=spvak2l6(iv1)
      acd315(44)=spvak4l6(iv1)
      acd315(45)=spval6k1(iv1)
      acd315(46)=spvak2e7(iv2)
      acd315(47)=spvae7l6(iv2)
      acd315(48)=spvak2e7(iv1)
      acd315(49)=spvae7l6(iv1)
      acd315(50)=-acd315(33)*acd315(25)
      acd315(51)=-acd315(26)*acd315(20)
      acd315(50)=acd315(50)+acd315(51)
      acd315(50)=acd315(21)*acd315(50)
      acd315(51)=-acd315(22)*acd315(33)
      acd315(52)=-acd315(26)*acd315(4)
      acd315(51)=acd315(51)+acd315(52)
      acd315(51)=acd315(19)*acd315(51)
      acd315(52)=acd315(41)*acd315(40)
      acd315(53)=acd315(39)*acd315(38)
      acd315(54)=acd315(37)*acd315(36)
      acd315(55)=acd315(15)*acd315(16)
      acd315(56)=acd315(25)*acd315(35)
      acd315(57)=acd315(22)*acd315(34)
      acd315(58)=-acd315(31)+2.0_ki*acd315(32)
      acd315(58)=acd315(3)*acd315(58)
      acd315(50)=acd315(51)+acd315(50)+acd315(58)+acd315(57)+acd315(56)+acd315(&
      &55)+acd315(54)+acd315(52)+acd315(53)
      acd315(50)=acd315(17)*acd315(50)
      acd315(51)=-acd315(33)*acd315(29)
      acd315(52)=-acd315(18)*acd315(20)
      acd315(51)=acd315(51)+acd315(52)
      acd315(51)=acd315(21)*acd315(51)
      acd315(52)=-acd315(27)*acd315(33)
      acd315(53)=-acd315(18)*acd315(4)
      acd315(52)=acd315(52)+acd315(53)
      acd315(52)=acd315(19)*acd315(52)
      acd315(53)=acd315(41)*acd315(45)
      acd315(54)=acd315(39)*acd315(44)
      acd315(55)=acd315(37)*acd315(43)
      acd315(56)=acd315(15)*acd315(13)
      acd315(57)=acd315(29)*acd315(35)
      acd315(58)=acd315(27)*acd315(34)
      acd315(59)=-acd315(30)+2.0_ki*acd315(42)
      acd315(59)=acd315(3)*acd315(59)
      acd315(51)=acd315(52)+acd315(51)+acd315(59)+acd315(58)+acd315(57)+acd315(&
      &56)+acd315(55)+acd315(53)+acd315(54)
      acd315(51)=acd315(14)*acd315(51)
      acd315(52)=acd315(11)*acd315(10)
      acd315(53)=-acd315(9)*acd315(8)
      acd315(54)=-acd315(7)*acd315(6)
      acd315(55)=-acd315(4)*acd315(5)
      acd315(56)=acd315(2)*acd315(3)
      acd315(52)=acd315(56)+acd315(55)+acd315(54)+acd315(53)+acd315(12)+acd315(&
      &52)
      acd315(52)=acd315(1)*acd315(52)
      acd315(53)=acd315(11)*acd315(47)
      acd315(54)=-acd315(9)*acd315(46)
      acd315(55)=-acd315(7)*acd315(23)
      acd315(56)=-acd315(22)*acd315(5)
      acd315(53)=acd315(56)+acd315(55)+acd315(53)+acd315(54)
      acd315(53)=acd315(42)*acd315(53)
      acd315(54)=acd315(11)*acd315(49)
      acd315(55)=-acd315(9)*acd315(48)
      acd315(56)=-acd315(7)*acd315(28)
      acd315(57)=-acd315(27)*acd315(5)
      acd315(54)=acd315(57)+acd315(56)+acd315(54)+acd315(55)
      acd315(54)=acd315(32)*acd315(54)
      acd315(52)=acd315(52)+acd315(53)+acd315(54)
      acd315(53)=-acd315(26)*acd315(29)
      acd315(54)=-acd315(18)*acd315(25)
      acd315(53)=acd315(53)+acd315(54)
      acd315(53)=acd315(21)*acd315(53)
      acd315(54)=-acd315(26)*acd315(27)
      acd315(55)=-acd315(18)*acd315(22)
      acd315(54)=acd315(54)+acd315(55)
      acd315(54)=acd315(19)*acd315(54)
      acd315(53)=acd315(54)+acd315(53)
      acd315(53)=acd315(2)*acd315(53)
      acd315(54)=acd315(26)*acd315(28)
      acd315(55)=acd315(18)*acd315(23)
      acd315(54)=acd315(55)+acd315(54)
      acd315(54)=acd315(24)*acd315(54)
      brack=acd315(50)+acd315(51)+2.0_ki*acd315(52)+acd315(53)+acd315(54)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd315h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd315
      complex(ki) :: brack
      acd315(1)=d(iv1,iv2)
      acd315(2)=e7(iv3)
      acd315(3)=abb315(40)
      acd315(4)=spvak2k1(iv3)
      acd315(5)=abb315(13)
      acd315(6)=spvae7k1(iv3)
      acd315(7)=abb315(41)
      acd315(8)=spvak2e7(iv3)
      acd315(9)=abb315(38)
      acd315(10)=spvae7l6(iv3)
      acd315(11)=abb315(29)
      acd315(12)=d(iv1,iv3)
      acd315(13)=e7(iv2)
      acd315(14)=spvak2k1(iv2)
      acd315(15)=spvae7k1(iv2)
      acd315(16)=spvak2e7(iv2)
      acd315(17)=spvae7l6(iv2)
      acd315(18)=d(iv2,iv3)
      acd315(19)=e7(iv1)
      acd315(20)=spvak2k1(iv1)
      acd315(21)=spvae7k1(iv1)
      acd315(22)=spvak2e7(iv1)
      acd315(23)=spvae7l6(iv1)
      acd315(24)=k2(iv1)
      acd315(25)=abb315(11)
      acd315(26)=spvak4k1(iv3)
      acd315(27)=abb315(46)
      acd315(28)=spvak4k1(iv2)
      acd315(29)=k2(iv2)
      acd315(30)=spvak4k1(iv1)
      acd315(31)=k2(iv3)
      acd315(32)=acd315(24)*acd315(13)
      acd315(33)=acd315(29)*acd315(19)
      acd315(32)=acd315(32)+acd315(33)
      acd315(33)=-acd315(26)*acd315(32)
      acd315(34)=acd315(24)*acd315(2)
      acd315(35)=acd315(31)*acd315(19)
      acd315(34)=acd315(34)+acd315(35)
      acd315(35)=-acd315(28)*acd315(34)
      acd315(36)=acd315(29)*acd315(2)
      acd315(37)=acd315(31)*acd315(13)
      acd315(36)=acd315(36)+acd315(37)
      acd315(37)=-acd315(30)*acd315(36)
      acd315(33)=acd315(37)+acd315(35)+acd315(33)
      acd315(33)=acd315(27)*acd315(33)
      acd315(35)=-acd315(5)*acd315(4)
      acd315(37)=-acd315(6)*acd315(7)
      acd315(38)=-acd315(8)*acd315(9)
      acd315(39)=acd315(10)*acd315(11)
      acd315(35)=acd315(39)+acd315(38)+acd315(37)+acd315(35)
      acd315(37)=2.0_ki*acd315(1)
      acd315(35)=acd315(37)*acd315(35)
      acd315(37)=-acd315(21)*acd315(7)
      acd315(38)=-acd315(22)*acd315(9)
      acd315(39)=acd315(23)*acd315(11)
      acd315(37)=acd315(39)+acd315(38)+acd315(37)
      acd315(38)=2.0_ki*acd315(18)
      acd315(37)=acd315(38)*acd315(37)
      acd315(39)=-acd315(15)*acd315(7)
      acd315(40)=-acd315(16)*acd315(9)
      acd315(41)=acd315(17)*acd315(11)
      acd315(39)=acd315(41)+acd315(40)+acd315(39)
      acd315(40)=2.0_ki*acd315(12)
      acd315(39)=acd315(40)*acd315(39)
      acd315(41)=acd315(2)*acd315(1)
      acd315(42)=acd315(13)*acd315(12)
      acd315(43)=acd315(19)*acd315(18)
      acd315(41)=acd315(43)+acd315(41)+acd315(42)
      acd315(41)=acd315(3)*acd315(41)
      acd315(32)=-acd315(4)*acd315(25)*acd315(32)
      acd315(34)=-acd315(25)*acd315(34)
      acd315(40)=-acd315(5)*acd315(40)
      acd315(34)=acd315(40)+acd315(34)
      acd315(34)=acd315(14)*acd315(34)
      acd315(36)=-acd315(25)*acd315(36)
      acd315(38)=-acd315(5)*acd315(38)
      acd315(36)=acd315(38)+acd315(36)
      acd315(36)=acd315(20)*acd315(36)
      brack=acd315(32)+acd315(33)+acd315(34)+acd315(35)+acd315(36)+acd315(37)+a&
      &cd315(39)+2.0_ki*acd315(41)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd315h2
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
      qshift = -k7-k5
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
!---#[ subroutine reconstruct_d315:
   subroutine     reconstruct_d315(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_315:
      coeffs%coeffs_315%c0 = derivative(czip)
      coeffs%coeffs_315%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_315%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_315%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_315%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_315%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_315%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_315%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_315%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_315%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_315%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_315%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_315%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_315%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_315%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_315%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_315%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_315%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_315%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_315%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_315%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_315%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_315%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_315%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_315%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_315%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_315%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_315%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_315%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_315%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_315%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_315%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_315%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_315%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_315%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_315:
   end subroutine reconstruct_d315
!---#] subroutine reconstruct_d315:
end module     p9_csbar_epnebbbarg_d315h2l1d
