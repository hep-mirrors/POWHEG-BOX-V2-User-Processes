module     p9_csbar_epnebbbarg_d313h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d313h0l1d.f90
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
   public :: derivative , reconstruct_d313
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd313h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd313
      complex(ki) :: brack
      acd313(1)=dotproduct(k2,qshift)
      acd313(2)=dotproduct(e7,qshift)
      acd313(3)=dotproduct(qshift,spval6k1)
      acd313(4)=abb313(52)
      acd313(5)=abb313(34)
      acd313(6)=dotproduct(qshift,spvae7k1)
      acd313(7)=abb313(50)
      acd313(8)=dotproduct(qshift,spval5e7)
      acd313(9)=abb313(38)
      acd313(10)=abb313(42)
      acd313(11)=dotproduct(k7,qshift)
      acd313(12)=abb313(45)
      acd313(13)=abb313(49)
      acd313(14)=dotproduct(qshift,spval5k1)
      acd313(15)=abb313(57)
      acd313(16)=dotproduct(qshift,spvae7k2)
      acd313(17)=abb313(44)
      acd313(18)=abb313(33)
      acd313(19)=dotproduct(qshift,spvak4k2)
      acd313(20)=abb313(14)
      acd313(21)=abb313(46)
      acd313(22)=abb313(35)
      acd313(23)=dotproduct(qshift,spvak2k1)
      acd313(24)=dotproduct(qshift,spval5k2)
      acd313(25)=abb313(10)
      acd313(26)=dotproduct(qshift,spval6k2)
      acd313(27)=abb313(15)
      acd313(28)=abb313(9)
      acd313(29)=dotproduct(qshift,spvak4k1)
      acd313(30)=abb313(59)
      acd313(31)=abb313(8)
      acd313(32)=dotproduct(qshift,spvak2l5)
      acd313(33)=abb313(43)
      acd313(34)=abb313(16)
      acd313(35)=abb313(12)
      acd313(36)=dotproduct(qshift,spvak4l5)
      acd313(37)=abb313(67)
      acd313(38)=dotproduct(qshift,spval5k7)
      acd313(39)=abb313(41)
      acd313(40)=dotproduct(qshift,spval6l5)
      acd313(41)=abb313(55)
      acd313(42)=dotproduct(qshift,spvak7k1)
      acd313(43)=abb313(36)
      acd313(44)=dotproduct(qshift,spvak7k2)
      acd313(45)=abb313(23)
      acd313(46)=abb313(28)
      acd313(47)=dotproduct(qshift,qshift)
      acd313(48)=abb313(32)
      acd313(49)=abb313(29)
      acd313(50)=abb313(58)
      acd313(51)=abb313(27)
      acd313(52)=abb313(18)
      acd313(53)=abb313(19)
      acd313(54)=abb313(39)
      acd313(55)=abb313(24)
      acd313(56)=abb313(40)
      acd313(57)=abb313(61)
      acd313(58)=abb313(60)
      acd313(59)=abb313(13)
      acd313(60)=abb313(37)
      acd313(61)=abb313(51)
      acd313(62)=abb313(62)
      acd313(63)=dotproduct(qshift,spvak2e7)
      acd313(64)=dotproduct(qshift,spvak4e7)
      acd313(65)=abb313(26)
      acd313(66)=abb313(21)
      acd313(67)=abb313(22)
      acd313(68)=abb313(31)
      acd313(69)=abb313(20)
      acd313(70)=abb313(30)
      acd313(71)=abb313(25)
      acd313(72)=abb313(48)
      acd313(73)=abb313(65)
      acd313(74)=abb313(54)
      acd313(75)=abb313(11)
      acd313(76)=abb313(17)
      acd313(77)=acd313(24)*acd313(30)
      acd313(78)=acd313(26)*acd313(20)
      acd313(77)=acd313(78)+acd313(34)+acd313(77)
      acd313(77)=acd313(29)*acd313(77)
      acd313(78)=-acd313(24)*acd313(25)
      acd313(79)=-acd313(26)*acd313(27)
      acd313(78)=acd313(79)+acd313(28)+acd313(78)
      acd313(78)=acd313(23)*acd313(78)
      acd313(79)=acd313(38)*acd313(39)
      acd313(80)=acd313(44)*acd313(45)
      acd313(81)=acd313(42)*acd313(43)
      acd313(82)=acd313(40)*acd313(41)
      acd313(83)=acd313(36)*acd313(37)
      acd313(84)=acd313(32)*acd313(33)
      acd313(85)=acd313(26)*acd313(31)
      acd313(86)=acd313(19)*acd313(35)
      acd313(87)=-acd313(19)*acd313(20)
      acd313(87)=acd313(21)+acd313(87)
      acd313(87)=acd313(3)*acd313(87)
      acd313(88)=-acd313(3)*acd313(4)
      acd313(88)=acd313(5)+acd313(88)
      acd313(88)=acd313(1)*acd313(88)
      acd313(89)=acd313(14)*acd313(22)
      acd313(77)=acd313(89)+acd313(78)+acd313(77)+acd313(88)+acd313(87)+acd313(&
      &86)+acd313(85)+acd313(84)+acd313(83)+acd313(82)+acd313(81)+acd313(80)-ac&
      &d313(46)+acd313(79)
      acd313(77)=acd313(2)*acd313(77)
      acd313(78)=-acd313(47)*acd313(49)
      acd313(79)=acd313(19)*acd313(59)
      acd313(80)=acd313(11)*acd313(13)
      acd313(81)=acd313(1)*acd313(9)
      acd313(82)=acd313(29)*acd313(58)
      acd313(83)=-acd313(23)*acd313(57)
      acd313(78)=acd313(83)+acd313(82)+acd313(81)+acd313(80)+acd313(79)-acd313(&
      &60)+acd313(78)
      acd313(78)=acd313(8)*acd313(78)
      acd313(79)=-acd313(58)*acd313(64)
      acd313(80)=acd313(57)*acd313(63)
      acd313(81)=acd313(44)*acd313(62)
      acd313(82)=-acd313(47)*acd313(50)
      acd313(83)=acd313(11)*acd313(15)
      acd313(84)=acd313(16)*acd313(61)
      acd313(79)=acd313(84)+acd313(83)+acd313(82)+acd313(81)+acd313(80)-acd313(&
      &65)+acd313(79)
      acd313(79)=acd313(14)*acd313(79)
      acd313(80)=-acd313(47)*acd313(48)
      acd313(81)=-acd313(26)*acd313(53)
      acd313(82)=-acd313(19)*acd313(55)
      acd313(83)=acd313(11)*acd313(12)
      acd313(84)=acd313(1)*acd313(7)
      acd313(80)=acd313(84)+acd313(83)+acd313(82)+acd313(81)-acd313(56)+acd313(&
      &80)
      acd313(80)=acd313(6)*acd313(80)
      acd313(81)=-acd313(47)*acd313(51)
      acd313(82)=acd313(11)*acd313(17)
      acd313(83)=acd313(3)*acd313(53)
      acd313(84)=acd313(29)*acd313(55)
      acd313(85)=acd313(23)*acd313(66)
      acd313(81)=acd313(85)+acd313(84)+acd313(83)+acd313(82)-acd313(67)+acd313(&
      &81)
      acd313(81)=acd313(16)*acd313(81)
      acd313(82)=-acd313(42)*acd313(75)
      acd313(83)=-acd313(40)*acd313(74)
      acd313(84)=-acd313(36)*acd313(73)
      acd313(85)=-acd313(32)*acd313(70)
      acd313(86)=acd313(47)*acd313(52)
      acd313(87)=-acd313(26)*acd313(69)
      acd313(88)=-acd313(19)*acd313(72)
      acd313(89)=-acd313(11)*acd313(18)
      acd313(90)=-acd313(3)*acd313(54)
      acd313(91)=-acd313(1)*acd313(10)
      acd313(92)=-acd313(29)*acd313(71)
      acd313(93)=-acd313(23)*acd313(68)
      brack=acd313(76)+acd313(77)+acd313(78)+acd313(79)+acd313(80)+acd313(81)+a&
      &cd313(82)+acd313(83)+acd313(84)+acd313(85)+acd313(86)+acd313(87)+acd313(&
      &88)+acd313(89)+acd313(90)+acd313(91)+acd313(92)+acd313(93)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd313h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd313
      complex(ki) :: brack
      acd313(1)=k2(iv1)
      acd313(2)=dotproduct(e7,qshift)
      acd313(3)=dotproduct(qshift,spval6k1)
      acd313(4)=abb313(52)
      acd313(5)=abb313(34)
      acd313(6)=dotproduct(qshift,spvae7k1)
      acd313(7)=abb313(50)
      acd313(8)=dotproduct(qshift,spval5e7)
      acd313(9)=abb313(38)
      acd313(10)=abb313(42)
      acd313(11)=k7(iv1)
      acd313(12)=abb313(45)
      acd313(13)=abb313(49)
      acd313(14)=dotproduct(qshift,spval5k1)
      acd313(15)=abb313(57)
      acd313(16)=dotproduct(qshift,spvae7k2)
      acd313(17)=abb313(44)
      acd313(18)=abb313(33)
      acd313(19)=e7(iv1)
      acd313(20)=dotproduct(k2,qshift)
      acd313(21)=dotproduct(qshift,spvak4k2)
      acd313(22)=abb313(14)
      acd313(23)=abb313(46)
      acd313(24)=abb313(35)
      acd313(25)=dotproduct(qshift,spvak2k1)
      acd313(26)=dotproduct(qshift,spval5k2)
      acd313(27)=abb313(10)
      acd313(28)=dotproduct(qshift,spval6k2)
      acd313(29)=abb313(15)
      acd313(30)=abb313(9)
      acd313(31)=dotproduct(qshift,spvak4k1)
      acd313(32)=abb313(59)
      acd313(33)=abb313(8)
      acd313(34)=dotproduct(qshift,spvak2l5)
      acd313(35)=abb313(43)
      acd313(36)=abb313(16)
      acd313(37)=abb313(12)
      acd313(38)=dotproduct(qshift,spvak4l5)
      acd313(39)=abb313(67)
      acd313(40)=dotproduct(qshift,spval5k7)
      acd313(41)=abb313(41)
      acd313(42)=dotproduct(qshift,spval6l5)
      acd313(43)=abb313(55)
      acd313(44)=dotproduct(qshift,spvak7k1)
      acd313(45)=abb313(36)
      acd313(46)=dotproduct(qshift,spvak7k2)
      acd313(47)=abb313(23)
      acd313(48)=abb313(28)
      acd313(49)=qshift(iv1)
      acd313(50)=abb313(32)
      acd313(51)=abb313(29)
      acd313(52)=abb313(58)
      acd313(53)=abb313(27)
      acd313(54)=abb313(18)
      acd313(55)=spval6k1(iv1)
      acd313(56)=abb313(19)
      acd313(57)=abb313(39)
      acd313(58)=spvae7k1(iv1)
      acd313(59)=dotproduct(k7,qshift)
      acd313(60)=dotproduct(qshift,qshift)
      acd313(61)=abb313(24)
      acd313(62)=abb313(40)
      acd313(63)=spval5e7(iv1)
      acd313(64)=abb313(61)
      acd313(65)=abb313(60)
      acd313(66)=abb313(13)
      acd313(67)=abb313(37)
      acd313(68)=spval5k1(iv1)
      acd313(69)=abb313(51)
      acd313(70)=abb313(62)
      acd313(71)=dotproduct(qshift,spvak2e7)
      acd313(72)=dotproduct(qshift,spvak4e7)
      acd313(73)=abb313(26)
      acd313(74)=spvae7k2(iv1)
      acd313(75)=abb313(21)
      acd313(76)=abb313(22)
      acd313(77)=spvak2k1(iv1)
      acd313(78)=abb313(31)
      acd313(79)=spval5k2(iv1)
      acd313(80)=spval6k2(iv1)
      acd313(81)=abb313(20)
      acd313(82)=spvak2l5(iv1)
      acd313(83)=abb313(30)
      acd313(84)=spvak4k1(iv1)
      acd313(85)=abb313(25)
      acd313(86)=spvak4k2(iv1)
      acd313(87)=abb313(48)
      acd313(88)=spvak4l5(iv1)
      acd313(89)=abb313(65)
      acd313(90)=spval5k7(iv1)
      acd313(91)=spval6l5(iv1)
      acd313(92)=abb313(54)
      acd313(93)=spvak7k1(iv1)
      acd313(94)=abb313(11)
      acd313(95)=spvak7k2(iv1)
      acd313(96)=spvak2e7(iv1)
      acd313(97)=spvak4e7(iv1)
      acd313(98)=acd313(26)*acd313(27)
      acd313(99)=acd313(28)*acd313(29)
      acd313(98)=acd313(99)+acd313(98)-acd313(30)
      acd313(99)=-acd313(77)*acd313(98)
      acd313(100)=-acd313(21)*acd313(55)
      acd313(101)=acd313(28)*acd313(84)
      acd313(100)=acd313(100)+acd313(101)
      acd313(100)=acd313(22)*acd313(100)
      acd313(101)=-acd313(1)*acd313(4)
      acd313(102)=-acd313(22)*acd313(86)
      acd313(101)=acd313(101)+acd313(102)
      acd313(101)=acd313(3)*acd313(101)
      acd313(102)=acd313(32)*acd313(79)
      acd313(103)=acd313(22)*acd313(80)
      acd313(102)=acd313(102)+acd313(103)
      acd313(102)=acd313(31)*acd313(102)
      acd313(103)=-acd313(27)*acd313(79)
      acd313(104)=-acd313(80)*acd313(29)
      acd313(103)=acd313(103)+acd313(104)
      acd313(103)=acd313(25)*acd313(103)
      acd313(104)=acd313(20)*acd313(4)
      acd313(104)=acd313(104)-acd313(23)
      acd313(105)=-acd313(55)*acd313(104)
      acd313(106)=acd313(47)*acd313(95)
      acd313(107)=acd313(45)*acd313(93)
      acd313(108)=acd313(43)*acd313(91)
      acd313(109)=acd313(41)*acd313(90)
      acd313(110)=acd313(39)*acd313(88)
      acd313(111)=acd313(35)*acd313(82)
      acd313(112)=acd313(86)*acd313(37)
      acd313(113)=acd313(80)*acd313(33)
      acd313(114)=acd313(1)*acd313(5)
      acd313(115)=acd313(26)*acd313(32)
      acd313(115)=acd313(115)+acd313(36)
      acd313(116)=acd313(84)*acd313(115)
      acd313(117)=acd313(68)*acd313(24)
      acd313(99)=acd313(117)+acd313(103)+acd313(102)+acd313(101)+acd313(100)+ac&
      &d313(116)+acd313(114)+acd313(113)+acd313(112)+acd313(111)+acd313(110)+ac&
      &d313(109)+acd313(108)+acd313(106)+acd313(107)+acd313(99)+acd313(105)
      acd313(99)=acd313(2)*acd313(99)
      acd313(100)=-acd313(22)*acd313(21)
      acd313(100)=acd313(100)-acd313(104)
      acd313(100)=acd313(3)*acd313(100)
      acd313(101)=acd313(22)*acd313(28)
      acd313(101)=acd313(101)+acd313(115)
      acd313(101)=acd313(31)*acd313(101)
      acd313(98)=-acd313(25)*acd313(98)
      acd313(102)=acd313(46)*acd313(47)
      acd313(103)=acd313(45)*acd313(44)
      acd313(104)=acd313(43)*acd313(42)
      acd313(105)=acd313(41)*acd313(40)
      acd313(106)=acd313(39)*acd313(38)
      acd313(107)=acd313(35)*acd313(34)
      acd313(108)=acd313(21)*acd313(37)
      acd313(109)=acd313(20)*acd313(5)
      acd313(110)=acd313(28)*acd313(33)
      acd313(111)=acd313(14)*acd313(24)
      acd313(98)=acd313(111)+acd313(98)+acd313(101)+acd313(100)+acd313(110)+acd&
      &313(109)+acd313(108)+acd313(107)+acd313(106)+acd313(105)+acd313(104)+acd&
      &313(103)-acd313(48)+acd313(102)
      acd313(98)=acd313(19)*acd313(98)
      acd313(100)=acd313(86)*acd313(66)
      acd313(101)=2.0_ki*acd313(49)
      acd313(102)=-acd313(51)*acd313(101)
      acd313(103)=acd313(11)*acd313(13)
      acd313(104)=acd313(1)*acd313(9)
      acd313(105)=acd313(84)*acd313(65)
      acd313(106)=-acd313(77)*acd313(64)
      acd313(100)=acd313(106)+acd313(105)+acd313(104)+acd313(103)+acd313(100)+a&
      &cd313(102)
      acd313(100)=acd313(8)*acd313(100)
      acd313(102)=acd313(70)*acd313(95)
      acd313(103)=-acd313(65)*acd313(97)
      acd313(104)=acd313(64)*acd313(96)
      acd313(105)=-acd313(52)*acd313(101)
      acd313(106)=acd313(11)*acd313(15)
      acd313(107)=acd313(74)*acd313(69)
      acd313(102)=acd313(107)+acd313(106)+acd313(105)+acd313(104)+acd313(102)+a&
      &cd313(103)
      acd313(102)=acd313(14)*acd313(102)
      acd313(103)=acd313(46)*acd313(70)
      acd313(104)=-acd313(65)*acd313(72)
      acd313(105)=acd313(64)*acd313(71)
      acd313(106)=-acd313(60)*acd313(52)
      acd313(107)=acd313(59)*acd313(15)
      acd313(108)=acd313(16)*acd313(69)
      acd313(103)=acd313(108)+acd313(107)+acd313(106)+acd313(105)+acd313(104)-a&
      &cd313(73)+acd313(103)
      acd313(103)=acd313(68)*acd313(103)
      acd313(104)=-acd313(60)*acd313(50)
      acd313(105)=acd313(59)*acd313(12)
      acd313(106)=-acd313(21)*acd313(61)
      acd313(107)=acd313(20)*acd313(7)
      acd313(108)=-acd313(28)*acd313(56)
      acd313(104)=acd313(108)+acd313(107)+acd313(106)+acd313(105)-acd313(62)+ac&
      &d313(104)
      acd313(104)=acd313(58)*acd313(104)
      acd313(105)=acd313(55)*acd313(56)
      acd313(106)=-acd313(53)*acd313(101)
      acd313(107)=acd313(11)*acd313(17)
      acd313(108)=acd313(84)*acd313(61)
      acd313(109)=acd313(77)*acd313(75)
      acd313(105)=acd313(109)+acd313(108)+acd313(107)+acd313(105)+acd313(106)
      acd313(105)=acd313(16)*acd313(105)
      acd313(106)=-acd313(86)*acd313(61)
      acd313(107)=-acd313(80)*acd313(56)
      acd313(108)=-acd313(50)*acd313(101)
      acd313(109)=acd313(11)*acd313(12)
      acd313(106)=acd313(109)+acd313(108)+acd313(106)+acd313(107)
      acd313(106)=acd313(6)*acd313(106)
      acd313(107)=-acd313(60)*acd313(51)
      acd313(108)=acd313(59)*acd313(13)
      acd313(109)=acd313(21)*acd313(66)
      acd313(110)=acd313(20)*acd313(9)
      acd313(107)=acd313(110)+acd313(109)+acd313(108)-acd313(67)+acd313(107)
      acd313(107)=acd313(63)*acd313(107)
      acd313(108)=-acd313(60)*acd313(53)
      acd313(109)=acd313(59)*acd313(17)
      acd313(110)=acd313(3)*acd313(56)
      acd313(108)=acd313(110)+acd313(109)-acd313(76)+acd313(108)
      acd313(108)=acd313(74)*acd313(108)
      acd313(109)=acd313(74)*acd313(61)
      acd313(110)=acd313(63)*acd313(65)
      acd313(109)=acd313(109)+acd313(110)
      acd313(109)=acd313(31)*acd313(109)
      acd313(110)=acd313(74)*acd313(75)
      acd313(111)=-acd313(63)*acd313(64)
      acd313(110)=acd313(110)+acd313(111)
      acd313(110)=acd313(25)*acd313(110)
      acd313(111)=-acd313(93)*acd313(94)
      acd313(112)=-acd313(91)*acd313(92)
      acd313(113)=-acd313(88)*acd313(89)
      acd313(114)=-acd313(82)*acd313(83)
      acd313(115)=-acd313(86)*acd313(87)
      acd313(116)=-acd313(80)*acd313(81)
      acd313(117)=-acd313(55)*acd313(57)
      acd313(101)=acd313(54)*acd313(101)
      acd313(118)=-acd313(11)*acd313(18)
      acd313(119)=acd313(6)*acd313(7)
      acd313(119)=-acd313(10)+acd313(119)
      acd313(119)=acd313(1)*acd313(119)
      acd313(120)=-acd313(84)*acd313(85)
      acd313(121)=-acd313(77)*acd313(78)
      brack=acd313(98)+acd313(99)+acd313(100)+acd313(101)+acd313(102)+acd313(10&
      &3)+acd313(104)+acd313(105)+acd313(106)+acd313(107)+acd313(108)+acd313(10&
      &9)+acd313(110)+acd313(111)+acd313(112)+acd313(113)+acd313(114)+acd313(11&
      &5)+acd313(116)+acd313(117)+acd313(118)+acd313(119)+acd313(120)+acd313(12&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd313h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(115) :: acd313
      complex(ki) :: brack
      acd313(1)=d(iv1,iv2)
      acd313(2)=dotproduct(qshift,spval5k1)
      acd313(3)=abb313(58)
      acd313(4)=dotproduct(qshift,spvae7k1)
      acd313(5)=abb313(32)
      acd313(6)=dotproduct(qshift,spvae7k2)
      acd313(7)=abb313(27)
      acd313(8)=dotproduct(qshift,spval5e7)
      acd313(9)=abb313(29)
      acd313(10)=abb313(18)
      acd313(11)=k2(iv1)
      acd313(12)=e7(iv2)
      acd313(13)=dotproduct(qshift,spval6k1)
      acd313(14)=abb313(52)
      acd313(15)=abb313(34)
      acd313(16)=spvae7k1(iv2)
      acd313(17)=abb313(50)
      acd313(18)=spval5e7(iv2)
      acd313(19)=abb313(38)
      acd313(20)=spval6k1(iv2)
      acd313(21)=dotproduct(e7,qshift)
      acd313(22)=k2(iv2)
      acd313(23)=e7(iv1)
      acd313(24)=spvae7k1(iv1)
      acd313(25)=spval5e7(iv1)
      acd313(26)=spval6k1(iv1)
      acd313(27)=k7(iv1)
      acd313(28)=spval5k1(iv2)
      acd313(29)=abb313(57)
      acd313(30)=abb313(45)
      acd313(31)=spvae7k2(iv2)
      acd313(32)=abb313(44)
      acd313(33)=abb313(49)
      acd313(34)=k7(iv2)
      acd313(35)=spval5k1(iv1)
      acd313(36)=spvae7k2(iv1)
      acd313(37)=abb313(35)
      acd313(38)=dotproduct(k2,qshift)
      acd313(39)=dotproduct(qshift,spvak4k2)
      acd313(40)=abb313(14)
      acd313(41)=abb313(46)
      acd313(42)=spvak2k1(iv2)
      acd313(43)=dotproduct(qshift,spval5k2)
      acd313(44)=abb313(10)
      acd313(45)=dotproduct(qshift,spval6k2)
      acd313(46)=abb313(15)
      acd313(47)=abb313(9)
      acd313(48)=spval5k2(iv2)
      acd313(49)=dotproduct(qshift,spvak2k1)
      acd313(50)=dotproduct(qshift,spvak4k1)
      acd313(51)=abb313(59)
      acd313(52)=spval6k2(iv2)
      acd313(53)=abb313(8)
      acd313(54)=spvak2l5(iv2)
      acd313(55)=abb313(43)
      acd313(56)=spvak4k1(iv2)
      acd313(57)=abb313(16)
      acd313(58)=spvak4k2(iv2)
      acd313(59)=abb313(12)
      acd313(60)=spvak4l5(iv2)
      acd313(61)=abb313(67)
      acd313(62)=spval5k7(iv2)
      acd313(63)=abb313(41)
      acd313(64)=spval6l5(iv2)
      acd313(65)=abb313(55)
      acd313(66)=spvak7k1(iv2)
      acd313(67)=abb313(36)
      acd313(68)=spvak7k2(iv2)
      acd313(69)=abb313(23)
      acd313(70)=spvak2k1(iv1)
      acd313(71)=spval5k2(iv1)
      acd313(72)=spval6k2(iv1)
      acd313(73)=spvak2l5(iv1)
      acd313(74)=spvak4k1(iv1)
      acd313(75)=spvak4k2(iv1)
      acd313(76)=spvak4l5(iv1)
      acd313(77)=spval5k7(iv1)
      acd313(78)=spval6l5(iv1)
      acd313(79)=spvak7k1(iv1)
      acd313(80)=spvak7k2(iv1)
      acd313(81)=qshift(iv1)
      acd313(82)=qshift(iv2)
      acd313(83)=abb313(51)
      acd313(84)=abb313(62)
      acd313(85)=spvak2e7(iv2)
      acd313(86)=abb313(61)
      acd313(87)=spvak4e7(iv2)
      acd313(88)=abb313(60)
      acd313(89)=spvak2e7(iv1)
      acd313(90)=spvak4e7(iv1)
      acd313(91)=abb313(19)
      acd313(92)=abb313(24)
      acd313(93)=abb313(21)
      acd313(94)=abb313(13)
      acd313(95)=-acd313(58)*acd313(13)
      acd313(96)=acd313(52)*acd313(50)
      acd313(97)=-acd313(20)*acd313(39)
      acd313(98)=acd313(56)*acd313(45)
      acd313(95)=acd313(98)+acd313(97)+acd313(95)+acd313(96)
      acd313(95)=acd313(40)*acd313(95)
      acd313(96)=acd313(46)*acd313(52)
      acd313(97)=acd313(44)*acd313(48)
      acd313(96)=acd313(96)+acd313(97)
      acd313(97)=-acd313(49)*acd313(96)
      acd313(98)=-acd313(22)*acd313(13)
      acd313(99)=-acd313(20)*acd313(38)
      acd313(98)=acd313(98)+acd313(99)
      acd313(98)=acd313(14)*acd313(98)
      acd313(99)=acd313(46)*acd313(45)
      acd313(100)=acd313(44)*acd313(43)
      acd313(99)=-acd313(47)+acd313(99)+acd313(100)
      acd313(100)=-acd313(42)*acd313(99)
      acd313(101)=acd313(68)*acd313(69)
      acd313(102)=acd313(67)*acd313(66)
      acd313(103)=acd313(65)*acd313(64)
      acd313(104)=acd313(63)*acd313(62)
      acd313(105)=acd313(61)*acd313(60)
      acd313(106)=acd313(55)*acd313(54)
      acd313(107)=acd313(58)*acd313(59)
      acd313(108)=acd313(22)*acd313(15)
      acd313(109)=acd313(52)*acd313(53)
      acd313(110)=acd313(51)*acd313(50)
      acd313(111)=acd313(48)*acd313(110)
      acd313(112)=acd313(20)*acd313(41)
      acd313(113)=acd313(51)*acd313(43)
      acd313(113)=acd313(113)+acd313(57)
      acd313(114)=acd313(56)*acd313(113)
      acd313(115)=acd313(28)*acd313(37)
      acd313(95)=acd313(95)+acd313(115)+acd313(100)+acd313(114)+acd313(98)+acd3&
      &13(112)+acd313(111)+acd313(109)+acd313(108)+acd313(107)+acd313(106)+acd3&
      &13(105)+acd313(104)+acd313(103)+acd313(101)+acd313(102)+acd313(97)
      acd313(95)=acd313(23)*acd313(95)
      acd313(97)=-acd313(75)*acd313(13)
      acd313(98)=acd313(72)*acd313(50)
      acd313(100)=-acd313(26)*acd313(39)
      acd313(101)=acd313(74)*acd313(45)
      acd313(97)=acd313(101)+acd313(100)+acd313(97)+acd313(98)
      acd313(97)=acd313(40)*acd313(97)
      acd313(98)=acd313(44)*acd313(49)
      acd313(98)=-acd313(98)+acd313(110)
      acd313(98)=acd313(71)*acd313(98)
      acd313(100)=-acd313(11)*acd313(13)
      acd313(101)=-acd313(26)*acd313(38)
      acd313(100)=acd313(100)+acd313(101)
      acd313(100)=acd313(14)*acd313(100)
      acd313(99)=-acd313(70)*acd313(99)
      acd313(101)=acd313(69)*acd313(80)
      acd313(102)=acd313(67)*acd313(79)
      acd313(103)=acd313(65)*acd313(78)
      acd313(104)=acd313(63)*acd313(77)
      acd313(105)=acd313(61)*acd313(76)
      acd313(106)=acd313(55)*acd313(73)
      acd313(107)=acd313(75)*acd313(59)
      acd313(108)=acd313(11)*acd313(15)
      acd313(109)=acd313(72)*acd313(53)
      acd313(110)=acd313(46)*acd313(72)
      acd313(111)=-acd313(49)*acd313(110)
      acd313(112)=acd313(26)*acd313(41)
      acd313(113)=acd313(74)*acd313(113)
      acd313(114)=acd313(35)*acd313(37)
      acd313(97)=acd313(97)+acd313(114)+acd313(99)+acd313(113)+acd313(100)+acd3&
      &13(112)+acd313(111)+acd313(109)+acd313(108)+acd313(107)+acd313(106)+acd3&
      &13(105)+acd313(104)+acd313(103)+acd313(101)+acd313(102)+acd313(98)
      acd313(97)=acd313(12)*acd313(97)
      acd313(98)=acd313(68)*acd313(84)
      acd313(99)=-acd313(88)*acd313(87)
      acd313(100)=acd313(86)*acd313(85)
      acd313(101)=2.0_ki*acd313(82)
      acd313(102)=-acd313(3)*acd313(101)
      acd313(103)=acd313(34)*acd313(29)
      acd313(104)=acd313(31)*acd313(83)
      acd313(98)=acd313(104)+acd313(103)+acd313(102)+acd313(100)+acd313(98)+acd&
      &313(99)
      acd313(98)=acd313(35)*acd313(98)
      acd313(99)=acd313(80)*acd313(84)
      acd313(100)=-acd313(88)*acd313(90)
      acd313(102)=acd313(86)*acd313(89)
      acd313(103)=2.0_ki*acd313(81)
      acd313(104)=-acd313(3)*acd313(103)
      acd313(105)=acd313(27)*acd313(29)
      acd313(106)=acd313(36)*acd313(83)
      acd313(99)=acd313(106)+acd313(105)+acd313(104)+acd313(102)+acd313(99)+acd&
      &313(100)
      acd313(99)=acd313(28)*acd313(99)
      acd313(100)=-acd313(26)*acd313(58)
      acd313(102)=-acd313(20)*acd313(75)
      acd313(104)=acd313(74)*acd313(52)
      acd313(105)=acd313(56)*acd313(72)
      acd313(100)=acd313(105)+acd313(104)+acd313(100)+acd313(102)
      acd313(100)=acd313(40)*acd313(100)
      acd313(102)=acd313(74)*acd313(48)
      acd313(104)=acd313(56)*acd313(71)
      acd313(102)=acd313(104)+acd313(102)
      acd313(102)=acd313(51)*acd313(102)
      acd313(104)=-acd313(26)*acd313(22)
      acd313(105)=-acd313(20)*acd313(11)
      acd313(104)=acd313(104)+acd313(105)
      acd313(104)=acd313(14)*acd313(104)
      acd313(96)=-acd313(70)*acd313(96)
      acd313(105)=acd313(44)*acd313(71)
      acd313(105)=-acd313(110)-acd313(105)
      acd313(105)=acd313(42)*acd313(105)
      acd313(96)=acd313(100)+acd313(105)+acd313(96)+acd313(104)+acd313(102)
      acd313(96)=acd313(21)*acd313(96)
      acd313(100)=-acd313(5)*acd313(101)
      acd313(102)=acd313(34)*acd313(30)
      acd313(104)=-acd313(58)*acd313(92)
      acd313(105)=acd313(22)*acd313(17)
      acd313(100)=acd313(105)+acd313(104)+acd313(100)+acd313(102)
      acd313(100)=acd313(24)*acd313(100)
      acd313(102)=-acd313(5)*acd313(103)
      acd313(104)=acd313(27)*acd313(30)
      acd313(105)=-acd313(75)*acd313(92)
      acd313(106)=acd313(11)*acd313(17)
      acd313(102)=acd313(106)+acd313(105)+acd313(102)+acd313(104)
      acd313(102)=acd313(16)*acd313(102)
      acd313(104)=-acd313(72)*acd313(16)
      acd313(105)=-acd313(52)*acd313(24)
      acd313(106)=acd313(26)*acd313(31)
      acd313(107)=acd313(20)*acd313(36)
      acd313(104)=acd313(107)+acd313(106)+acd313(105)+acd313(104)
      acd313(104)=acd313(91)*acd313(104)
      acd313(105)=-acd313(9)*acd313(8)
      acd313(106)=-acd313(7)*acd313(6)
      acd313(107)=-acd313(5)*acd313(4)
      acd313(108)=-acd313(3)*acd313(2)
      acd313(105)=acd313(108)+acd313(107)+acd313(106)+acd313(10)+acd313(105)
      acd313(105)=acd313(1)*acd313(105)
      acd313(106)=-acd313(9)*acd313(101)
      acd313(107)=acd313(34)*acd313(33)
      acd313(108)=acd313(58)*acd313(94)
      acd313(109)=acd313(22)*acd313(19)
      acd313(106)=acd313(109)+acd313(108)+acd313(106)+acd313(107)
      acd313(106)=acd313(25)*acd313(106)
      acd313(107)=-acd313(9)*acd313(103)
      acd313(108)=acd313(27)*acd313(33)
      acd313(109)=acd313(75)*acd313(94)
      acd313(110)=acd313(11)*acd313(19)
      acd313(107)=acd313(110)+acd313(109)+acd313(107)+acd313(108)
      acd313(107)=acd313(18)*acd313(107)
      acd313(101)=-acd313(7)*acd313(101)
      acd313(108)=acd313(34)*acd313(32)
      acd313(101)=acd313(101)+acd313(108)
      acd313(101)=acd313(36)*acd313(101)
      acd313(103)=-acd313(7)*acd313(103)
      acd313(108)=acd313(27)*acd313(32)
      acd313(103)=acd313(103)+acd313(108)
      acd313(103)=acd313(31)*acd313(103)
      acd313(108)=acd313(31)*acd313(92)
      acd313(109)=acd313(18)*acd313(88)
      acd313(108)=acd313(108)+acd313(109)
      acd313(108)=acd313(74)*acd313(108)
      acd313(109)=acd313(31)*acd313(93)
      acd313(110)=-acd313(18)*acd313(86)
      acd313(109)=acd313(109)+acd313(110)
      acd313(109)=acd313(70)*acd313(109)
      acd313(110)=acd313(36)*acd313(92)
      acd313(111)=acd313(25)*acd313(88)
      acd313(110)=acd313(110)+acd313(111)
      acd313(110)=acd313(56)*acd313(110)
      acd313(111)=acd313(36)*acd313(93)
      acd313(112)=-acd313(25)*acd313(86)
      acd313(111)=acd313(111)+acd313(112)
      acd313(111)=acd313(42)*acd313(111)
      brack=acd313(95)+acd313(96)+acd313(97)+acd313(98)+acd313(99)+acd313(100)+&
      &acd313(101)+acd313(102)+acd313(103)+acd313(104)+2.0_ki*acd313(105)+acd31&
      &3(106)+acd313(107)+acd313(108)+acd313(109)+acd313(110)+acd313(111)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd313h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd313
      complex(ki) :: brack
      acd313(1)=d(iv1,iv2)
      acd313(2)=spval5k1(iv3)
      acd313(3)=abb313(58)
      acd313(4)=spvae7k1(iv3)
      acd313(5)=abb313(32)
      acd313(6)=spvae7k2(iv3)
      acd313(7)=abb313(27)
      acd313(8)=spval5e7(iv3)
      acd313(9)=abb313(29)
      acd313(10)=d(iv1,iv3)
      acd313(11)=spval5k1(iv2)
      acd313(12)=spvae7k1(iv2)
      acd313(13)=spvae7k2(iv2)
      acd313(14)=spval5e7(iv2)
      acd313(15)=d(iv2,iv3)
      acd313(16)=spval5k1(iv1)
      acd313(17)=spvae7k1(iv1)
      acd313(18)=spvae7k2(iv1)
      acd313(19)=spval5e7(iv1)
      acd313(20)=k2(iv1)
      acd313(21)=e7(iv2)
      acd313(22)=spval6k1(iv3)
      acd313(23)=abb313(52)
      acd313(24)=e7(iv3)
      acd313(25)=spval6k1(iv2)
      acd313(26)=k2(iv2)
      acd313(27)=e7(iv1)
      acd313(28)=spval6k1(iv1)
      acd313(29)=k2(iv3)
      acd313(30)=spvak4k2(iv3)
      acd313(31)=abb313(14)
      acd313(32)=spvak4k2(iv2)
      acd313(33)=spvak2k1(iv2)
      acd313(34)=spval5k2(iv3)
      acd313(35)=abb313(10)
      acd313(36)=spval6k2(iv3)
      acd313(37)=abb313(15)
      acd313(38)=spvak2k1(iv3)
      acd313(39)=spval5k2(iv2)
      acd313(40)=spval6k2(iv2)
      acd313(41)=spvak4k1(iv3)
      acd313(42)=abb313(59)
      acd313(43)=spvak4k1(iv2)
      acd313(44)=spvak4k2(iv1)
      acd313(45)=spvak2k1(iv1)
      acd313(46)=spval5k2(iv1)
      acd313(47)=spval6k2(iv1)
      acd313(48)=spvak4k1(iv1)
      acd313(49)=-acd313(9)*acd313(19)
      acd313(50)=-acd313(7)*acd313(18)
      acd313(51)=-acd313(5)*acd313(17)
      acd313(52)=-acd313(3)*acd313(16)
      acd313(49)=acd313(52)+acd313(51)+acd313(49)+acd313(50)
      acd313(49)=acd313(15)*acd313(49)
      acd313(50)=-acd313(9)*acd313(14)
      acd313(51)=-acd313(7)*acd313(13)
      acd313(52)=-acd313(5)*acd313(12)
      acd313(53)=-acd313(3)*acd313(11)
      acd313(50)=acd313(53)+acd313(52)+acd313(50)+acd313(51)
      acd313(50)=acd313(10)*acd313(50)
      acd313(51)=-acd313(9)*acd313(8)
      acd313(52)=-acd313(7)*acd313(6)
      acd313(53)=-acd313(5)*acd313(4)
      acd313(54)=-acd313(3)*acd313(2)
      acd313(51)=acd313(54)+acd313(53)+acd313(51)+acd313(52)
      acd313(51)=acd313(1)*acd313(51)
      acd313(49)=acd313(51)+acd313(49)+acd313(50)
      acd313(50)=acd313(40)*acd313(41)
      acd313(51)=acd313(36)*acd313(43)
      acd313(52)=-acd313(25)*acd313(30)
      acd313(53)=-acd313(22)*acd313(32)
      acd313(50)=acd313(53)+acd313(52)+acd313(50)+acd313(51)
      acd313(50)=acd313(31)*acd313(50)
      acd313(51)=acd313(39)*acd313(41)
      acd313(52)=acd313(34)*acd313(43)
      acd313(51)=acd313(51)+acd313(52)
      acd313(51)=acd313(42)*acd313(51)
      acd313(52)=-acd313(38)*acd313(40)
      acd313(53)=-acd313(33)*acd313(36)
      acd313(52)=acd313(52)+acd313(53)
      acd313(52)=acd313(37)*acd313(52)
      acd313(53)=-acd313(38)*acd313(39)
      acd313(54)=-acd313(33)*acd313(34)
      acd313(53)=acd313(53)+acd313(54)
      acd313(53)=acd313(35)*acd313(53)
      acd313(54)=-acd313(25)*acd313(29)
      acd313(55)=-acd313(22)*acd313(26)
      acd313(54)=acd313(54)+acd313(55)
      acd313(54)=acd313(23)*acd313(54)
      acd313(50)=acd313(50)+acd313(54)+acd313(53)+acd313(51)+acd313(52)
      acd313(50)=acd313(27)*acd313(50)
      acd313(51)=acd313(43)*acd313(47)
      acd313(52)=acd313(40)*acd313(48)
      acd313(53)=-acd313(28)*acd313(32)
      acd313(54)=-acd313(25)*acd313(44)
      acd313(51)=acd313(54)+acd313(53)+acd313(51)+acd313(52)
      acd313(51)=acd313(31)*acd313(51)
      acd313(52)=acd313(43)*acd313(46)
      acd313(53)=acd313(39)*acd313(48)
      acd313(52)=acd313(52)+acd313(53)
      acd313(52)=acd313(42)*acd313(52)
      acd313(53)=-acd313(40)*acd313(45)
      acd313(54)=-acd313(33)*acd313(47)
      acd313(53)=acd313(53)+acd313(54)
      acd313(53)=acd313(37)*acd313(53)
      acd313(54)=-acd313(39)*acd313(45)
      acd313(55)=-acd313(33)*acd313(46)
      acd313(54)=acd313(54)+acd313(55)
      acd313(54)=acd313(35)*acd313(54)
      acd313(55)=-acd313(28)*acd313(26)
      acd313(56)=-acd313(25)*acd313(20)
      acd313(55)=acd313(55)+acd313(56)
      acd313(55)=acd313(23)*acd313(55)
      acd313(51)=acd313(51)+acd313(55)+acd313(54)+acd313(52)+acd313(53)
      acd313(51)=acd313(24)*acd313(51)
      acd313(52)=acd313(41)*acd313(47)
      acd313(53)=acd313(36)*acd313(48)
      acd313(54)=-acd313(28)*acd313(30)
      acd313(55)=-acd313(22)*acd313(44)
      acd313(52)=acd313(55)+acd313(54)+acd313(52)+acd313(53)
      acd313(52)=acd313(31)*acd313(52)
      acd313(53)=acd313(41)*acd313(46)
      acd313(54)=acd313(34)*acd313(48)
      acd313(53)=acd313(53)+acd313(54)
      acd313(53)=acd313(42)*acd313(53)
      acd313(54)=-acd313(38)*acd313(47)
      acd313(55)=-acd313(36)*acd313(45)
      acd313(54)=acd313(54)+acd313(55)
      acd313(54)=acd313(37)*acd313(54)
      acd313(55)=-acd313(38)*acd313(46)
      acd313(56)=-acd313(34)*acd313(45)
      acd313(55)=acd313(55)+acd313(56)
      acd313(55)=acd313(35)*acd313(55)
      acd313(56)=-acd313(28)*acd313(29)
      acd313(57)=-acd313(22)*acd313(20)
      acd313(56)=acd313(56)+acd313(57)
      acd313(56)=acd313(23)*acd313(56)
      acd313(52)=acd313(52)+acd313(56)+acd313(55)+acd313(53)+acd313(54)
      acd313(52)=acd313(21)*acd313(52)
      brack=2.0_ki*acd313(49)+acd313(50)+acd313(51)+acd313(52)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd313h0
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
      qshift = -k7-k6
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
!---#[ subroutine reconstruct_d313:
   subroutine     reconstruct_d313(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_313:
      coeffs%coeffs_313%c0 = derivative(czip)
      coeffs%coeffs_313%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_313%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_313%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_313%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_313%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_313%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_313%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_313%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_313%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_313%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_313%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_313%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_313%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_313%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_313%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_313%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_313%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_313%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_313%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_313%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_313%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_313%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_313%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_313%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_313%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_313%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_313%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_313%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_313%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_313%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_313%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_313%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_313%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_313%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_313:
   end subroutine reconstruct_d313
!---#] subroutine reconstruct_d313:
end module     p9_csbar_epnebbbarg_d313h0l1d
