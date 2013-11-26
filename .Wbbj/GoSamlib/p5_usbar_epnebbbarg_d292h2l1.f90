module     p5_usbar_epnebbbarg_d292h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d292h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd292h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc292(114)
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak4l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspe7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak2e7
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspl5 = dotproduct(Q,l5)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak4l6 = dotproduct(Q,spvak4l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspe7 = dotproduct(Q,e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      acc292(1)=abb292(8)
      acc292(2)=abb292(9)
      acc292(3)=abb292(10)
      acc292(4)=abb292(11)
      acc292(5)=abb292(12)
      acc292(6)=abb292(13)
      acc292(7)=abb292(14)
      acc292(8)=abb292(15)
      acc292(9)=abb292(16)
      acc292(10)=abb292(17)
      acc292(11)=abb292(18)
      acc292(12)=abb292(19)
      acc292(13)=abb292(20)
      acc292(14)=abb292(21)
      acc292(15)=abb292(22)
      acc292(16)=abb292(23)
      acc292(17)=abb292(24)
      acc292(18)=abb292(25)
      acc292(19)=abb292(26)
      acc292(20)=abb292(27)
      acc292(21)=abb292(28)
      acc292(22)=abb292(29)
      acc292(23)=abb292(30)
      acc292(24)=abb292(31)
      acc292(25)=abb292(32)
      acc292(26)=abb292(33)
      acc292(27)=abb292(34)
      acc292(28)=abb292(35)
      acc292(29)=abb292(36)
      acc292(30)=abb292(37)
      acc292(31)=abb292(38)
      acc292(32)=abb292(39)
      acc292(33)=abb292(40)
      acc292(34)=abb292(41)
      acc292(35)=abb292(42)
      acc292(36)=abb292(43)
      acc292(37)=abb292(44)
      acc292(38)=abb292(45)
      acc292(39)=abb292(46)
      acc292(40)=abb292(47)
      acc292(41)=abb292(48)
      acc292(42)=abb292(49)
      acc292(43)=abb292(50)
      acc292(44)=abb292(51)
      acc292(45)=abb292(52)
      acc292(46)=abb292(53)
      acc292(47)=abb292(54)
      acc292(48)=abb292(55)
      acc292(49)=abb292(56)
      acc292(50)=abb292(57)
      acc292(51)=abb292(59)
      acc292(52)=abb292(60)
      acc292(53)=abb292(62)
      acc292(54)=abb292(63)
      acc292(55)=abb292(66)
      acc292(56)=abb292(67)
      acc292(57)=abb292(72)
      acc292(58)=abb292(74)
      acc292(59)=abb292(76)
      acc292(60)=abb292(78)
      acc292(61)=abb292(80)
      acc292(62)=abb292(81)
      acc292(63)=abb292(82)
      acc292(64)=abb292(83)
      acc292(65)=abb292(84)
      acc292(66)=abb292(86)
      acc292(67)=abb292(87)
      acc292(68)=abb292(88)
      acc292(69)=abb292(89)
      acc292(70)=abb292(91)
      acc292(71)=abb292(103)
      acc292(72)=abb292(104)
      acc292(73)=abb292(105)
      acc292(74)=abb292(109)
      acc292(75)=abb292(110)
      acc292(76)=abb292(112)
      acc292(77)=abb292(114)
      acc292(78)=abb292(116)
      acc292(79)=abb292(117)
      acc292(80)=abb292(120)
      acc292(81)=abb292(121)
      acc292(82)=abb292(123)
      acc292(83)=abb292(125)
      acc292(84)=abb292(126)
      acc292(85)=abb292(127)
      acc292(86)=abb292(129)
      acc292(87)=abb292(130)
      acc292(88)=abb292(132)
      acc292(89)=abb292(133)
      acc292(90)=abb292(138)
      acc292(91)=abb292(139)
      acc292(92)=abb292(140)
      acc292(93)=abb292(158)
      acc292(94)=abb292(163)
      acc292(95)=abb292(164)
      acc292(96)=abb292(167)
      acc292(97)=abb292(168)
      acc292(98)=abb292(170)
      acc292(99)=Qspl6-Qspk1
      acc292(100)=acc292(99)+Qspl5
      acc292(101)=acc292(27)*acc292(100)
      acc292(102)=Qspvak2k3*acc292(46)
      acc292(103)=Qspvak2l5*acc292(45)
      acc292(104)=Qspvak2l6*acc292(40)
      acc292(105)=QspQ*acc292(22)
      acc292(106)=Qspk2*acc292(21)
      acc292(106)=acc292(17)+acc292(106)
      acc292(106)=Qspvak4k3*acc292(106)
      acc292(107)=Qspvak2k1*acc292(35)
      acc292(101)=acc292(107)+acc292(106)+acc292(105)+acc292(104)+acc292(103)+a&
      &cc292(7)+acc292(102)+acc292(101)
      acc292(101)=Qspvak2k1*acc292(101)
      acc292(99)=QspQ+acc292(99)
      acc292(99)=acc292(31)*acc292(99)
      acc292(102)=Qspval5k1*acc292(12)
      acc292(103)=Qspval5l6*acc292(95)
      acc292(104)=Qspvak2l5*acc292(66)
      acc292(105)=Qspvak2l6*acc292(63)
      acc292(99)=acc292(105)+acc292(104)+acc292(103)+acc292(6)+acc292(102)+acc2&
      &92(99)
      acc292(99)=Qspvak4k3*acc292(99)
      acc292(102)=Qspvak4k1*acc292(69)
      acc292(103)=Qspvak4l6*acc292(87)
      acc292(102)=acc292(102)+acc292(103)
      acc292(103)=acc292(92)-acc292(102)
      acc292(103)=Qspl5*acc292(103)
      acc292(104)=acc292(65)+acc292(102)
      acc292(104)=Qspk1*acc292(104)
      acc292(102)=acc292(89)-acc292(102)
      acc292(102)=Qspl6*acc292(102)
      acc292(105)=Qspvak4k1*acc292(81)
      acc292(106)=Qspvak4l6*acc292(94)
      acc292(105)=acc292(106)+acc292(54)+acc292(105)
      acc292(105)=Qspk2*acc292(105)
      acc292(106)=Qspvak4k1*acc292(82)
      acc292(107)=Qspvak4l6*acc292(97)
      acc292(106)=acc292(107)+acc292(13)+acc292(106)
      acc292(106)=QspQ*acc292(106)
      acc292(107)=Qspvak2k7*acc292(56)
      acc292(108)=Qspvak2k3*acc292(29)
      acc292(109)=Qspvak1l6*acc292(39)
      acc292(110)=Qspval6k1*acc292(71)
      acc292(111)=Qspval5k1*acc292(25)
      acc292(112)=Qspval5l6*acc292(74)
      acc292(113)=Qspvak2l5*acc292(4)
      acc292(114)=Qspvak2l6*acc292(2)
      acc292(99)=acc292(101)+acc292(99)+acc292(106)+acc292(105)+acc292(102)+acc&
      &292(104)+acc292(114)+acc292(113)+acc292(112)+acc292(111)+acc292(110)+acc&
      &292(109)+acc292(108)+acc292(11)+acc292(107)+acc292(103)
      acc292(99)=Qspe7*acc292(99)
      acc292(101)=Qspk2-Qspk7
      acc292(102)=acc292(44)*acc292(101)
      acc292(103)=Qspvak2e7*acc292(61)
      acc292(104)=Qspvak1l6*acc292(48)
      acc292(105)=Qspval6k1*acc292(73)
      acc292(106)=Qspval5k1*acc292(79)
      acc292(107)=Qspval5l6*acc292(96)
      acc292(108)=Qspvak2l5*acc292(9)
      acc292(109)=Qspvak2l6*acc292(15)
      acc292(110)=Qspvak4k1*acc292(43)
      acc292(111)=Qspvak4l6*acc292(85)
      acc292(112)=Qspk1*acc292(53)
      acc292(113)=Qspl6*acc292(47)
      acc292(114)=QspQ*acc292(41)
      acc292(102)=acc292(114)+acc292(113)+acc292(112)+acc292(111)+acc292(110)+a&
      &cc292(109)+acc292(108)+acc292(107)+acc292(106)+acc292(105)+acc292(104)+a&
      &cc292(18)+acc292(103)+acc292(102)
      acc292(102)=QspQ*acc292(102)
      acc292(103)=Qspvak2e7*acc292(51)
      acc292(104)=Qspvak1l6*acc292(49)
      acc292(105)=Qspval6k1*acc292(75)
      acc292(106)=Qspval5k1*acc292(10)
      acc292(107)=Qspval5l6*acc292(77)
      acc292(108)=Qspvak2l5*acc292(57)
      acc292(109)=Qspvak2l6*acc292(59)
      acc292(110)=Qspk1*acc292(52)
      acc292(111)=Qspl6*acc292(16)
      acc292(112)=Qspk2*acc292(37)
      acc292(113)=QspQ*acc292(72)
      acc292(103)=acc292(113)+acc292(112)+acc292(111)+acc292(110)+acc292(109)+a&
      &cc292(108)+acc292(107)+acc292(106)+acc292(105)+acc292(104)+acc292(38)+ac&
      &c292(103)
      acc292(103)=Qspvak4k3*acc292(103)
      acc292(104)=Qspvak2e7*acc292(60)
      acc292(105)=Qspvak1l6*acc292(50)
      acc292(106)=Qspval6k1*acc292(76)
      acc292(107)=Qspval5k1*acc292(83)
      acc292(108)=Qspval5l6*acc292(98)
      acc292(109)=Qspvak2l5*acc292(67)
      acc292(110)=Qspvak2l6*acc292(55)
      acc292(111)=Qspk1*acc292(93)
      acc292(112)=Qspl6*acc292(90)
      acc292(104)=acc292(107)+acc292(108)-acc292(111)+acc292(112)-acc292(104)+a&
      &cc292(109)+acc292(110)+acc292(105)-acc292(106)
      acc292(105)=acc292(78)+acc292(104)
      acc292(105)=Qspk7*acc292(105)
      acc292(106)=Qspvak4k1*acc292(23)
      acc292(107)=Qspvak4l6*acc292(84)
      acc292(104)=acc292(107)+acc292(106)+acc292(14)-acc292(104)
      acc292(104)=Qspk2*acc292(104)
      acc292(106)=Qspvak2k3*acc292(36)
      acc292(106)=acc292(106)-acc292(20)
      acc292(101)=acc292(106)*acc292(101)
      acc292(100)=-acc292(26)*acc292(100)
      acc292(106)=Qspvak2l5*acc292(42)
      acc292(107)=Qspvak2l6*acc292(34)
      acc292(108)=Qspvak2k3*acc292(24)
      acc292(108)=acc292(8)+acc292(108)
      acc292(108)=QspQ*acc292(108)
      acc292(109)=Qspvak2k7*acc292(28)
      acc292(109)=acc292(5)+acc292(109)
      acc292(109)=Qspvak4k3*acc292(109)
      acc292(110)=Qspvak2k1*acc292(33)
      acc292(100)=acc292(110)+acc292(109)+acc292(108)+acc292(107)+acc292(106)+a&
      &cc292(1)+acc292(100)+acc292(101)
      acc292(100)=Qspvak2k1*acc292(100)
      acc292(101)=Qspvak4k1*acc292(64)
      acc292(106)=Qspvak4l6*acc292(86)
      acc292(101)=acc292(101)+acc292(106)
      acc292(106)=acc292(91)-acc292(101)
      acc292(106)=Qspl5*acc292(106)
      acc292(107)=acc292(80)+acc292(101)
      acc292(107)=Qspk1*acc292(107)
      acc292(101)=acc292(88)-acc292(101)
      acc292(101)=Qspl6*acc292(101)
      acc292(108)=Qspvak2e7*acc292(58)
      acc292(109)=Qspvak1l6*acc292(19)
      acc292(110)=Qspval6k1*acc292(70)
      acc292(111)=Qspval5k1*acc292(62)
      acc292(112)=Qspval5l6*acc292(68)
      acc292(113)=Qspvak2l5*acc292(30)
      acc292(114)=Qspvak2l6*acc292(3)
      brack=acc292(32)+acc292(99)+acc292(100)+acc292(101)+acc292(102)+acc292(10&
      &3)+acc292(104)+acc292(105)+acc292(106)+acc292(107)+acc292(108)+acc292(10&
      &9)+acc292(110)+acc292(111)+acc292(112)+acc292(113)+acc292(114)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram292_sign, shift => diagram292_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd292h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd292h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d292
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d292 = 0.0_ki
      d292 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d292, ki), aimag(d292), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d292h2l1
