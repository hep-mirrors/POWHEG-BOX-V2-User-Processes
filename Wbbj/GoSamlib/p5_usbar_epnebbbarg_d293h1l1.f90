module     p5_usbar_epnebbbarg_d293h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d293h1l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd293h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc293(132)
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspl6
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k3
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspl6 = dotproduct(Q,l6)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc293(1)=abb293(8)
      acc293(2)=abb293(9)
      acc293(3)=abb293(10)
      acc293(4)=abb293(11)
      acc293(5)=abb293(12)
      acc293(6)=abb293(13)
      acc293(7)=abb293(14)
      acc293(8)=abb293(15)
      acc293(9)=abb293(16)
      acc293(10)=abb293(17)
      acc293(11)=abb293(18)
      acc293(12)=abb293(19)
      acc293(13)=abb293(20)
      acc293(14)=abb293(21)
      acc293(15)=abb293(22)
      acc293(16)=abb293(23)
      acc293(17)=abb293(24)
      acc293(18)=abb293(25)
      acc293(19)=abb293(26)
      acc293(20)=abb293(27)
      acc293(21)=abb293(28)
      acc293(22)=abb293(29)
      acc293(23)=abb293(30)
      acc293(24)=abb293(31)
      acc293(25)=abb293(32)
      acc293(26)=abb293(33)
      acc293(27)=abb293(34)
      acc293(28)=abb293(35)
      acc293(29)=abb293(36)
      acc293(30)=abb293(37)
      acc293(31)=abb293(38)
      acc293(32)=abb293(39)
      acc293(33)=abb293(40)
      acc293(34)=abb293(41)
      acc293(35)=abb293(42)
      acc293(36)=abb293(43)
      acc293(37)=abb293(44)
      acc293(38)=abb293(45)
      acc293(39)=abb293(47)
      acc293(40)=abb293(51)
      acc293(41)=abb293(52)
      acc293(42)=abb293(53)
      acc293(43)=abb293(54)
      acc293(44)=abb293(55)
      acc293(45)=abb293(56)
      acc293(46)=abb293(57)
      acc293(47)=abb293(58)
      acc293(48)=abb293(59)
      acc293(49)=abb293(60)
      acc293(50)=abb293(66)
      acc293(51)=abb293(67)
      acc293(52)=abb293(71)
      acc293(53)=abb293(72)
      acc293(54)=abb293(74)
      acc293(55)=abb293(77)
      acc293(56)=abb293(78)
      acc293(57)=abb293(79)
      acc293(58)=abb293(80)
      acc293(59)=abb293(82)
      acc293(60)=abb293(85)
      acc293(61)=abb293(88)
      acc293(62)=abb293(90)
      acc293(63)=abb293(91)
      acc293(64)=abb293(95)
      acc293(65)=abb293(96)
      acc293(66)=abb293(98)
      acc293(67)=abb293(99)
      acc293(68)=abb293(101)
      acc293(69)=abb293(104)
      acc293(70)=abb293(106)
      acc293(71)=abb293(107)
      acc293(72)=abb293(108)
      acc293(73)=abb293(109)
      acc293(74)=abb293(112)
      acc293(75)=abb293(113)
      acc293(76)=abb293(114)
      acc293(77)=abb293(117)
      acc293(78)=abb293(119)
      acc293(79)=abb293(120)
      acc293(80)=abb293(121)
      acc293(81)=abb293(127)
      acc293(82)=abb293(129)
      acc293(83)=abb293(130)
      acc293(84)=abb293(132)
      acc293(85)=abb293(133)
      acc293(86)=abb293(134)
      acc293(87)=abb293(135)
      acc293(88)=abb293(138)
      acc293(89)=abb293(140)
      acc293(90)=abb293(142)
      acc293(91)=abb293(147)
      acc293(92)=abb293(149)
      acc293(93)=abb293(150)
      acc293(94)=abb293(154)
      acc293(95)=abb293(159)
      acc293(96)=abb293(160)
      acc293(97)=abb293(161)
      acc293(98)=abb293(164)
      acc293(99)=abb293(165)
      acc293(100)=abb293(166)
      acc293(101)=abb293(167)
      acc293(102)=abb293(168)
      acc293(103)=abb293(169)
      acc293(104)=abb293(177)
      acc293(105)=abb293(179)
      acc293(106)=abb293(186)
      acc293(107)=abb293(188)
      acc293(108)=abb293(191)
      acc293(109)=abb293(192)
      acc293(110)=abb293(194)
      acc293(111)=abb293(196)
      acc293(112)=abb293(205)
      acc293(113)=abb293(217)
      acc293(114)=abb293(219)
      acc293(115)=Qspk7+Qspl5
      acc293(116)=acc293(65)*acc293(115)
      acc293(117)=Qspvak4k2*acc293(84)
      acc293(118)=Qspvak1k2*acc293(23)
      acc293(119)=Qspval6l5*acc293(82)
      acc293(120)=Qspvae7k2*acc293(45)
      acc293(121)=Qspvak4k1*acc293(71)
      acc293(122)=Qspval6e7*acc293(36)
      acc293(123)=Qspval6k2*acc293(110)
      acc293(124)=Qspl6*acc293(78)
      acc293(125)=Qspk1*acc293(76)
      acc293(126)=Qspval6k3*acc293(103)
      acc293(126)=acc293(48)+acc293(126)
      acc293(126)=Qspvae7k1*acc293(126)
      acc293(127)=Qspvak2k1*acc293(3)
      acc293(128)=Qspval6k1*acc293(4)
      acc293(129)=Qspk2*acc293(74)
      acc293(130)=QspQ*acc293(70)
      acc293(116)=acc293(130)+acc293(129)+acc293(128)+acc293(127)+acc293(126)+a&
      &cc293(125)+acc293(124)+acc293(123)+acc293(122)+acc293(121)+acc293(120)+a&
      &cc293(119)+acc293(118)+acc293(32)+acc293(117)+acc293(116)
      acc293(116)=QspQ*acc293(116)
      acc293(117)=Qspk1*acc293(100)
      acc293(118)=-Qspval6l5*acc293(63)
      acc293(118)=acc293(6)+acc293(118)
      acc293(118)=Qspvak2k1*acc293(118)
      acc293(119)=Qspval6k1*acc293(77)
      acc293(120)=Qspk2*acc293(50)
      acc293(117)=acc293(120)+acc293(119)+acc293(118)+acc293(81)+acc293(117)
      acc293(117)=Qspe7*acc293(117)
      acc293(118)=Qspval6l5*acc293(96)
      acc293(119)=Qspval6k1*acc293(83)
      acc293(120)=Qspk2*acc293(94)
      acc293(118)=acc293(120)+acc293(119)+acc293(88)+acc293(118)
      acc293(118)=QspQ*acc293(118)
      acc293(119)=Qspval6l5*acc293(47)
      acc293(120)=Qspval6e7*acc293(42)
      acc293(119)=acc293(120)+acc293(37)+acc293(119)
      acc293(119)=Qspvak2k1*acc293(119)
      acc293(120)=Qspvak7k2*acc293(57)
      acc293(121)=Qspval6k7*acc293(107)
      acc293(122)=Qspvak1k2*acc293(34)
      acc293(123)=Qspval6l5*acc293(66)
      acc293(124)=Qspvae7k2*acc293(106)
      acc293(125)=Qspvak7k1*acc293(38)
      acc293(125)=acc293(101)+acc293(125)
      acc293(125)=Qspval6e7*acc293(125)
      acc293(126)=Qspval6k2*acc293(102)
      acc293(127)=Qspk1*acc293(90)
      acc293(128)=-Qspval6k7*acc293(22)
      acc293(128)=acc293(51)+acc293(128)
      acc293(128)=Qspvae7k1*acc293(128)
      acc293(129)=Qspval6k1*acc293(12)
      acc293(130)=Qspk2*acc293(68)
      acc293(117)=acc293(117)+acc293(118)+acc293(130)+acc293(129)+acc293(119)+a&
      &cc293(128)+acc293(127)+acc293(126)+acc293(125)+acc293(124)+acc293(123)+a&
      &cc293(122)+acc293(121)+acc293(58)+acc293(120)
      acc293(117)=Qspvak4k3*acc293(117)
      acc293(118)=acc293(53)*acc293(115)
      acc293(119)=Qspvak4k2*acc293(85)
      acc293(120)=Qspvak1k2*acc293(26)
      acc293(121)=Qspvae7k2*acc293(49)
      acc293(122)=Qspvak4k1*acc293(17)
      acc293(123)=Qspval6e7*acc293(27)
      acc293(124)=Qspval6k2*acc293(108)
      acc293(125)=Qspk1*acc293(105)
      acc293(126)=Qspval6k3*acc293(95)
      acc293(126)=acc293(69)+acc293(126)
      acc293(126)=Qspvae7k1*acc293(126)
      acc293(127)=Qspvak2k1*acc293(39)
      acc293(128)=Qspval6k1*acc293(8)
      acc293(129)=Qspk2*acc293(54)
      acc293(118)=acc293(129)+acc293(128)+acc293(127)+acc293(126)+acc293(125)+a&
      &cc293(124)+acc293(123)+acc293(122)+acc293(121)+acc293(120)+acc293(35)+ac&
      &c293(119)+acc293(118)
      acc293(118)=Qspk2*acc293(118)
      acc293(119)=Qspval6k3*acc293(16)
      acc293(120)=Qspval6k2*acc293(44)
      acc293(121)=Qspl6*acc293(30)
      acc293(119)=acc293(121)+acc293(120)+acc293(1)+acc293(119)
      acc293(119)=Qspvak2k1*acc293(119)
      acc293(120)=Qspk1-Qspl6
      acc293(121)=-acc293(62)*acc293(120)
      acc293(122)=Qspvak2k1*acc293(2)
      acc293(121)=acc293(122)+acc293(31)+acc293(121)
      acc293(121)=Qspval6k1*acc293(121)
      acc293(122)=Qspvak4k1*acc293(60)
      acc293(123)=Qspval6k1*acc293(59)
      acc293(122)=acc293(123)+acc293(13)+acc293(122)
      acc293(122)=Qspk2*acc293(122)
      acc293(123)=Qspvak4k1*acc293(73)
      acc293(124)=Qspval6k1*acc293(5)
      acc293(123)=acc293(124)+acc293(55)+acc293(123)
      acc293(123)=QspQ*acc293(123)
      acc293(124)=Qspvak4k1*acc293(98)
      acc293(125)=acc293(89)-acc293(124)
      acc293(125)=Qspl6*acc293(125)
      acc293(124)=acc293(67)+acc293(124)
      acc293(124)=Qspk1*acc293(124)
      acc293(119)=acc293(123)+acc293(122)+acc293(121)+acc293(119)+acc293(124)+a&
      &cc293(28)+acc293(125)
      acc293(119)=Qspe7*acc293(119)
      acc293(120)=acc293(56)*acc293(120)
      acc293(121)=-acc293(21)*acc293(115)
      acc293(122)=Qspvak7k1*acc293(61)
      acc293(123)=Qspvae7k1*acc293(33)
      acc293(124)=Qspvak2k1*acc293(46)
      acc293(120)=acc293(124)+acc293(123)+acc293(11)+acc293(122)+acc293(121)+ac&
      &c293(120)
      acc293(120)=Qspval6k1*acc293(120)
      acc293(121)=Qspvak1k2*acc293(20)
      acc293(122)=Qspvae7k2*acc293(43)
      acc293(123)=Qspval6e7*acc293(91)
      acc293(124)=Qspval6k2*acc293(112)
      acc293(121)=-acc293(123)-acc293(121)+acc293(122)+acc293(124)-acc293(64)
      acc293(121)=-acc293(121)*acc293(115)
      acc293(122)=Qspval6k3*acc293(99)
      acc293(122)=acc293(122)+acc293(72)
      acc293(122)=-acc293(122)*acc293(115)
      acc293(123)=Qspval6k3*acc293(97)
      acc293(124)=Qspval6k2*acc293(113)
      acc293(125)=Qspl6*acc293(92)
      acc293(122)=acc293(125)+acc293(124)+acc293(52)+acc293(123)+acc293(122)
      acc293(122)=Qspvae7k1*acc293(122)
      acc293(123)=acc293(10)*acc293(115)
      acc293(124)=Qspval6k3*acc293(7)
      acc293(125)=Qspval6k2*acc293(40)
      acc293(126)=Qspl6*acc293(29)
      acc293(123)=acc293(126)+acc293(125)+acc293(25)+acc293(124)+acc293(123)
      acc293(123)=Qspvak2k1*acc293(123)
      acc293(124)=Qspvak4k2*acc293(93)
      acc293(125)=Qspvak4k1*acc293(86)
      acc293(124)=acc293(124)-acc293(125)
      acc293(125)=Qspvak7k1*acc293(79)
      acc293(125)=acc293(125)+acc293(87)-acc293(124)
      acc293(125)=Qspl6*acc293(125)
      acc293(115)=acc293(104)*acc293(115)
      acc293(115)=acc293(80)+acc293(115)+acc293(124)
      acc293(115)=Qspk1*acc293(115)
      acc293(124)=Qspval6k3*acc293(109)
      acc293(124)=acc293(124)+acc293(75)
      acc293(124)=Qspvak7k1*acc293(124)
      acc293(126)=Qspvak7k2*acc293(9)
      acc293(127)=Qspval6k7*acc293(18)
      acc293(128)=Qspvak1k2*acc293(19)
      acc293(129)=Qspval6l5*acc293(24)
      acc293(130)=Qspvae7k2*acc293(41)
      acc293(131)=Qspval6e7*acc293(14)
      acc293(132)=Qspvak7k1*acc293(114)
      acc293(132)=acc293(111)+acc293(132)
      acc293(132)=Qspval6k2*acc293(132)
      brack=acc293(15)+acc293(115)+acc293(116)+acc293(117)+acc293(118)+acc293(1&
      &19)+acc293(120)+acc293(121)+acc293(122)+acc293(123)+acc293(124)+acc293(1&
      &25)+acc293(126)+acc293(127)+acc293(128)+acc293(129)+acc293(130)+acc293(1&
      &31)+acc293(132)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram293_sign, shift => diagram293_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd293h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k7+k5
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd293h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d293
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k7+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d293 = 0.0_ki
      d293 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d293, ki), aimag(d293), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d293h1l1
