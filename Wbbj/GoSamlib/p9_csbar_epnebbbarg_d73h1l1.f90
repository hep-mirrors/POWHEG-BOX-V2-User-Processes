module     p9_csbar_epnebbbarg_d73h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d73h1l1.f90
   ! generator: buildfortran.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd73h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc73(113)
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval6k4
      complex(ki) :: Qspvak2k4
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval5k3
      complex(ki) :: Qspvak7k3
      complex(ki) :: Qspvae7k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak4k1
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval6k4 = dotproduct(Q,spval6k4)
      Qspvak2k4 = dotproduct(Q,spvak2k4)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval5k3 = dotproduct(Q,spval5k3)
      Qspvak7k3 = dotproduct(Q,spvak7k3)
      Qspvae7k3 = dotproduct(Q,spvae7k3)
      QspQ = dotproduct(Q,Q)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      acc73(1)=abb73(8)
      acc73(2)=abb73(9)
      acc73(3)=abb73(10)
      acc73(4)=abb73(11)
      acc73(5)=abb73(12)
      acc73(6)=abb73(13)
      acc73(7)=abb73(14)
      acc73(8)=abb73(15)
      acc73(9)=abb73(16)
      acc73(10)=abb73(17)
      acc73(11)=abb73(18)
      acc73(12)=abb73(19)
      acc73(13)=abb73(20)
      acc73(14)=abb73(21)
      acc73(15)=abb73(22)
      acc73(16)=abb73(23)
      acc73(17)=abb73(24)
      acc73(18)=abb73(25)
      acc73(19)=abb73(26)
      acc73(20)=abb73(27)
      acc73(21)=abb73(28)
      acc73(22)=abb73(29)
      acc73(23)=abb73(30)
      acc73(24)=abb73(31)
      acc73(25)=abb73(32)
      acc73(26)=abb73(33)
      acc73(27)=abb73(34)
      acc73(28)=abb73(35)
      acc73(29)=abb73(36)
      acc73(30)=abb73(37)
      acc73(31)=abb73(38)
      acc73(32)=abb73(39)
      acc73(33)=abb73(40)
      acc73(34)=abb73(41)
      acc73(35)=abb73(42)
      acc73(36)=abb73(43)
      acc73(37)=abb73(44)
      acc73(38)=abb73(45)
      acc73(39)=abb73(46)
      acc73(40)=abb73(47)
      acc73(41)=abb73(48)
      acc73(42)=abb73(49)
      acc73(43)=abb73(50)
      acc73(44)=abb73(51)
      acc73(45)=abb73(52)
      acc73(46)=abb73(53)
      acc73(47)=abb73(54)
      acc73(48)=abb73(55)
      acc73(49)=abb73(56)
      acc73(50)=abb73(57)
      acc73(51)=abb73(58)
      acc73(52)=abb73(59)
      acc73(53)=abb73(60)
      acc73(54)=abb73(61)
      acc73(55)=abb73(62)
      acc73(56)=abb73(63)
      acc73(57)=abb73(64)
      acc73(58)=abb73(66)
      acc73(59)=abb73(68)
      acc73(60)=abb73(69)
      acc73(61)=abb73(70)
      acc73(62)=abb73(71)
      acc73(63)=abb73(72)
      acc73(64)=abb73(73)
      acc73(65)=abb73(77)
      acc73(66)=abb73(79)
      acc73(67)=abb73(90)
      acc73(68)=abb73(93)
      acc73(69)=abb73(97)
      acc73(70)=abb73(101)
      acc73(71)=abb73(103)
      acc73(72)=abb73(117)
      acc73(73)=abb73(118)
      acc73(74)=abb73(119)
      acc73(75)=abb73(120)
      acc73(76)=abb73(121)
      acc73(77)=abb73(122)
      acc73(78)=abb73(124)
      acc73(79)=abb73(127)
      acc73(80)=abb73(128)
      acc73(81)=abb73(131)
      acc73(82)=abb73(132)
      acc73(83)=abb73(134)
      acc73(84)=abb73(137)
      acc73(85)=abb73(140)
      acc73(86)=-Qspval5k2*acc73(54)
      acc73(87)=Qspvak7k2*acc73(25)
      acc73(88)=-Qspvae7k2*acc73(35)
      acc73(89)=Qspval6l5*acc73(60)
      acc73(90)=-Qspval6k7*acc73(57)
      acc73(91)=Qspval6e7*acc73(48)
      acc73(92)=Qspval6k2*acc73(53)
      acc73(86)=acc73(92)+acc73(91)+acc73(90)+acc73(89)+acc73(88)+acc73(87)+acc&
      &73(30)+acc73(86)
      acc73(86)=Qspvak2k1*acc73(86)
      acc73(87)=-Qspvak2l5*acc73(60)
      acc73(88)=Qspvak2k7*acc73(57)
      acc73(89)=-Qspvak2e7*acc73(48)
      acc73(87)=acc73(89)+acc73(88)+acc73(37)+acc73(87)
      acc73(87)=Qspval6k1*acc73(87)
      acc73(88)=Qspval5l6*acc73(51)
      acc73(89)=Qspvak7l6*acc73(41)
      acc73(90)=Qspvae7l6*acc73(26)
      acc73(91)=acc73(75)*Qspval6k4
      acc73(92)=-acc73(36)*Qspvak2k4
      acc73(93)=Qspval5k1*acc73(16)
      acc73(94)=Qspvak7k1*acc73(2)
      acc73(95)=Qspvae7k1*acc73(40)
      acc73(96)=Qspvak2l5*acc73(18)
      acc73(97)=Qspvak2k7*acc73(56)
      acc73(98)=Qspval6l5*acc73(38)
      acc73(99)=Qspval6k7*acc73(31)
      acc73(100)=Qspvak2e7*acc73(33)
      acc73(101)=Qspval6e7*acc73(29)
      acc73(102)=Qspval6k2*acc73(28)
      acc73(103)=Qspval6k3*acc73(43)
      acc73(104)=Qspvak2k3*acc73(20)
      acc73(105)=Qspval6k1*acc73(44)
      acc73(105)=acc73(12)+acc73(105)
      acc73(105)=Qspk2*acc73(105)
      acc73(86)=acc73(105)+acc73(104)+acc73(86)+acc73(103)+acc73(102)+acc73(87)&
      &+acc73(101)+acc73(100)+acc73(99)+acc73(98)+acc73(97)+acc73(96)+acc73(95)&
      &+acc73(94)+acc73(93)+acc73(92)+acc73(91)+acc73(90)+acc73(89)+acc73(10)+a&
      &cc73(88)
      acc73(86)=Qspvak4k3*acc73(86)
      acc73(87)=Qspk4+Qspk3
      acc73(88)=Qspk2-acc73(87)
      acc73(88)=acc73(69)*acc73(88)
      acc73(89)=Qspval5k3*acc73(65)
      acc73(90)=Qspvak7k3*acc73(66)
      acc73(91)=Qspvae7k3*acc73(78)
      acc73(92)=QspQ*acc73(67)
      acc73(93)=Qspval5k1*acc73(23)
      acc73(94)=Qspvak7k1*acc73(1)
      acc73(95)=Qspvae7k1*acc73(8)
      acc73(96)=Qspval6l5*acc73(74)
      acc73(97)=Qspval6k7*acc73(81)
      acc73(98)=Qspval6e7*acc73(76)
      acc73(99)=Qspval6k1*acc73(39)
      acc73(100)=Qspval6k3*acc73(13)
      acc73(101)=-Qspvak2k3*acc73(6)
      acc73(88)=acc73(101)+acc73(100)+acc73(99)+acc73(98)+acc73(97)+acc73(96)+a&
      &cc73(95)+acc73(94)+acc73(93)+acc73(92)+acc73(91)+acc73(90)+acc73(4)+acc7&
      &3(89)+acc73(88)
      acc73(88)=Qspk2*acc73(88)
      acc73(89)=acc73(6)*acc73(87)
      acc73(90)=Qspval5k2*acc73(32)
      acc73(91)=Qspvak7k2*acc73(63)
      acc73(92)=Qspvae7k2*acc73(52)
      acc73(93)=QspQ*acc73(36)
      acc73(94)=Qspval5k1*acc73(47)
      acc73(95)=Qspvak7k1*acc73(64)
      acc73(96)=Qspvae7k1*acc73(62)
      acc73(97)=Qspval6l5*acc73(58)
      acc73(98)=-Qspval6k7*acc73(42)
      acc73(99)=Qspval6e7*acc73(84)
      acc73(100)=-Qspval6k1*acc73(11)
      acc73(101)=Qspval6k2*acc73(24)
      acc73(89)=acc73(101)+acc73(100)+acc73(99)+acc73(98)+acc73(97)+acc73(96)+a&
      &cc73(95)+acc73(94)+acc73(93)+acc73(92)+acc73(90)+acc73(91)+acc73(89)
      acc73(89)=Qspvak2k3*acc73(89)
      acc73(90)=-acc73(83)*acc73(87)
      acc73(91)=-QspQ*acc73(75)
      acc73(92)=-Qspvak2l5*acc73(58)
      acc73(93)=Qspvak2k7*acc73(42)
      acc73(94)=-Qspvak2e7*acc73(84)
      acc73(90)=acc73(94)+acc73(93)+acc73(92)+acc73(91)+acc73(90)
      acc73(90)=Qspval6k3*acc73(90)
      acc73(91)=Qspvak2l5*acc73(59)
      acc73(92)=Qspvak2k7*acc73(50)
      acc73(93)=Qspvak2e7*acc73(34)
      acc73(91)=acc73(93)+acc73(92)+acc73(55)+acc73(91)
      acc73(91)=Qspval6k2*acc73(91)
      acc73(92)=Qspval6k2*acc73(17)
      acc73(93)=Qspval6k3*acc73(11)
      acc73(92)=acc73(93)+acc73(5)+acc73(92)
      acc73(92)=Qspvak2k1*acc73(92)
      acc73(87)=acc73(61)*acc73(87)
      acc73(93)=acc73(19)*Qspvak4k1
      acc73(94)=Qspval5k3*acc73(85)
      acc73(95)=Qspval5l6*acc73(68)
      acc73(96)=Qspvak7k3*acc73(72)
      acc73(97)=Qspvak7l6*acc73(71)
      acc73(98)=Qspvae7k3*acc73(77)
      acc73(99)=Qspvae7l6*acc73(15)
      acc73(100)=Qspval5k2*acc73(45)
      acc73(101)=Qspvak7k2*acc73(79)
      acc73(102)=Qspvae7k2*acc73(49)
      acc73(103)=QspQ*acc73(27)
      acc73(104)=Qspval5k1*acc73(9)
      acc73(105)=Qspvak7k1*acc73(46)
      acc73(106)=Qspvae7k1*acc73(3)
      acc73(107)=Qspvak2l5*acc73(21)
      acc73(108)=Qspvak2k7*acc73(22)
      acc73(109)=Qspval6l5*acc73(82)
      acc73(110)=Qspval6k7*acc73(80)
      acc73(111)=Qspvak2e7*acc73(70)
      acc73(112)=Qspval6e7*acc73(73)
      acc73(113)=Qspval6k1*acc73(7)
      brack=acc73(14)+acc73(86)+acc73(87)+acc73(88)+acc73(89)+acc73(90)+acc73(9&
      &1)+acc73(92)+acc73(93)+acc73(94)+acc73(95)+acc73(96)+acc73(97)+acc73(98)&
      &+acc73(99)+acc73(100)+acc73(101)+acc73(102)+acc73(103)+acc73(104)+acc73(&
      &105)+acc73(106)+acc73(107)+acc73(108)+acc73(109)+acc73(110)+acc73(111)+a&
      &cc73(112)+acc73(113)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p9_csbar_epnebbbarg_groups, only: &
!           & sign => diagram73_sign, shift => diagram73_shift
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd73h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd73h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d73
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d73 = 0.0_ki
      d73 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d73, ki), aimag(d73), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p9_csbar_epnebbbarg_d73h1l1
