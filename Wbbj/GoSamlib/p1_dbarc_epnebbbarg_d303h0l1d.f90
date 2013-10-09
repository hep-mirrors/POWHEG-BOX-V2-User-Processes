module     p1_dbarc_epnebbbarg_d303h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d303h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d303
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd303h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd303
      complex(ki) :: brack
      acd303(1)=dotproduct(k2,qshift)
      acd303(2)=dotproduct(qshift,spvae7k2)
      acd303(3)=abb303(52)
      acd303(4)=abb303(34)
      acd303(5)=dotproduct(l5,qshift)
      acd303(6)=abb303(51)
      acd303(7)=abb303(41)
      acd303(8)=dotproduct(e7,qshift)
      acd303(9)=dotproduct(qshift,spvak1k2)
      acd303(10)=dotproduct(qshift,spval5k2)
      acd303(11)=abb303(26)
      acd303(12)=dotproduct(qshift,spvak4k2)
      acd303(13)=abb303(25)
      acd303(14)=abb303(9)
      acd303(15)=dotproduct(qshift,qshift)
      acd303(16)=abb303(18)
      acd303(17)=abb303(38)
      acd303(18)=abb303(12)
      acd303(19)=dotproduct(qshift,spval5e7)
      acd303(20)=abb303(55)
      acd303(21)=abb303(17)
      acd303(22)=abb303(21)
      acd303(23)=abb303(23)
      acd303(24)=dotproduct(qshift,spval6k2)
      acd303(25)=abb303(13)
      acd303(26)=dotproduct(qshift,spvak7k2)
      acd303(27)=abb303(15)
      acd303(28)=dotproduct(qshift,spval6e7)
      acd303(29)=abb303(11)
      acd303(30)=abb303(20)
      acd303(31)=dotproduct(qshift,spval5l6)
      acd303(32)=abb303(19)
      acd303(33)=abb303(10)
      acd303(34)=dotproduct(qshift,spval5k7)
      acd303(35)=abb303(16)
      acd303(36)=abb303(24)
      acd303(37)=abb303(14)
      acd303(38)=abb303(42)
      acd303(39)=abb303(22)
      acd303(40)=-acd303(11)*acd303(9)
      acd303(41)=-acd303(13)*acd303(12)
      acd303(40)=acd303(14)+acd303(41)+acd303(40)
      acd303(40)=acd303(40)*acd303(8)
      acd303(41)=acd303(22)*acd303(9)
      acd303(42)=acd303(23)*acd303(12)
      acd303(43)=acd303(25)*acd303(24)
      acd303(44)=acd303(27)*acd303(26)
      acd303(45)=acd303(29)*acd303(28)
      acd303(40)=acd303(42)+acd303(41)+acd303(40)-acd303(30)+acd303(45)+acd303(&
      &44)+acd303(43)
      acd303(40)=acd303(10)*acd303(40)
      acd303(41)=acd303(3)*acd303(1)
      acd303(42)=acd303(6)*acd303(5)
      acd303(43)=-acd303(16)*acd303(15)
      acd303(44)=acd303(18)*acd303(10)
      acd303(45)=acd303(20)*acd303(19)
      acd303(41)=-acd303(21)+acd303(45)+acd303(44)+acd303(43)+acd303(42)+acd303&
      &(41)
      acd303(41)=acd303(2)*acd303(41)
      acd303(42)=acd303(32)*acd303(31)
      acd303(42)=-acd303(33)+acd303(42)
      acd303(42)=acd303(24)*acd303(42)
      acd303(43)=acd303(35)*acd303(26)
      acd303(43)=-acd303(37)+acd303(43)
      acd303(43)=acd303(34)*acd303(43)
      acd303(44)=-acd303(4)*acd303(1)
      acd303(45)=-acd303(7)*acd303(5)
      acd303(46)=acd303(17)*acd303(15)
      acd303(47)=-acd303(36)*acd303(26)
      acd303(48)=-acd303(38)*acd303(19)
      brack=acd303(39)+acd303(40)+acd303(41)+acd303(42)+acd303(43)+acd303(44)+a&
      &cd303(45)+acd303(46)+acd303(47)+acd303(48)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd303h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd303
      complex(ki) :: brack
      acd303(1)=k2(iv1)
      acd303(2)=dotproduct(qshift,spvae7k2)
      acd303(3)=abb303(52)
      acd303(4)=abb303(34)
      acd303(5)=l5(iv1)
      acd303(6)=abb303(51)
      acd303(7)=abb303(41)
      acd303(8)=e7(iv1)
      acd303(9)=dotproduct(qshift,spvak1k2)
      acd303(10)=dotproduct(qshift,spval5k2)
      acd303(11)=abb303(26)
      acd303(12)=dotproduct(qshift,spvak4k2)
      acd303(13)=abb303(25)
      acd303(14)=abb303(9)
      acd303(15)=qshift(iv1)
      acd303(16)=abb303(18)
      acd303(17)=abb303(38)
      acd303(18)=spvae7k2(iv1)
      acd303(19)=dotproduct(k2,qshift)
      acd303(20)=dotproduct(l5,qshift)
      acd303(21)=dotproduct(qshift,qshift)
      acd303(22)=abb303(12)
      acd303(23)=dotproduct(qshift,spval5e7)
      acd303(24)=abb303(55)
      acd303(25)=abb303(17)
      acd303(26)=spvak1k2(iv1)
      acd303(27)=dotproduct(e7,qshift)
      acd303(28)=abb303(21)
      acd303(29)=spval5k2(iv1)
      acd303(30)=abb303(23)
      acd303(31)=dotproduct(qshift,spval6k2)
      acd303(32)=abb303(13)
      acd303(33)=dotproduct(qshift,spvak7k2)
      acd303(34)=abb303(15)
      acd303(35)=dotproduct(qshift,spval6e7)
      acd303(36)=abb303(11)
      acd303(37)=abb303(20)
      acd303(38)=spvak4k2(iv1)
      acd303(39)=spval6k2(iv1)
      acd303(40)=dotproduct(qshift,spval5l6)
      acd303(41)=abb303(19)
      acd303(42)=abb303(10)
      acd303(43)=spvak7k2(iv1)
      acd303(44)=dotproduct(qshift,spval5k7)
      acd303(45)=abb303(16)
      acd303(46)=abb303(24)
      acd303(47)=spval6e7(iv1)
      acd303(48)=spval5l6(iv1)
      acd303(49)=spval5k7(iv1)
      acd303(50)=abb303(14)
      acd303(51)=spval5e7(iv1)
      acd303(52)=abb303(42)
      acd303(53)=acd303(12)*acd303(13)
      acd303(54)=acd303(9)*acd303(11)
      acd303(53)=-acd303(14)+acd303(53)+acd303(54)
      acd303(54)=acd303(8)*acd303(53)
      acd303(55)=acd303(13)*acd303(38)
      acd303(56)=acd303(11)*acd303(26)
      acd303(55)=acd303(55)+acd303(56)
      acd303(55)=acd303(27)*acd303(55)
      acd303(56)=-acd303(36)*acd303(47)
      acd303(57)=-acd303(30)*acd303(38)
      acd303(58)=-acd303(26)*acd303(28)
      acd303(59)=-acd303(43)*acd303(34)
      acd303(60)=-acd303(39)*acd303(32)
      acd303(61)=-acd303(18)*acd303(22)
      acd303(54)=acd303(61)+acd303(55)+acd303(54)+acd303(60)+acd303(59)+acd303(&
      &58)+acd303(56)+acd303(57)
      acd303(54)=acd303(10)*acd303(54)
      acd303(53)=acd303(27)*acd303(53)
      acd303(55)=-acd303(36)*acd303(35)
      acd303(56)=-acd303(33)*acd303(34)
      acd303(57)=-acd303(31)*acd303(32)
      acd303(58)=-acd303(12)*acd303(30)
      acd303(59)=-acd303(9)*acd303(28)
      acd303(60)=-acd303(2)*acd303(22)
      acd303(53)=acd303(60)+acd303(53)+acd303(59)+acd303(58)+acd303(57)+acd303(&
      &56)+acd303(37)+acd303(55)
      acd303(53)=acd303(29)*acd303(53)
      acd303(55)=-acd303(24)*acd303(51)
      acd303(56)=2.0_ki*acd303(15)
      acd303(57)=acd303(16)*acd303(56)
      acd303(58)=-acd303(5)*acd303(6)
      acd303(59)=-acd303(1)*acd303(3)
      acd303(55)=acd303(59)+acd303(58)+acd303(55)+acd303(57)
      acd303(55)=acd303(2)*acd303(55)
      acd303(57)=-acd303(24)*acd303(23)
      acd303(58)=acd303(16)*acd303(21)
      acd303(59)=-acd303(6)*acd303(20)
      acd303(60)=-acd303(3)*acd303(19)
      acd303(57)=acd303(60)+acd303(59)+acd303(58)+acd303(25)+acd303(57)
      acd303(57)=acd303(18)*acd303(57)
      acd303(58)=-acd303(33)*acd303(45)
      acd303(58)=acd303(58)+acd303(50)
      acd303(58)=acd303(49)*acd303(58)
      acd303(59)=acd303(51)*acd303(52)
      acd303(60)=-acd303(31)*acd303(41)*acd303(48)
      acd303(56)=-acd303(17)*acd303(56)
      acd303(61)=acd303(5)*acd303(7)
      acd303(62)=acd303(1)*acd303(4)
      acd303(63)=-acd303(45)*acd303(44)
      acd303(63)=acd303(46)+acd303(63)
      acd303(63)=acd303(43)*acd303(63)
      acd303(64)=-acd303(41)*acd303(40)
      acd303(64)=acd303(42)+acd303(64)
      acd303(64)=acd303(39)*acd303(64)
      brack=acd303(53)+acd303(54)+acd303(55)+acd303(56)+acd303(57)+acd303(58)+a&
      &cd303(59)+acd303(60)+acd303(61)+acd303(62)+acd303(63)+acd303(64)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd303h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=dotproduct(qshift,spvae7k2)
      acd303(3)=abb303(18)
      acd303(4)=abb303(38)
      acd303(5)=k2(iv1)
      acd303(6)=spvae7k2(iv2)
      acd303(7)=abb303(52)
      acd303(8)=k2(iv2)
      acd303(9)=spvae7k2(iv1)
      acd303(10)=l5(iv1)
      acd303(11)=abb303(51)
      acd303(12)=l5(iv2)
      acd303(13)=e7(iv1)
      acd303(14)=spvak1k2(iv2)
      acd303(15)=dotproduct(qshift,spval5k2)
      acd303(16)=abb303(26)
      acd303(17)=spval5k2(iv2)
      acd303(18)=dotproduct(qshift,spvak1k2)
      acd303(19)=dotproduct(qshift,spvak4k2)
      acd303(20)=abb303(25)
      acd303(21)=abb303(9)
      acd303(22)=spvak4k2(iv2)
      acd303(23)=e7(iv2)
      acd303(24)=spvak1k2(iv1)
      acd303(25)=spval5k2(iv1)
      acd303(26)=spvak4k2(iv1)
      acd303(27)=qshift(iv1)
      acd303(28)=qshift(iv2)
      acd303(29)=abb303(12)
      acd303(30)=spval5e7(iv2)
      acd303(31)=abb303(55)
      acd303(32)=spval5e7(iv1)
      acd303(33)=dotproduct(e7,qshift)
      acd303(34)=abb303(21)
      acd303(35)=abb303(23)
      acd303(36)=spval6k2(iv2)
      acd303(37)=abb303(13)
      acd303(38)=spvak7k2(iv2)
      acd303(39)=abb303(15)
      acd303(40)=spval6e7(iv2)
      acd303(41)=abb303(11)
      acd303(42)=spval6k2(iv1)
      acd303(43)=spvak7k2(iv1)
      acd303(44)=spval6e7(iv1)
      acd303(45)=spval5l6(iv2)
      acd303(46)=abb303(19)
      acd303(47)=spval5l6(iv1)
      acd303(48)=spval5k7(iv2)
      acd303(49)=abb303(16)
      acd303(50)=spval5k7(iv1)
      acd303(51)=acd303(5)*acd303(7)
      acd303(52)=acd303(10)*acd303(11)
      acd303(53)=2.0_ki*acd303(3)
      acd303(54)=-acd303(27)*acd303(53)
      acd303(55)=acd303(32)*acd303(31)
      acd303(51)=acd303(55)+acd303(54)+acd303(52)+acd303(51)
      acd303(51)=acd303(6)*acd303(51)
      acd303(52)=acd303(8)*acd303(7)
      acd303(54)=acd303(12)*acd303(11)
      acd303(55)=-acd303(28)*acd303(53)
      acd303(56)=acd303(30)*acd303(31)
      acd303(52)=acd303(56)+acd303(55)+acd303(54)+acd303(52)
      acd303(52)=acd303(9)*acd303(52)
      acd303(54)=-acd303(18)*acd303(16)
      acd303(55)=-acd303(19)*acd303(20)
      acd303(54)=acd303(21)+acd303(55)+acd303(54)
      acd303(55)=acd303(13)*acd303(17)
      acd303(56)=acd303(23)*acd303(25)
      acd303(55)=acd303(55)+acd303(56)
      acd303(54)=acd303(55)*acd303(54)
      acd303(55)=acd303(42)*acd303(37)
      acd303(56)=acd303(43)*acd303(39)
      acd303(57)=acd303(44)*acd303(41)
      acd303(55)=acd303(57)+acd303(56)+acd303(55)
      acd303(55)=acd303(17)*acd303(55)
      acd303(56)=acd303(37)*acd303(36)
      acd303(57)=acd303(39)*acd303(38)
      acd303(58)=acd303(40)*acd303(41)
      acd303(56)=acd303(58)+acd303(57)+acd303(56)
      acd303(56)=acd303(25)*acd303(56)
      acd303(57)=acd303(45)*acd303(42)
      acd303(58)=acd303(47)*acd303(36)
      acd303(57)=acd303(58)+acd303(57)
      acd303(57)=acd303(46)*acd303(57)
      acd303(58)=acd303(48)*acd303(43)
      acd303(59)=acd303(50)*acd303(38)
      acd303(58)=acd303(59)+acd303(58)
      acd303(58)=acd303(49)*acd303(58)
      acd303(59)=acd303(15)*acd303(13)
      acd303(60)=-acd303(16)*acd303(59)
      acd303(61)=acd303(33)*acd303(16)
      acd303(62)=-acd303(25)*acd303(61)
      acd303(60)=acd303(60)+acd303(62)
      acd303(60)=acd303(14)*acd303(60)
      acd303(59)=-acd303(20)*acd303(59)
      acd303(62)=acd303(33)*acd303(20)
      acd303(63)=-acd303(25)*acd303(62)
      acd303(59)=acd303(59)+acd303(63)
      acd303(59)=acd303(22)*acd303(59)
      acd303(63)=acd303(15)*acd303(23)
      acd303(64)=-acd303(16)*acd303(63)
      acd303(61)=-acd303(17)*acd303(61)
      acd303(61)=acd303(64)+acd303(61)
      acd303(61)=acd303(24)*acd303(61)
      acd303(63)=-acd303(20)*acd303(63)
      acd303(62)=-acd303(17)*acd303(62)
      acd303(62)=acd303(63)+acd303(62)
      acd303(62)=acd303(26)*acd303(62)
      acd303(63)=acd303(6)*acd303(25)
      acd303(64)=acd303(9)*acd303(17)
      acd303(63)=acd303(63)+acd303(64)
      acd303(63)=acd303(29)*acd303(63)
      acd303(64)=acd303(14)*acd303(25)
      acd303(65)=acd303(24)*acd303(17)
      acd303(64)=acd303(64)+acd303(65)
      acd303(64)=acd303(34)*acd303(64)
      acd303(65)=acd303(22)*acd303(25)
      acd303(66)=acd303(26)*acd303(17)
      acd303(65)=acd303(65)+acd303(66)
      acd303(65)=acd303(35)*acd303(65)
      acd303(53)=-acd303(2)*acd303(53)
      acd303(53)=2.0_ki*acd303(4)+acd303(53)
      acd303(53)=acd303(1)*acd303(53)
      brack=acd303(51)+acd303(52)+acd303(53)+acd303(54)+acd303(55)+acd303(56)+a&
      &cd303(57)+acd303(58)+acd303(59)+acd303(60)+acd303(61)+acd303(62)+acd303(&
      &63)+acd303(64)+acd303(65)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd303h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd303
      complex(ki) :: brack
      acd303(1)=d(iv1,iv2)
      acd303(2)=spvae7k2(iv3)
      acd303(3)=abb303(18)
      acd303(4)=d(iv1,iv3)
      acd303(5)=spvae7k2(iv2)
      acd303(6)=d(iv2,iv3)
      acd303(7)=spvae7k2(iv1)
      acd303(8)=e7(iv1)
      acd303(9)=spvak1k2(iv2)
      acd303(10)=spval5k2(iv3)
      acd303(11)=abb303(26)
      acd303(12)=spvak1k2(iv3)
      acd303(13)=spval5k2(iv2)
      acd303(14)=spvak4k2(iv3)
      acd303(15)=abb303(25)
      acd303(16)=spvak4k2(iv2)
      acd303(17)=e7(iv2)
      acd303(18)=spvak1k2(iv1)
      acd303(19)=spval5k2(iv1)
      acd303(20)=spvak4k2(iv1)
      acd303(21)=e7(iv3)
      acd303(22)=acd303(10)*acd303(8)
      acd303(23)=acd303(21)*acd303(19)
      acd303(22)=acd303(22)+acd303(23)
      acd303(23)=acd303(9)*acd303(22)
      acd303(24)=acd303(13)*acd303(8)
      acd303(25)=acd303(19)*acd303(17)
      acd303(24)=acd303(24)+acd303(25)
      acd303(25)=acd303(12)*acd303(24)
      acd303(26)=acd303(17)*acd303(10)
      acd303(27)=acd303(21)*acd303(13)
      acd303(26)=acd303(26)+acd303(27)
      acd303(27)=acd303(18)*acd303(26)
      acd303(23)=acd303(27)+acd303(23)+acd303(25)
      acd303(23)=acd303(11)*acd303(23)
      acd303(24)=acd303(14)*acd303(24)
      acd303(22)=acd303(16)*acd303(22)
      acd303(25)=acd303(20)*acd303(26)
      acd303(22)=acd303(25)+acd303(22)+acd303(24)
      acd303(22)=acd303(15)*acd303(22)
      acd303(24)=acd303(2)*acd303(1)
      acd303(25)=acd303(5)*acd303(4)
      acd303(26)=acd303(7)*acd303(6)
      acd303(24)=acd303(26)+acd303(25)+acd303(24)
      acd303(25)=2.0_ki*acd303(3)
      acd303(24)=acd303(25)*acd303(24)
      brack=acd303(22)+acd303(23)+acd303(24)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd303h0
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
      qshift = k5
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
!---#[ subroutine reconstruct_d303:
   subroutine     reconstruct_d303(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group12
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group12), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_303:
      coeffs%coeffs_303%c0 = derivative(czip)
      coeffs%coeffs_303%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_303%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_303%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_303%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_303%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_303%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_303%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_303%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_303%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_303%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_303%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_303%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_303%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_303%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_303%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_303%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_303%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_303%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_303%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_303%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_303%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_303%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_303%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_303%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_303%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_303%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_303%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_303%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_303%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_303%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_303%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_303%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_303:
   end subroutine reconstruct_d303
!---#] subroutine reconstruct_d303:
end module     p1_dbarc_epnebbbarg_d303h0l1d
