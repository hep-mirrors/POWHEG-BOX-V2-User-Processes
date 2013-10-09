module     p5_usbar_epnebbbarg_d304h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d304h1l1.f90
   ! generator: buildfortran.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd304h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc304(102)
      complex(ki) :: Qspk1
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspl6
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      Qspk1 = dotproduct(Q,k1)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspl6 = dotproduct(Q,l6)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      acc304(1)=abb304(9)
      acc304(2)=abb304(10)
      acc304(3)=abb304(11)
      acc304(4)=abb304(12)
      acc304(5)=abb304(13)
      acc304(6)=abb304(14)
      acc304(7)=abb304(15)
      acc304(8)=abb304(16)
      acc304(9)=abb304(17)
      acc304(10)=abb304(18)
      acc304(11)=abb304(19)
      acc304(12)=abb304(20)
      acc304(13)=abb304(21)
      acc304(14)=abb304(22)
      acc304(15)=abb304(23)
      acc304(16)=abb304(24)
      acc304(17)=abb304(25)
      acc304(18)=abb304(26)
      acc304(19)=abb304(27)
      acc304(20)=abb304(28)
      acc304(21)=abb304(29)
      acc304(22)=abb304(30)
      acc304(23)=abb304(31)
      acc304(24)=abb304(32)
      acc304(25)=abb304(33)
      acc304(26)=abb304(34)
      acc304(27)=abb304(35)
      acc304(28)=abb304(36)
      acc304(29)=abb304(37)
      acc304(30)=abb304(38)
      acc304(31)=abb304(39)
      acc304(32)=abb304(40)
      acc304(33)=abb304(41)
      acc304(34)=abb304(42)
      acc304(35)=abb304(43)
      acc304(36)=abb304(44)
      acc304(37)=abb304(45)
      acc304(38)=abb304(46)
      acc304(39)=abb304(47)
      acc304(40)=abb304(48)
      acc304(41)=abb304(49)
      acc304(42)=abb304(50)
      acc304(43)=abb304(51)
      acc304(44)=abb304(52)
      acc304(45)=abb304(53)
      acc304(46)=abb304(54)
      acc304(47)=abb304(55)
      acc304(48)=abb304(56)
      acc304(49)=abb304(57)
      acc304(50)=abb304(58)
      acc304(51)=abb304(59)
      acc304(52)=abb304(60)
      acc304(53)=abb304(61)
      acc304(54)=abb304(62)
      acc304(55)=abb304(63)
      acc304(56)=abb304(65)
      acc304(57)=abb304(66)
      acc304(58)=abb304(69)
      acc304(59)=abb304(70)
      acc304(60)=abb304(71)
      acc304(61)=abb304(72)
      acc304(62)=abb304(73)
      acc304(63)=abb304(74)
      acc304(64)=abb304(75)
      acc304(65)=abb304(76)
      acc304(66)=abb304(77)
      acc304(67)=abb304(78)
      acc304(68)=abb304(79)
      acc304(69)=abb304(80)
      acc304(70)=abb304(83)
      acc304(71)=abb304(84)
      acc304(72)=abb304(85)
      acc304(73)=abb304(86)
      acc304(74)=abb304(87)
      acc304(75)=abb304(88)
      acc304(76)=abb304(89)
      acc304(77)=abb304(94)
      acc304(78)=abb304(97)
      acc304(79)=abb304(107)
      acc304(80)=abb304(115)
      acc304(81)=abb304(119)
      acc304(82)=abb304(121)
      acc304(83)=abb304(123)
      acc304(84)=abb304(124)
      acc304(85)=abb304(125)
      acc304(86)=abb304(126)
      acc304(87)=abb304(128)
      acc304(88)=-Qspk1+Qspk4+Qspk3
      acc304(89)=-acc304(61)*acc304(88)
      acc304(90)=-Qspval6k1*acc304(45)
      acc304(91)=Qspval6k3*acc304(81)
      acc304(89)=acc304(91)+acc304(14)+acc304(90)+acc304(89)
      acc304(89)=Qspvak2l5*acc304(89)
      acc304(90)=-acc304(53)*acc304(88)
      acc304(91)=Qspvak4k1*acc304(31)
      acc304(92)=Qspvak4k3*acc304(62)
      acc304(90)=acc304(92)+acc304(91)+acc304(7)+acc304(90)
      acc304(90)=Qspk2*acc304(90)
      acc304(91)=Qspval6l5*acc304(80)
      acc304(91)=acc304(91)+acc304(73)
      acc304(91)=-acc304(91)*acc304(88)
      acc304(92)=Qspvak2k1*acc304(45)
      acc304(93)=-Qspvak2k3*acc304(81)
      acc304(92)=acc304(92)+acc304(93)
      acc304(92)=Qspval6l5*acc304(92)
      acc304(93)=Qspval6l5*acc304(3)
      acc304(94)=Qspvak2l5*acc304(4)
      acc304(93)=acc304(94)+acc304(16)+acc304(93)
      acc304(93)=Qspvak4k1*acc304(93)
      acc304(94)=Qspval6l5*acc304(72)
      acc304(95)=Qspvak2l5*acc304(69)
      acc304(94)=acc304(95)+acc304(43)+acc304(94)
      acc304(94)=Qspvak4k3*acc304(94)
      acc304(95)=Qspl6*acc304(65)
      acc304(96)=Qspvak2l6*acc304(2)
      acc304(97)=Qspval6k1*acc304(70)
      acc304(98)=Qspval6k3*acc304(82)
      acc304(99)=Qspvak2k1*acc304(1)
      acc304(100)=Qspvak2k3*acc304(10)
      acc304(101)=QspQ*acc304(38)
      acc304(89)=acc304(90)+acc304(94)+acc304(93)+acc304(89)+acc304(92)+acc304(&
      &101)+acc304(100)+acc304(99)+acc304(98)+acc304(97)+acc304(96)+acc304(6)+a&
      &cc304(95)+acc304(91)
      acc304(89)=Qspe7*acc304(89)
      acc304(90)=Qspvak2k7*acc304(56)
      acc304(91)=Qspval6k7*acc304(33)
      acc304(92)=Qspvak2e7*acc304(15)
      acc304(93)=Qspval6e7*acc304(52)
      acc304(94)=Qspval6k2*acc304(34)
      acc304(95)=Qspl6*acc304(30)
      acc304(96)=Qspvak2l6*acc304(28)
      acc304(97)=QspQ*acc304(46)
      acc304(98)=Qspval6l5*acc304(24)
      acc304(99)=Qspvak2l5*acc304(44)
      acc304(90)=acc304(99)+acc304(98)+acc304(97)+acc304(96)+acc304(95)+acc304(&
      &94)+acc304(93)+acc304(92)+acc304(91)+acc304(5)+acc304(90)
      acc304(90)=Qspvak4k1*acc304(90)
      acc304(91)=Qspvak2k7*acc304(55)
      acc304(92)=Qspval6k7*acc304(29)
      acc304(93)=Qspvak2e7*acc304(22)
      acc304(94)=Qspval6e7*acc304(78)
      acc304(95)=Qspval6k2*acc304(67)
      acc304(96)=Qspl6*acc304(75)
      acc304(97)=Qspvak2l6*acc304(20)
      acc304(98)=QspQ*acc304(74)
      acc304(99)=Qspval6l5*acc304(57)
      acc304(100)=Qspvak2l5*acc304(54)
      acc304(91)=acc304(100)+acc304(99)+acc304(98)+acc304(97)+acc304(96)+acc304&
      &(95)+acc304(94)+acc304(93)+acc304(92)+acc304(36)+acc304(91)
      acc304(91)=Qspvak4k3*acc304(91)
      acc304(92)=Qspk7-Qspl5
      acc304(93)=-acc304(27)*acc304(92)
      acc304(94)=acc304(47)*acc304(88)
      acc304(95)=Qspval6k1*acc304(84)
      acc304(96)=Qspval6k3*acc304(85)
      acc304(97)=Qspvak2k1*acc304(41)
      acc304(98)=Qspvak2k3*acc304(32)
      acc304(99)=QspQ*acc304(25)
      acc304(100)=Qspvak4k1*acc304(23)
      acc304(101)=Qspvak4k3*acc304(50)
      acc304(102)=Qspk2*acc304(37)
      acc304(93)=acc304(102)+acc304(101)+acc304(100)+acc304(99)+acc304(98)+acc3&
      &04(97)+acc304(96)+acc304(95)+acc304(17)+acc304(94)+acc304(93)
      acc304(93)=Qspk2*acc304(93)
      acc304(94)=Qspvak2k7*acc304(42)
      acc304(95)=Qspval6k7*acc304(77)
      acc304(96)=Qspvak2e7*acc304(63)
      acc304(97)=Qspval6e7*acc304(58)
      acc304(98)=Qspval6k2*acc304(64)
      acc304(99)=Qspl6*acc304(76)
      acc304(100)=Qspvak2l6*acc304(12)
      acc304(101)=QspQ*acc304(39)
      acc304(102)=Qspval6l5*acc304(79)
      acc304(94)=acc304(99)-acc304(98)-acc304(97)-acc304(96)-acc304(94)-acc304(&
      &95)+acc304(100)-acc304(101)+acc304(102)-acc304(71)
      acc304(94)=acc304(94)*acc304(88)
      acc304(95)=Qspval6k1*acc304(66)
      acc304(96)=Qspval6k3*acc304(86)
      acc304(97)=Qspvak2k1*acc304(51)
      acc304(98)=Qspvak2k3*acc304(35)
      acc304(95)=acc304(98)+acc304(97)+acc304(96)+acc304(9)+acc304(95)
      acc304(95)=QspQ*acc304(95)
      acc304(88)=acc304(59)*acc304(88)
      acc304(96)=-Qspval6k1*acc304(48)
      acc304(97)=Qspval6k3*acc304(68)
      acc304(88)=acc304(97)+acc304(60)+acc304(96)+acc304(88)
      acc304(88)=Qspvak2l5*acc304(88)
      acc304(96)=Qspval6k1*acc304(87)
      acc304(97)=-Qspval6k3*acc304(83)
      acc304(96)=acc304(97)+acc304(96)+acc304(13)
      acc304(96)=acc304(92)*acc304(96)
      acc304(97)=Qspvak2k1*acc304(48)
      acc304(98)=-Qspvak2k3*acc304(68)
      acc304(97)=acc304(97)+acc304(98)
      acc304(97)=Qspval6l5*acc304(97)
      acc304(98)=Qspval6k2*acc304(19)
      acc304(99)=Qspl6*acc304(21)
      acc304(100)=Qspvak2l6*acc304(8)
      acc304(101)=acc304(26)*acc304(92)
      acc304(101)=acc304(40)+acc304(101)
      acc304(101)=Qspvak2k1*acc304(101)
      acc304(92)=-acc304(18)*acc304(92)
      acc304(92)=acc304(49)+acc304(92)
      acc304(92)=Qspvak2k3*acc304(92)
      brack=acc304(11)+acc304(88)+acc304(89)+acc304(90)+acc304(91)+acc304(92)+a&
      &cc304(93)+acc304(94)+acc304(95)+acc304(96)+acc304(97)+acc304(98)+acc304(&
      &99)+acc304(100)+acc304(101)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram304_sign, shift => diagram304_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd304h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k6
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd304h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d304
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k6
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d304 = 0.0_ki
      d304 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d304, ki), aimag(d304), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d304h1l1
