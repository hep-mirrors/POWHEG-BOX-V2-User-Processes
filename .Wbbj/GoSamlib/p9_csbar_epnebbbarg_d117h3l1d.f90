module     p9_csbar_epnebbbarg_d117h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d117h3l1d.f90
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
   public :: derivative , reconstruct_d117
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd117h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(96) :: acd117
      complex(ki) :: brack
      acd117(1)=dotproduct(k1,qshift)
      acd117(2)=dotproduct(e7,qshift)
      acd117(3)=abb117(69)
      acd117(4)=dotproduct(qshift,spvak2k1)
      acd117(5)=abb117(28)
      acd117(6)=dotproduct(qshift,spvak2l5)
      acd117(7)=abb117(40)
      acd117(8)=dotproduct(qshift,spvak2l6)
      acd117(9)=abb117(64)
      acd117(10)=dotproduct(qshift,spvak4k1)
      acd117(11)=abb117(62)
      acd117(12)=abb117(60)
      acd117(13)=dotproduct(k2,qshift)
      acd117(14)=abb117(103)
      acd117(15)=dotproduct(qshift,spvae7k1)
      acd117(16)=abb117(35)
      acd117(17)=abb117(100)
      acd117(18)=dotproduct(l5,qshift)
      acd117(19)=abb117(99)
      acd117(20)=abb117(34)
      acd117(21)=abb117(98)
      acd117(22)=dotproduct(l6,qshift)
      acd117(23)=dotproduct(k7,qshift)
      acd117(24)=abb117(21)
      acd117(25)=abb117(22)
      acd117(26)=abb117(27)
      acd117(27)=abb117(31)
      acd117(28)=dotproduct(qshift,spvak4l5)
      acd117(29)=abb117(59)
      acd117(30)=dotproduct(qshift,spvak4l6)
      acd117(31)=abb117(44)
      acd117(32)=abb117(95)
      acd117(33)=dotproduct(qshift,qshift)
      acd117(34)=abb117(66)
      acd117(35)=abb117(30)
      acd117(36)=abb117(29)
      acd117(37)=abb117(9)
      acd117(38)=abb117(61)
      acd117(39)=abb117(26)
      acd117(40)=abb117(82)
      acd117(41)=abb117(58)
      acd117(42)=abb117(48)
      acd117(43)=abb117(14)
      acd117(44)=abb117(43)
      acd117(45)=dotproduct(qshift,spvak2k7)
      acd117(46)=abb117(122)
      acd117(47)=dotproduct(qshift,spvak4k7)
      acd117(48)=abb117(67)
      acd117(49)=dotproduct(qshift,spval5k1)
      acd117(50)=abb117(15)
      acd117(51)=dotproduct(qshift,spval6k1)
      acd117(52)=abb117(11)
      acd117(53)=dotproduct(qshift,spvak7k1)
      acd117(54)=abb117(16)
      acd117(55)=abb117(32)
      acd117(56)=abb117(20)
      acd117(57)=abb117(50)
      acd117(58)=abb117(77)
      acd117(59)=abb117(72)
      acd117(60)=abb117(13)
      acd117(61)=abb117(52)
      acd117(62)=abb117(24)
      acd117(63)=abb117(36)
      acd117(64)=abb117(39)
      acd117(65)=abb117(51)
      acd117(66)=abb117(55)
      acd117(67)=abb117(49)
      acd117(68)=abb117(17)
      acd117(69)=abb117(47)
      acd117(70)=abb117(65)
      acd117(71)=abb117(79)
      acd117(72)=abb117(68)
      acd117(73)=abb117(23)
      acd117(74)=abb117(10)
      acd117(75)=abb117(25)
      acd117(76)=abb117(76)
      acd117(77)=abb117(70)
      acd117(78)=abb117(19)
      acd117(79)=abb117(12)
      acd117(80)=abb117(18)
      acd117(81)=-acd117(10)*acd117(40)
      acd117(82)=-acd117(4)*acd117(36)
      acd117(81)=acd117(82)+acd117(41)+acd117(81)
      acd117(81)=acd117(8)*acd117(81)
      acd117(82)=-acd117(10)*acd117(38)
      acd117(83)=-acd117(4)*acd117(35)
      acd117(82)=acd117(83)+acd117(39)+acd117(82)
      acd117(82)=acd117(6)*acd117(82)
      acd117(83)=acd117(18)+acd117(22)
      acd117(84)=-acd117(19)*acd117(83)
      acd117(85)=acd117(51)*acd117(52)
      acd117(86)=acd117(49)*acd117(50)
      acd117(87)=acd117(13)*acd117(14)
      acd117(88)=acd117(53)*acd117(54)
      acd117(89)=acd117(47)*acd117(48)
      acd117(90)=acd117(45)*acd117(46)
      acd117(91)=acd117(30)*acd117(44)
      acd117(92)=acd117(28)*acd117(43)
      acd117(93)=acd117(10)*acd117(42)
      acd117(94)=acd117(4)*acd117(37)
      acd117(95)=acd117(1)*acd117(3)
      acd117(96)=-acd117(33)*acd117(34)
      acd117(81)=acd117(82)+acd117(81)+acd117(96)+acd117(95)+acd117(94)+acd117(&
      &93)+acd117(92)+acd117(91)+acd117(90)+acd117(89)+acd117(88)+acd117(87)+ac&
      &d117(86)-acd117(55)+acd117(85)+acd117(84)
      acd117(81)=acd117(2)*acd117(81)
      acd117(82)=acd117(53)*acd117(72)
      acd117(84)=acd117(47)*acd117(71)
      acd117(85)=acd117(45)*acd117(70)
      acd117(86)=acd117(1)*acd117(9)
      acd117(87)=acd117(23)*acd117(26)
      acd117(88)=acd117(15)*acd117(69)
      acd117(89)=-acd117(33)*acd117(58)
      acd117(82)=acd117(89)+acd117(88)+acd117(87)+acd117(86)+acd117(85)+acd117(&
      &84)-acd117(73)+acd117(82)
      acd117(82)=acd117(8)*acd117(82)
      acd117(84)=acd117(53)*acd117(67)
      acd117(85)=acd117(47)*acd117(66)
      acd117(86)=acd117(45)*acd117(65)
      acd117(87)=acd117(1)*acd117(7)
      acd117(88)=acd117(23)*acd117(25)
      acd117(89)=acd117(15)*acd117(64)
      acd117(90)=-acd117(33)*acd117(57)
      acd117(84)=acd117(90)+acd117(89)+acd117(88)+acd117(87)+acd117(86)+acd117(&
      &85)-acd117(68)+acd117(84)
      acd117(84)=acd117(6)*acd117(84)
      acd117(85)=-acd117(30)*acd117(62)
      acd117(86)=-acd117(28)*acd117(61)
      acd117(87)=acd117(10)*acd117(59)
      acd117(88)=-acd117(4)*acd117(56)
      acd117(89)=-acd117(15)*acd117(60)
      acd117(85)=acd117(89)+acd117(88)+acd117(87)+acd117(86)+acd117(63)+acd117(&
      &85)
      acd117(85)=acd117(33)*acd117(85)
      acd117(86)=acd117(30)*acd117(31)
      acd117(87)=acd117(28)*acd117(29)
      acd117(88)=acd117(4)*acd117(24)
      acd117(86)=acd117(88)+acd117(87)-acd117(32)+acd117(86)
      acd117(86)=acd117(23)*acd117(86)
      acd117(87)=acd117(20)*acd117(83)
      acd117(88)=acd117(13)*acd117(16)
      acd117(89)=acd117(23)*acd117(27)
      acd117(87)=acd117(89)+acd117(88)-acd117(74)+acd117(87)
      acd117(87)=acd117(15)*acd117(87)
      acd117(88)=acd117(10)*acd117(11)
      acd117(89)=acd117(4)*acd117(5)
      acd117(88)=acd117(89)-acd117(12)+acd117(88)
      acd117(88)=acd117(1)*acd117(88)
      acd117(83)=-acd117(21)*acd117(83)
      acd117(89)=-acd117(13)*acd117(17)
      acd117(90)=-acd117(53)*acd117(79)
      acd117(91)=-acd117(47)*acd117(78)
      acd117(92)=-acd117(45)*acd117(77)
      acd117(93)=-acd117(30)*acd117(76)
      acd117(94)=-acd117(28)*acd117(75)
      brack=acd117(80)+acd117(81)+acd117(82)+acd117(83)+acd117(84)+acd117(85)+a&
      &cd117(86)+acd117(87)+acd117(88)+acd117(89)+acd117(90)+acd117(91)+acd117(&
      &92)+acd117(93)+acd117(94)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd117h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(121) :: acd117
      complex(ki) :: brack
      acd117(1)=k1(iv1)
      acd117(2)=dotproduct(e7,qshift)
      acd117(3)=abb117(69)
      acd117(4)=dotproduct(qshift,spvak2k1)
      acd117(5)=abb117(28)
      acd117(6)=dotproduct(qshift,spvak2l5)
      acd117(7)=abb117(40)
      acd117(8)=dotproduct(qshift,spvak2l6)
      acd117(9)=abb117(64)
      acd117(10)=dotproduct(qshift,spvak4k1)
      acd117(11)=abb117(62)
      acd117(12)=abb117(60)
      acd117(13)=k2(iv1)
      acd117(14)=abb117(103)
      acd117(15)=dotproduct(qshift,spvae7k1)
      acd117(16)=abb117(35)
      acd117(17)=abb117(100)
      acd117(18)=l5(iv1)
      acd117(19)=abb117(99)
      acd117(20)=abb117(34)
      acd117(21)=abb117(98)
      acd117(22)=l6(iv1)
      acd117(23)=k7(iv1)
      acd117(24)=abb117(21)
      acd117(25)=abb117(22)
      acd117(26)=abb117(27)
      acd117(27)=abb117(31)
      acd117(28)=dotproduct(qshift,spvak4l5)
      acd117(29)=abb117(59)
      acd117(30)=dotproduct(qshift,spvak4l6)
      acd117(31)=abb117(44)
      acd117(32)=abb117(95)
      acd117(33)=e7(iv1)
      acd117(34)=dotproduct(k1,qshift)
      acd117(35)=dotproduct(k2,qshift)
      acd117(36)=dotproduct(l5,qshift)
      acd117(37)=dotproduct(l6,qshift)
      acd117(38)=dotproduct(qshift,qshift)
      acd117(39)=abb117(66)
      acd117(40)=abb117(30)
      acd117(41)=abb117(29)
      acd117(42)=abb117(9)
      acd117(43)=abb117(61)
      acd117(44)=abb117(26)
      acd117(45)=abb117(82)
      acd117(46)=abb117(58)
      acd117(47)=abb117(48)
      acd117(48)=abb117(14)
      acd117(49)=abb117(43)
      acd117(50)=dotproduct(qshift,spvak2k7)
      acd117(51)=abb117(122)
      acd117(52)=dotproduct(qshift,spvak4k7)
      acd117(53)=abb117(67)
      acd117(54)=dotproduct(qshift,spval5k1)
      acd117(55)=abb117(15)
      acd117(56)=dotproduct(qshift,spval6k1)
      acd117(57)=abb117(11)
      acd117(58)=dotproduct(qshift,spvak7k1)
      acd117(59)=abb117(16)
      acd117(60)=abb117(32)
      acd117(61)=qshift(iv1)
      acd117(62)=abb117(20)
      acd117(63)=abb117(50)
      acd117(64)=abb117(77)
      acd117(65)=abb117(72)
      acd117(66)=abb117(13)
      acd117(67)=abb117(52)
      acd117(68)=abb117(24)
      acd117(69)=abb117(36)
      acd117(70)=spvak2k1(iv1)
      acd117(71)=dotproduct(k7,qshift)
      acd117(72)=spvak2l5(iv1)
      acd117(73)=abb117(39)
      acd117(74)=abb117(51)
      acd117(75)=abb117(55)
      acd117(76)=abb117(49)
      acd117(77)=abb117(17)
      acd117(78)=spvak2l6(iv1)
      acd117(79)=abb117(47)
      acd117(80)=abb117(65)
      acd117(81)=abb117(79)
      acd117(82)=abb117(68)
      acd117(83)=abb117(23)
      acd117(84)=spvak4k1(iv1)
      acd117(85)=spvae7k1(iv1)
      acd117(86)=abb117(10)
      acd117(87)=spvak4l5(iv1)
      acd117(88)=abb117(25)
      acd117(89)=spvak4l6(iv1)
      acd117(90)=abb117(76)
      acd117(91)=spvak2k7(iv1)
      acd117(92)=abb117(70)
      acd117(93)=spvak4k7(iv1)
      acd117(94)=abb117(19)
      acd117(95)=spval5k1(iv1)
      acd117(96)=spval6k1(iv1)
      acd117(97)=spvak7k1(iv1)
      acd117(98)=abb117(12)
      acd117(99)=acd117(10)*acd117(45)
      acd117(100)=acd117(4)*acd117(41)
      acd117(99)=-acd117(46)+acd117(99)+acd117(100)
      acd117(100)=acd117(78)*acd117(99)
      acd117(101)=acd117(10)*acd117(43)
      acd117(102)=acd117(4)*acd117(40)
      acd117(101)=-acd117(44)+acd117(101)+acd117(102)
      acd117(102)=acd117(72)*acd117(101)
      acd117(103)=acd117(84)*acd117(45)
      acd117(104)=acd117(70)*acd117(41)
      acd117(103)=acd117(103)+acd117(104)
      acd117(103)=acd117(8)*acd117(103)
      acd117(104)=acd117(84)*acd117(43)
      acd117(105)=acd117(70)*acd117(40)
      acd117(104)=acd117(104)+acd117(105)
      acd117(104)=acd117(6)*acd117(104)
      acd117(105)=-acd117(57)*acd117(96)
      acd117(106)=-acd117(55)*acd117(95)
      acd117(107)=-acd117(13)*acd117(14)
      acd117(108)=-acd117(97)*acd117(59)
      acd117(109)=-acd117(93)*acd117(53)
      acd117(110)=-acd117(91)*acd117(51)
      acd117(111)=-acd117(89)*acd117(49)
      acd117(112)=-acd117(87)*acd117(48)
      acd117(113)=acd117(18)+acd117(22)
      acd117(114)=acd117(19)*acd117(113)
      acd117(115)=-acd117(84)*acd117(47)
      acd117(116)=-acd117(70)*acd117(42)
      acd117(117)=-acd117(1)*acd117(3)
      acd117(118)=2.0_ki*acd117(61)
      acd117(119)=acd117(39)*acd117(118)
      acd117(100)=acd117(104)+acd117(103)+acd117(102)+acd117(100)+acd117(119)+a&
      &cd117(117)+acd117(116)+acd117(115)+acd117(114)+acd117(112)+acd117(111)+a&
      &cd117(110)+acd117(109)+acd117(108)+acd117(107)+acd117(105)+acd117(106)
      acd117(100)=acd117(2)*acd117(100)
      acd117(99)=acd117(8)*acd117(99)
      acd117(101)=acd117(6)*acd117(101)
      acd117(102)=-acd117(57)*acd117(56)
      acd117(103)=-acd117(55)*acd117(54)
      acd117(104)=-acd117(14)*acd117(35)
      acd117(105)=-acd117(58)*acd117(59)
      acd117(106)=-acd117(52)*acd117(53)
      acd117(107)=-acd117(50)*acd117(51)
      acd117(108)=-acd117(30)*acd117(49)
      acd117(109)=-acd117(28)*acd117(48)
      acd117(110)=acd117(36)+acd117(37)
      acd117(111)=acd117(19)*acd117(110)
      acd117(112)=-acd117(34)*acd117(3)
      acd117(114)=-acd117(10)*acd117(47)
      acd117(115)=acd117(38)*acd117(39)
      acd117(116)=-acd117(4)*acd117(42)
      acd117(99)=acd117(101)+acd117(99)+acd117(116)+acd117(115)+acd117(114)+acd&
      &117(112)+acd117(111)+acd117(109)+acd117(108)+acd117(107)+acd117(106)+acd&
      &117(105)+acd117(104)+acd117(103)+acd117(60)+acd117(102)
      acd117(99)=acd117(33)*acd117(99)
      acd117(101)=-acd117(58)*acd117(82)
      acd117(102)=-acd117(52)*acd117(81)
      acd117(103)=-acd117(50)*acd117(80)
      acd117(104)=-acd117(34)*acd117(9)
      acd117(105)=-acd117(71)*acd117(26)
      acd117(106)=-acd117(15)*acd117(79)
      acd117(107)=acd117(38)*acd117(64)
      acd117(101)=acd117(107)+acd117(106)+acd117(105)+acd117(104)+acd117(103)+a&
      &cd117(102)+acd117(83)+acd117(101)
      acd117(101)=acd117(78)*acd117(101)
      acd117(102)=-acd117(58)*acd117(76)
      acd117(103)=-acd117(52)*acd117(75)
      acd117(104)=-acd117(50)*acd117(74)
      acd117(105)=-acd117(34)*acd117(7)
      acd117(106)=-acd117(71)*acd117(25)
      acd117(107)=-acd117(15)*acd117(73)
      acd117(108)=acd117(38)*acd117(63)
      acd117(102)=acd117(108)+acd117(107)+acd117(106)+acd117(105)+acd117(104)+a&
      &cd117(103)+acd117(77)+acd117(102)
      acd117(102)=acd117(72)*acd117(102)
      acd117(103)=-acd117(97)*acd117(82)
      acd117(104)=-acd117(93)*acd117(81)
      acd117(105)=-acd117(91)*acd117(80)
      acd117(106)=-acd117(1)*acd117(9)
      acd117(107)=-acd117(23)*acd117(26)
      acd117(108)=-acd117(85)*acd117(79)
      acd117(109)=acd117(64)*acd117(118)
      acd117(103)=acd117(109)+acd117(108)+acd117(107)+acd117(106)+acd117(105)+a&
      &cd117(103)+acd117(104)
      acd117(103)=acd117(8)*acd117(103)
      acd117(104)=-acd117(97)*acd117(76)
      acd117(105)=-acd117(93)*acd117(75)
      acd117(106)=-acd117(91)*acd117(74)
      acd117(107)=-acd117(1)*acd117(7)
      acd117(108)=-acd117(23)*acd117(25)
      acd117(109)=-acd117(85)*acd117(73)
      acd117(111)=acd117(63)*acd117(118)
      acd117(104)=acd117(111)+acd117(109)+acd117(108)+acd117(107)+acd117(106)+a&
      &cd117(104)+acd117(105)
      acd117(104)=acd117(6)*acd117(104)
      acd117(105)=acd117(89)*acd117(68)
      acd117(106)=acd117(87)*acd117(67)
      acd117(107)=-acd117(84)*acd117(65)
      acd117(108)=acd117(70)*acd117(62)
      acd117(109)=acd117(85)*acd117(66)
      acd117(105)=acd117(109)+acd117(108)+acd117(107)+acd117(105)+acd117(106)
      acd117(105)=acd117(38)*acd117(105)
      acd117(106)=acd117(30)*acd117(68)
      acd117(107)=acd117(28)*acd117(67)
      acd117(108)=acd117(15)*acd117(66)
      acd117(109)=-acd117(10)*acd117(65)
      acd117(111)=acd117(4)*acd117(62)
      acd117(106)=acd117(111)+acd117(109)+acd117(108)+acd117(107)-acd117(69)+ac&
      &d117(106)
      acd117(106)=acd117(106)*acd117(118)
      acd117(107)=-acd117(13)*acd117(16)
      acd117(108)=-acd117(20)*acd117(113)
      acd117(109)=-acd117(23)*acd117(27)
      acd117(107)=acd117(109)+acd117(107)+acd117(108)
      acd117(107)=acd117(15)*acd117(107)
      acd117(108)=-acd117(16)*acd117(35)
      acd117(109)=-acd117(20)*acd117(110)
      acd117(110)=-acd117(71)*acd117(27)
      acd117(108)=acd117(110)+acd117(109)+acd117(86)+acd117(108)
      acd117(108)=acd117(85)*acd117(108)
      acd117(109)=-acd117(89)*acd117(31)
      acd117(110)=-acd117(87)*acd117(29)
      acd117(109)=acd117(109)+acd117(110)
      acd117(109)=acd117(71)*acd117(109)
      acd117(110)=-acd117(34)*acd117(5)
      acd117(111)=-acd117(71)*acd117(24)
      acd117(110)=acd117(110)+acd117(111)
      acd117(110)=acd117(70)*acd117(110)
      acd117(111)=-acd117(30)*acd117(31)
      acd117(112)=-acd117(28)*acd117(29)
      acd117(111)=acd117(112)+acd117(32)+acd117(111)
      acd117(111)=acd117(23)*acd117(111)
      acd117(112)=-acd117(1)*acd117(5)
      acd117(114)=-acd117(23)*acd117(24)
      acd117(112)=acd117(112)+acd117(114)
      acd117(112)=acd117(4)*acd117(112)
      acd117(113)=acd117(21)*acd117(113)
      acd117(114)=-acd117(10)*acd117(11)
      acd117(114)=acd117(114)+acd117(12)
      acd117(114)=acd117(1)*acd117(114)
      acd117(115)=acd117(13)*acd117(17)
      acd117(116)=acd117(97)*acd117(98)
      acd117(117)=acd117(93)*acd117(94)
      acd117(118)=acd117(91)*acd117(92)
      acd117(119)=acd117(89)*acd117(90)
      acd117(120)=acd117(87)*acd117(88)
      acd117(121)=-acd117(34)*acd117(84)*acd117(11)
      brack=acd117(99)+acd117(100)+acd117(101)+acd117(102)+acd117(103)+acd117(1&
      &04)+acd117(105)+acd117(106)+acd117(107)+acd117(108)+acd117(109)+acd117(1&
      &10)+acd117(111)+acd117(112)+acd117(113)+acd117(114)+acd117(115)+acd117(1&
      &16)+acd117(117)+acd117(118)+acd117(119)+acd117(120)+acd117(121)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd117h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(115) :: acd117
      complex(ki) :: brack
      acd117(1)=d(iv1,iv2)
      acd117(2)=dotproduct(e7,qshift)
      acd117(3)=abb117(66)
      acd117(4)=dotproduct(qshift,spvak2k1)
      acd117(5)=abb117(20)
      acd117(6)=dotproduct(qshift,spvak2l5)
      acd117(7)=abb117(50)
      acd117(8)=dotproduct(qshift,spvak2l6)
      acd117(9)=abb117(77)
      acd117(10)=dotproduct(qshift,spvak4k1)
      acd117(11)=abb117(72)
      acd117(12)=dotproduct(qshift,spvak4l5)
      acd117(13)=abb117(52)
      acd117(14)=dotproduct(qshift,spvak4l6)
      acd117(15)=abb117(24)
      acd117(16)=dotproduct(qshift,spvae7k1)
      acd117(17)=abb117(13)
      acd117(18)=abb117(36)
      acd117(19)=k1(iv1)
      acd117(20)=e7(iv2)
      acd117(21)=abb117(69)
      acd117(22)=spvak2k1(iv2)
      acd117(23)=abb117(28)
      acd117(24)=spvak2l5(iv2)
      acd117(25)=abb117(40)
      acd117(26)=spvak2l6(iv2)
      acd117(27)=abb117(64)
      acd117(28)=spvak4k1(iv2)
      acd117(29)=abb117(62)
      acd117(30)=k1(iv2)
      acd117(31)=e7(iv1)
      acd117(32)=spvak2k1(iv1)
      acd117(33)=spvak2l5(iv1)
      acd117(34)=spvak2l6(iv1)
      acd117(35)=spvak4k1(iv1)
      acd117(36)=k2(iv1)
      acd117(37)=abb117(103)
      acd117(38)=spvae7k1(iv2)
      acd117(39)=abb117(35)
      acd117(40)=k2(iv2)
      acd117(41)=spvae7k1(iv1)
      acd117(42)=l5(iv1)
      acd117(43)=abb117(99)
      acd117(44)=abb117(34)
      acd117(45)=l5(iv2)
      acd117(46)=l6(iv1)
      acd117(47)=l6(iv2)
      acd117(48)=k7(iv1)
      acd117(49)=abb117(21)
      acd117(50)=abb117(22)
      acd117(51)=abb117(27)
      acd117(52)=spvak4l5(iv2)
      acd117(53)=abb117(59)
      acd117(54)=spvak4l6(iv2)
      acd117(55)=abb117(44)
      acd117(56)=abb117(31)
      acd117(57)=k7(iv2)
      acd117(58)=spvak4l5(iv1)
      acd117(59)=spvak4l6(iv1)
      acd117(60)=qshift(iv2)
      acd117(61)=abb117(30)
      acd117(62)=abb117(29)
      acd117(63)=abb117(9)
      acd117(64)=abb117(61)
      acd117(65)=abb117(26)
      acd117(66)=abb117(82)
      acd117(67)=abb117(58)
      acd117(68)=abb117(48)
      acd117(69)=abb117(14)
      acd117(70)=abb117(43)
      acd117(71)=spvak2k7(iv2)
      acd117(72)=abb117(122)
      acd117(73)=spvak4k7(iv2)
      acd117(74)=abb117(67)
      acd117(75)=spval5k1(iv2)
      acd117(76)=abb117(15)
      acd117(77)=spval6k1(iv2)
      acd117(78)=abb117(11)
      acd117(79)=spvak7k1(iv2)
      acd117(80)=abb117(16)
      acd117(81)=qshift(iv1)
      acd117(82)=spvak2k7(iv1)
      acd117(83)=spvak4k7(iv1)
      acd117(84)=spval5k1(iv1)
      acd117(85)=spval6k1(iv1)
      acd117(86)=spvak7k1(iv1)
      acd117(87)=abb117(39)
      acd117(88)=abb117(51)
      acd117(89)=abb117(55)
      acd117(90)=abb117(49)
      acd117(91)=abb117(47)
      acd117(92)=abb117(65)
      acd117(93)=abb117(79)
      acd117(94)=abb117(68)
      acd117(95)=acd117(66)*acd117(8)
      acd117(96)=acd117(64)*acd117(6)
      acd117(95)=-acd117(68)+acd117(95)+acd117(96)
      acd117(96)=-acd117(28)*acd117(95)
      acd117(97)=acd117(62)*acd117(8)
      acd117(98)=acd117(61)*acd117(6)
      acd117(97)=-acd117(63)+acd117(97)+acd117(98)
      acd117(98)=-acd117(22)*acd117(97)
      acd117(99)=acd117(66)*acd117(10)
      acd117(100)=acd117(62)*acd117(4)
      acd117(99)=-acd117(67)+acd117(99)+acd117(100)
      acd117(100)=-acd117(26)*acd117(99)
      acd117(101)=acd117(64)*acd117(10)
      acd117(102)=acd117(61)*acd117(4)
      acd117(101)=-acd117(65)+acd117(101)+acd117(102)
      acd117(102)=-acd117(24)*acd117(101)
      acd117(103)=acd117(78)*acd117(77)
      acd117(104)=acd117(76)*acd117(75)
      acd117(105)=acd117(37)*acd117(40)
      acd117(106)=acd117(79)*acd117(80)
      acd117(107)=acd117(73)*acd117(74)
      acd117(108)=acd117(71)*acd117(72)
      acd117(109)=acd117(54)*acd117(70)
      acd117(110)=acd117(52)*acd117(69)
      acd117(111)=acd117(45)+acd117(47)
      acd117(112)=-acd117(43)*acd117(111)
      acd117(113)=acd117(30)*acd117(21)
      acd117(114)=2.0_ki*acd117(60)
      acd117(115)=-acd117(3)*acd117(114)
      acd117(96)=acd117(102)+acd117(100)+acd117(98)+acd117(115)+acd117(96)+acd1&
      &17(113)+acd117(112)+acd117(110)+acd117(109)+acd117(108)+acd117(107)+acd1&
      &17(106)+acd117(105)+acd117(103)+acd117(104)
      acd117(96)=acd117(31)*acd117(96)
      acd117(95)=-acd117(35)*acd117(95)
      acd117(97)=-acd117(32)*acd117(97)
      acd117(98)=-acd117(34)*acd117(99)
      acd117(99)=-acd117(33)*acd117(101)
      acd117(100)=acd117(78)*acd117(85)
      acd117(101)=acd117(76)*acd117(84)
      acd117(102)=acd117(36)*acd117(37)
      acd117(103)=acd117(86)*acd117(80)
      acd117(104)=acd117(83)*acd117(74)
      acd117(105)=acd117(82)*acd117(72)
      acd117(106)=acd117(59)*acd117(70)
      acd117(107)=acd117(58)*acd117(69)
      acd117(108)=acd117(42)+acd117(46)
      acd117(109)=-acd117(43)*acd117(108)
      acd117(110)=acd117(19)*acd117(21)
      acd117(112)=2.0_ki*acd117(81)
      acd117(113)=-acd117(3)*acd117(112)
      acd117(95)=acd117(99)+acd117(98)+acd117(97)+acd117(113)+acd117(95)+acd117&
      &(110)+acd117(109)+acd117(107)+acd117(106)+acd117(105)+acd117(104)+acd117&
      &(103)+acd117(102)+acd117(100)+acd117(101)
      acd117(95)=acd117(20)*acd117(95)
      acd117(97)=-acd117(17)*acd117(16)
      acd117(98)=-acd117(15)*acd117(14)
      acd117(99)=-acd117(13)*acd117(12)
      acd117(100)=acd117(10)*acd117(11)
      acd117(101)=-acd117(8)*acd117(9)
      acd117(102)=-acd117(6)*acd117(7)
      acd117(103)=-acd117(4)*acd117(5)
      acd117(104)=-acd117(2)*acd117(3)
      acd117(97)=acd117(104)+acd117(103)+acd117(102)+acd117(101)+acd117(100)+ac&
      &d117(99)+acd117(98)+acd117(18)+acd117(97)
      acd117(97)=acd117(1)*acd117(97)
      acd117(98)=-acd117(28)*acd117(66)
      acd117(99)=-acd117(22)*acd117(62)
      acd117(98)=acd117(98)+acd117(99)
      acd117(98)=acd117(2)*acd117(98)
      acd117(99)=acd117(79)*acd117(94)
      acd117(100)=acd117(73)*acd117(93)
      acd117(101)=acd117(71)*acd117(92)
      acd117(102)=acd117(30)*acd117(27)
      acd117(103)=acd117(57)*acd117(51)
      acd117(104)=acd117(38)*acd117(91)
      acd117(105)=-acd117(9)*acd117(114)
      acd117(98)=acd117(98)+acd117(105)+acd117(104)+acd117(103)+acd117(102)+acd&
      &117(101)+acd117(99)+acd117(100)
      acd117(98)=acd117(34)*acd117(98)
      acd117(99)=-acd117(28)*acd117(64)
      acd117(100)=-acd117(22)*acd117(61)
      acd117(99)=acd117(99)+acd117(100)
      acd117(99)=acd117(2)*acd117(99)
      acd117(100)=acd117(79)*acd117(90)
      acd117(101)=acd117(73)*acd117(89)
      acd117(102)=acd117(71)*acd117(88)
      acd117(103)=acd117(30)*acd117(25)
      acd117(104)=acd117(57)*acd117(50)
      acd117(105)=acd117(38)*acd117(87)
      acd117(106)=-acd117(7)*acd117(114)
      acd117(99)=acd117(99)+acd117(106)+acd117(105)+acd117(104)+acd117(103)+acd&
      &117(102)+acd117(100)+acd117(101)
      acd117(99)=acd117(33)*acd117(99)
      acd117(100)=-acd117(35)*acd117(66)
      acd117(101)=-acd117(32)*acd117(62)
      acd117(100)=acd117(100)+acd117(101)
      acd117(100)=acd117(2)*acd117(100)
      acd117(101)=acd117(86)*acd117(94)
      acd117(102)=acd117(83)*acd117(93)
      acd117(103)=acd117(82)*acd117(92)
      acd117(104)=acd117(19)*acd117(27)
      acd117(105)=acd117(48)*acd117(51)
      acd117(106)=acd117(41)*acd117(91)
      acd117(107)=-acd117(9)*acd117(112)
      acd117(100)=acd117(100)+acd117(107)+acd117(106)+acd117(105)+acd117(104)+a&
      &cd117(103)+acd117(101)+acd117(102)
      acd117(100)=acd117(26)*acd117(100)
      acd117(101)=-acd117(35)*acd117(64)
      acd117(102)=-acd117(32)*acd117(61)
      acd117(101)=acd117(101)+acd117(102)
      acd117(101)=acd117(2)*acd117(101)
      acd117(102)=acd117(86)*acd117(90)
      acd117(103)=acd117(83)*acd117(89)
      acd117(104)=acd117(82)*acd117(88)
      acd117(105)=acd117(19)*acd117(25)
      acd117(106)=acd117(48)*acd117(50)
      acd117(107)=acd117(41)*acd117(87)
      acd117(109)=-acd117(7)*acd117(112)
      acd117(101)=acd117(101)+acd117(109)+acd117(107)+acd117(106)+acd117(105)+a&
      &cd117(104)+acd117(102)+acd117(103)
      acd117(101)=acd117(24)*acd117(101)
      acd117(102)=-acd117(15)*acd117(54)
      acd117(103)=-acd117(13)*acd117(52)
      acd117(104)=-acd117(38)*acd117(17)
      acd117(105)=acd117(28)*acd117(11)
      acd117(102)=acd117(105)+acd117(104)+acd117(102)+acd117(103)
      acd117(102)=acd117(102)*acd117(112)
      acd117(103)=-acd117(15)*acd117(59)
      acd117(104)=-acd117(13)*acd117(58)
      acd117(105)=-acd117(41)*acd117(17)
      acd117(106)=acd117(35)*acd117(11)
      acd117(103)=acd117(106)+acd117(105)+acd117(103)+acd117(104)
      acd117(103)=acd117(103)*acd117(114)
      acd117(104)=acd117(39)*acd117(40)
      acd117(105)=acd117(44)*acd117(111)
      acd117(106)=acd117(57)*acd117(56)
      acd117(104)=acd117(106)+acd117(104)+acd117(105)
      acd117(104)=acd117(41)*acd117(104)
      acd117(105)=acd117(36)*acd117(39)
      acd117(106)=acd117(44)*acd117(108)
      acd117(107)=acd117(48)*acd117(56)
      acd117(105)=acd117(107)+acd117(105)+acd117(106)
      acd117(105)=acd117(38)*acd117(105)
      acd117(106)=acd117(30)*acd117(23)
      acd117(107)=acd117(57)*acd117(49)
      acd117(108)=-acd117(5)*acd117(114)
      acd117(106)=acd117(108)+acd117(106)+acd117(107)
      acd117(106)=acd117(32)*acd117(106)
      acd117(107)=acd117(19)*acd117(23)
      acd117(108)=acd117(48)*acd117(49)
      acd117(109)=-acd117(5)*acd117(112)
      acd117(107)=acd117(109)+acd117(107)+acd117(108)
      acd117(107)=acd117(22)*acd117(107)
      acd117(108)=acd117(35)*acd117(30)
      acd117(109)=acd117(28)*acd117(19)
      acd117(108)=acd117(109)+acd117(108)
      acd117(108)=acd117(29)*acd117(108)
      acd117(109)=acd117(59)*acd117(55)
      acd117(110)=acd117(58)*acd117(53)
      acd117(109)=acd117(109)+acd117(110)
      acd117(109)=acd117(57)*acd117(109)
      acd117(110)=acd117(54)*acd117(55)
      acd117(111)=acd117(52)*acd117(53)
      acd117(110)=acd117(110)+acd117(111)
      acd117(110)=acd117(48)*acd117(110)
      brack=acd117(95)+acd117(96)+2.0_ki*acd117(97)+acd117(98)+acd117(99)+acd11&
      &7(100)+acd117(101)+acd117(102)+acd117(103)+acd117(104)+acd117(105)+acd11&
      &7(106)+acd117(107)+acd117(108)+acd117(109)+acd117(110)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd117h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd117
      complex(ki) :: brack
      acd117(1)=d(iv1,iv2)
      acd117(2)=e7(iv3)
      acd117(3)=abb117(66)
      acd117(4)=spvak2k1(iv3)
      acd117(5)=abb117(20)
      acd117(6)=spvak2l5(iv3)
      acd117(7)=abb117(50)
      acd117(8)=spvak2l6(iv3)
      acd117(9)=abb117(77)
      acd117(10)=spvak4k1(iv3)
      acd117(11)=abb117(72)
      acd117(12)=spvak4l5(iv3)
      acd117(13)=abb117(52)
      acd117(14)=spvak4l6(iv3)
      acd117(15)=abb117(24)
      acd117(16)=spvae7k1(iv3)
      acd117(17)=abb117(13)
      acd117(18)=d(iv1,iv3)
      acd117(19)=e7(iv2)
      acd117(20)=spvak2k1(iv2)
      acd117(21)=spvak2l5(iv2)
      acd117(22)=spvak2l6(iv2)
      acd117(23)=spvak4k1(iv2)
      acd117(24)=spvak4l5(iv2)
      acd117(25)=spvak4l6(iv2)
      acd117(26)=spvae7k1(iv2)
      acd117(27)=d(iv2,iv3)
      acd117(28)=e7(iv1)
      acd117(29)=spvak2k1(iv1)
      acd117(30)=spvak2l5(iv1)
      acd117(31)=spvak2l6(iv1)
      acd117(32)=spvak4k1(iv1)
      acd117(33)=spvak4l5(iv1)
      acd117(34)=spvak4l6(iv1)
      acd117(35)=spvae7k1(iv1)
      acd117(36)=abb117(30)
      acd117(37)=abb117(29)
      acd117(38)=abb117(61)
      acd117(39)=abb117(82)
      acd117(40)=acd117(1)*acd117(2)
      acd117(41)=acd117(18)*acd117(19)
      acd117(42)=acd117(27)*acd117(28)
      acd117(40)=acd117(42)+acd117(40)+acd117(41)
      acd117(40)=acd117(3)*acd117(40)
      acd117(41)=acd117(4)*acd117(1)
      acd117(42)=acd117(20)*acd117(18)
      acd117(43)=acd117(29)*acd117(27)
      acd117(41)=acd117(43)+acd117(41)+acd117(42)
      acd117(41)=acd117(5)*acd117(41)
      acd117(42)=acd117(6)*acd117(1)
      acd117(43)=acd117(21)*acd117(18)
      acd117(44)=acd117(30)*acd117(27)
      acd117(42)=acd117(44)+acd117(42)+acd117(43)
      acd117(42)=acd117(7)*acd117(42)
      acd117(43)=acd117(8)*acd117(1)
      acd117(44)=acd117(22)*acd117(18)
      acd117(45)=acd117(31)*acd117(27)
      acd117(43)=acd117(45)+acd117(43)+acd117(44)
      acd117(43)=acd117(9)*acd117(43)
      acd117(44)=-acd117(10)*acd117(1)
      acd117(45)=-acd117(23)*acd117(18)
      acd117(46)=-acd117(32)*acd117(27)
      acd117(44)=acd117(46)+acd117(44)+acd117(45)
      acd117(44)=acd117(11)*acd117(44)
      acd117(40)=acd117(44)+acd117(40)+acd117(41)+acd117(42)+acd117(43)
      acd117(41)=acd117(6)*acd117(36)
      acd117(42)=acd117(8)*acd117(37)
      acd117(41)=acd117(41)+acd117(42)
      acd117(41)=acd117(20)*acd117(41)
      acd117(42)=acd117(4)*acd117(36)
      acd117(43)=acd117(10)*acd117(38)
      acd117(42)=acd117(42)+acd117(43)
      acd117(42)=acd117(21)*acd117(42)
      acd117(43)=acd117(4)*acd117(37)
      acd117(44)=acd117(10)*acd117(39)
      acd117(43)=acd117(43)+acd117(44)
      acd117(43)=acd117(22)*acd117(43)
      acd117(44)=acd117(6)*acd117(38)
      acd117(45)=acd117(8)*acd117(39)
      acd117(44)=acd117(44)+acd117(45)
      acd117(44)=acd117(23)*acd117(44)
      acd117(41)=acd117(44)+acd117(43)+acd117(41)+acd117(42)
      acd117(41)=acd117(28)*acd117(41)
      acd117(42)=acd117(16)*acd117(1)
      acd117(43)=acd117(26)*acd117(18)
      acd117(44)=acd117(35)*acd117(27)
      acd117(42)=acd117(44)+acd117(43)+acd117(42)
      acd117(43)=2.0_ki*acd117(17)
      acd117(42)=acd117(43)*acd117(42)
      acd117(43)=acd117(14)*acd117(1)
      acd117(44)=acd117(25)*acd117(18)
      acd117(45)=acd117(34)*acd117(27)
      acd117(43)=acd117(45)+acd117(44)+acd117(43)
      acd117(44)=2.0_ki*acd117(15)
      acd117(43)=acd117(44)*acd117(43)
      acd117(44)=acd117(12)*acd117(1)
      acd117(45)=acd117(24)*acd117(18)
      acd117(46)=acd117(33)*acd117(27)
      acd117(44)=acd117(46)+acd117(45)+acd117(44)
      acd117(45)=2.0_ki*acd117(13)
      acd117(44)=acd117(45)*acd117(44)
      acd117(45)=acd117(6)*acd117(19)
      acd117(46)=acd117(21)*acd117(2)
      acd117(45)=acd117(45)+acd117(46)
      acd117(46)=acd117(36)*acd117(45)
      acd117(47)=acd117(8)*acd117(19)
      acd117(48)=acd117(22)*acd117(2)
      acd117(47)=acd117(47)+acd117(48)
      acd117(48)=acd117(37)*acd117(47)
      acd117(46)=acd117(48)+acd117(46)
      acd117(46)=acd117(29)*acd117(46)
      acd117(48)=acd117(4)*acd117(19)
      acd117(49)=acd117(20)*acd117(2)
      acd117(48)=acd117(48)+acd117(49)
      acd117(49)=acd117(36)*acd117(48)
      acd117(50)=acd117(10)*acd117(19)
      acd117(51)=acd117(23)*acd117(2)
      acd117(50)=acd117(50)+acd117(51)
      acd117(51)=acd117(38)*acd117(50)
      acd117(49)=acd117(51)+acd117(49)
      acd117(49)=acd117(30)*acd117(49)
      acd117(48)=acd117(37)*acd117(48)
      acd117(50)=acd117(39)*acd117(50)
      acd117(48)=acd117(50)+acd117(48)
      acd117(48)=acd117(31)*acd117(48)
      acd117(45)=acd117(38)*acd117(45)
      acd117(47)=acd117(39)*acd117(47)
      acd117(45)=acd117(47)+acd117(45)
      acd117(45)=acd117(32)*acd117(45)
      brack=2.0_ki*acd117(40)+acd117(41)+acd117(42)+acd117(43)+acd117(44)+acd11&
      &7(45)+acd117(46)+acd117(48)+acd117(49)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd117h3
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
      qshift = k7+k6+k5
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
!---#[ subroutine reconstruct_d117:
   subroutine     reconstruct_d117(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_117:
      coeffs%coeffs_117%c0 = derivative(czip)
      coeffs%coeffs_117%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_117%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_117%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_117%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_117%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_117%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_117%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_117%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_117%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_117%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_117%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_117%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_117%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_117%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_117%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_117%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_117%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_117%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_117%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_117%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_117%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_117%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_117%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_117%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_117%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_117%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_117%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_117%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_117%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_117%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_117%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_117%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_117%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_117%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_117:
   end subroutine reconstruct_d117
!---#] subroutine reconstruct_d117:
end module     p9_csbar_epnebbbarg_d117h3l1d
