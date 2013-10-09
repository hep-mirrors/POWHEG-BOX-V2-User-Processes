module     p5_usbar_epnebbbarg_d296h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity1d296h1l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd296h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc296(158)
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspval6k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk1
      complex(ki) :: Qspval6k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk7
      complex(ki) :: Qspvae7k2
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspval6k3 = dotproduct(Q,spval6k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk1 = dotproduct(Q,k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk7 = dotproduct(Q,k7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      acc296(1)=abb296(8)
      acc296(2)=abb296(9)
      acc296(3)=abb296(10)
      acc296(4)=abb296(11)
      acc296(5)=abb296(12)
      acc296(6)=abb296(13)
      acc296(7)=abb296(14)
      acc296(8)=abb296(15)
      acc296(9)=abb296(16)
      acc296(10)=abb296(17)
      acc296(11)=abb296(18)
      acc296(12)=abb296(19)
      acc296(13)=abb296(20)
      acc296(14)=abb296(21)
      acc296(15)=abb296(22)
      acc296(16)=abb296(23)
      acc296(17)=abb296(24)
      acc296(18)=abb296(25)
      acc296(19)=abb296(26)
      acc296(20)=abb296(27)
      acc296(21)=abb296(28)
      acc296(22)=abb296(29)
      acc296(23)=abb296(30)
      acc296(24)=abb296(31)
      acc296(25)=abb296(32)
      acc296(26)=abb296(33)
      acc296(27)=abb296(34)
      acc296(28)=abb296(35)
      acc296(29)=abb296(36)
      acc296(30)=abb296(37)
      acc296(31)=abb296(38)
      acc296(32)=abb296(39)
      acc296(33)=abb296(40)
      acc296(34)=abb296(41)
      acc296(35)=abb296(42)
      acc296(36)=abb296(43)
      acc296(37)=abb296(44)
      acc296(38)=abb296(45)
      acc296(39)=abb296(46)
      acc296(40)=abb296(47)
      acc296(41)=abb296(48)
      acc296(42)=abb296(49)
      acc296(43)=abb296(50)
      acc296(44)=abb296(51)
      acc296(45)=abb296(52)
      acc296(46)=abb296(53)
      acc296(47)=abb296(54)
      acc296(48)=abb296(55)
      acc296(49)=abb296(56)
      acc296(50)=abb296(57)
      acc296(51)=abb296(58)
      acc296(52)=abb296(59)
      acc296(53)=abb296(60)
      acc296(54)=abb296(61)
      acc296(55)=abb296(62)
      acc296(56)=abb296(63)
      acc296(57)=abb296(65)
      acc296(58)=abb296(66)
      acc296(59)=abb296(67)
      acc296(60)=abb296(69)
      acc296(61)=abb296(70)
      acc296(62)=abb296(72)
      acc296(63)=abb296(73)
      acc296(64)=abb296(74)
      acc296(65)=abb296(76)
      acc296(66)=abb296(77)
      acc296(67)=abb296(78)
      acc296(68)=abb296(79)
      acc296(69)=abb296(82)
      acc296(70)=abb296(83)
      acc296(71)=abb296(84)
      acc296(72)=abb296(85)
      acc296(73)=abb296(86)
      acc296(74)=abb296(87)
      acc296(75)=abb296(88)
      acc296(76)=abb296(89)
      acc296(77)=abb296(90)
      acc296(78)=abb296(91)
      acc296(79)=abb296(92)
      acc296(80)=abb296(93)
      acc296(81)=abb296(94)
      acc296(82)=abb296(96)
      acc296(83)=abb296(97)
      acc296(84)=abb296(98)
      acc296(85)=abb296(99)
      acc296(86)=abb296(100)
      acc296(87)=abb296(101)
      acc296(88)=abb296(104)
      acc296(89)=abb296(105)
      acc296(90)=abb296(107)
      acc296(91)=abb296(110)
      acc296(92)=abb296(111)
      acc296(93)=abb296(113)
      acc296(94)=abb296(115)
      acc296(95)=abb296(117)
      acc296(96)=abb296(122)
      acc296(97)=abb296(124)
      acc296(98)=abb296(126)
      acc296(99)=abb296(127)
      acc296(100)=abb296(128)
      acc296(101)=abb296(129)
      acc296(102)=abb296(130)
      acc296(103)=abb296(131)
      acc296(104)=abb296(133)
      acc296(105)=abb296(135)
      acc296(106)=abb296(139)
      acc296(107)=abb296(140)
      acc296(108)=abb296(141)
      acc296(109)=abb296(144)
      acc296(110)=abb296(145)
      acc296(111)=abb296(146)
      acc296(112)=abb296(147)
      acc296(113)=abb296(148)
      acc296(114)=abb296(149)
      acc296(115)=abb296(152)
      acc296(116)=abb296(154)
      acc296(117)=abb296(156)
      acc296(118)=abb296(160)
      acc296(119)=abb296(161)
      acc296(120)=abb296(164)
      acc296(121)=abb296(169)
      acc296(122)=abb296(170)
      acc296(123)=abb296(171)
      acc296(124)=abb296(173)
      acc296(125)=abb296(176)
      acc296(126)=abb296(178)
      acc296(127)=abb296(180)
      acc296(128)=abb296(182)
      acc296(129)=abb296(185)
      acc296(130)=abb296(187)
      acc296(131)=abb296(188)
      acc296(132)=abb296(190)
      acc296(133)=abb296(193)
      acc296(134)=abb296(196)
      acc296(135)=abb296(197)
      acc296(136)=abb296(198)
      acc296(137)=abb296(199)
      acc296(138)=abb296(201)
      acc296(139)=Qspvak1k2*acc296(56)
      acc296(140)=Qspval5k2*acc296(38)
      acc296(141)=-Qspval6k7*acc296(101)
      acc296(142)=Qspvak7k2*acc296(72)
      acc296(143)=Qspvak2k7*acc296(47)
      acc296(144)=Qspvak4k2*acc296(5)
      acc296(145)=-Qspval6k3*acc296(12)
      acc296(146)=Qspvak2k3*acc296(20)
      acc296(147)=Qspval6k2*acc296(74)
      acc296(148)=Qspval6l5*acc296(115)
      acc296(148)=acc296(45)+acc296(148)
      acc296(148)=Qspvak4k3*acc296(148)
      acc296(149)=Qspvak4k3*acc296(46)
      acc296(149)=acc296(1)+acc296(149)
      acc296(149)=Qspk2*acc296(149)
      acc296(139)=acc296(149)+acc296(148)+acc296(147)+acc296(146)+acc296(145)+a&
      &cc296(144)+acc296(143)+acc296(142)+acc296(141)+acc296(140)+acc296(2)+acc&
      &296(139)
      acc296(139)=Qspvak2k1*acc296(139)
      acc296(140)=Qspl6+Qspl5
      acc296(141)=acc296(140)-Qspk1
      acc296(142)=-acc296(109)*acc296(141)
      acc296(143)=Qspval6k3*acc296(136)
      acc296(144)=Qspvak2k3*acc296(21)
      acc296(145)=Qspval6k1*acc296(129)
      acc296(146)=Qspval6l5*acc296(131)
      acc296(147)=QspQ*acc296(91)
      acc296(148)=Qspvak4k3*acc296(68)
      acc296(149)=Qspk2*acc296(118)
      acc296(142)=acc296(149)+acc296(148)+acc296(147)+acc296(146)+acc296(145)+a&
      &cc296(144)+acc296(3)+acc296(143)+acc296(142)
      acc296(142)=Qspk2*acc296(142)
      acc296(143)=Qspl6*acc296(34)
      acc296(144)=Qspval6k1*acc296(8)
      acc296(145)=Qspval6l5*acc296(77)
      acc296(146)=-Qspval6k1*acc296(115)
      acc296(146)=acc296(14)+acc296(146)
      acc296(146)=Qspvak2l5*acc296(146)
      acc296(143)=acc296(146)+acc296(145)+acc296(144)+acc296(24)+acc296(143)
      acc296(143)=Qspvak4k3*acc296(143)
      acc296(144)=-Qspval6k7*acc296(98)
      acc296(145)=-Qspval6k3*acc296(111)
      acc296(146)=Qspval6k2*acc296(113)
      acc296(144)=acc296(146)+acc296(145)+acc296(52)+acc296(144)
      acc296(144)=Qspvak2l5*acc296(144)
      acc296(145)=Qspval6k3*acc296(135)
      acc296(146)=acc296(145)+acc296(105)
      acc296(147)=-Qspvak2k3*acc296(104)
      acc296(147)=acc296(147)-acc296(146)
      acc296(147)=Qspl6*acc296(147)
      acc296(148)=Qspvak2k7*acc296(101)
      acc296(149)=Qspvak2k3*acc296(12)
      acc296(148)=acc296(149)+acc296(23)+acc296(148)
      acc296(148)=Qspval6k1*acc296(148)
      acc296(149)=Qspvak2k7*acc296(98)
      acc296(150)=Qspvak2k3*acc296(111)
      acc296(149)=acc296(150)+acc296(26)+acc296(149)
      acc296(149)=Qspval6l5*acc296(149)
      acc296(150)=Qspval6k3*acc296(137)
      acc296(151)=Qspvak2k3*acc296(41)
      acc296(150)=acc296(151)+acc296(88)+acc296(150)
      acc296(150)=QspQ*acc296(150)
      acc296(151)=Qspval5k1*acc296(80)
      acc296(152)=Qspval6k7*acc296(124)
      acc296(153)=Qspvak7k1*acc296(123)
      acc296(154)=Qspvak2k7*acc296(32)
      acc296(155)=Qspvak4k1*acc296(9)
      acc296(156)=Qspvak2l6*acc296(40)
      acc296(145)=acc296(66)+acc296(145)
      acc296(145)=Qspk1*acc296(145)
      acc296(146)=-Qspl5*acc296(146)
      acc296(157)=Qspl5-Qspk1
      acc296(157)=-acc296(104)*acc296(157)
      acc296(157)=acc296(27)+acc296(157)
      acc296(157)=Qspvak2k3*acc296(157)
      acc296(158)=Qspval6k2*acc296(81)
      acc296(139)=acc296(139)+acc296(142)+acc296(143)+acc296(150)+acc296(144)+a&
      &cc296(149)+acc296(148)+acc296(158)+acc296(147)+acc296(157)+acc296(146)+a&
      &cc296(145)+acc296(156)+acc296(155)+acc296(154)+acc296(153)+acc296(152)+a&
      &cc296(16)+acc296(151)
      acc296(139)=Qspe7*acc296(139)
      acc296(142)=Qspvae7k1*acc296(82)
      acc296(143)=Qspvak4k1*acc296(10)
      acc296(144)=Qspvak2l6*acc296(110)
      acc296(142)=acc296(144)+acc296(142)-acc296(143)
      acc296(143)=Qspval6k1*acc296(130)
      acc296(144)=Qspval6l5*acc296(133)
      acc296(143)=acc296(143)+acc296(144)
      acc296(144)=acc296(11)+acc296(143)
      acc296(144)=Qspvak2e7*acc296(144)
      acc296(145)=Qspval6k1*acc296(95)
      acc296(146)=Qspval6l5*acc296(78)
      acc296(145)=acc296(146)+acc296(43)+acc296(145)
      acc296(145)=Qspvak4k3*acc296(145)
      acc296(146)=-acc296(108)*acc296(141)
      acc296(147)=Qspval6k2*acc296(83)
      acc296(148)=Qspval6k1*acc296(125)
      acc296(149)=Qspval6l5*acc296(128)
      acc296(150)=Qspval6e7*acc296(86)
      acc296(151)=Qspk7*acc296(70)
      acc296(152)=Qspval6e7*acc296(133)
      acc296(152)=acc296(152)+acc296(107)
      acc296(153)=-Qspvak2l5*acc296(152)
      acc296(154)=QspQ*acc296(33)
      acc296(155)=Qspk2*acc296(57)
      acc296(144)=acc296(155)+acc296(145)+acc296(144)+acc296(154)+acc296(153)+a&
      &cc296(151)+acc296(150)+acc296(149)+acc296(148)+acc296(147)+acc296(30)+ac&
      &c296(146)-acc296(142)
      acc296(144)=Qspk2*acc296(144)
      acc296(145)=Qspvak7k2*acc296(51)
      acc296(146)=Qspvae7k2*acc296(59)
      acc296(147)=Qspval6k2*acc296(87)
      acc296(148)=-Qspval6e7*acc296(61)
      acc296(149)=Qspvak2e7*acc296(85)
      acc296(145)=acc296(149)+acc296(148)+acc296(147)+acc296(146)+acc296(55)+ac&
      &c296(145)
      acc296(145)=Qspvak4k3*acc296(145)
      acc296(146)=Qspvae7k2*acc296(44)
      acc296(147)=Qspvak4k2*acc296(31)
      acc296(148)=Qspval6e7*acc296(130)
      acc296(146)=-acc296(148)+acc296(146)-acc296(147)
      acc296(147)=acc296(15)-acc296(146)
      acc296(147)=Qspk7*acc296(147)
      acc296(148)=Qspvae7k2*acc296(54)
      acc296(149)=Qspvak4k2*acc296(42)
      acc296(150)=-Qspval6e7*acc296(90)
      acc296(148)=acc296(150)+acc296(149)+acc296(4)+acc296(148)
      acc296(148)=QspQ*acc296(148)
      acc296(149)=-Qspvak2e7*acc296(64)
      acc296(146)=acc296(149)+acc296(35)+acc296(146)
      acc296(146)=Qspk2*acc296(146)
      acc296(149)=Qspk7*acc296(64)
      acc296(150)=QspQ*acc296(65)
      acc296(149)=acc296(150)+acc296(60)+acc296(149)
      acc296(149)=Qspvak2e7*acc296(149)
      acc296(150)=Qspvak1k2*acc296(49)
      acc296(151)=Qspval5k2*acc296(76)
      acc296(153)=Qspvak7k2*acc296(67)
      acc296(154)=Qspvak4k2*acc296(6)
      acc296(155)=Qspval6k2*acc296(62)
      acc296(156)=-Qspval6e7*acc296(121)
      acc296(145)=acc296(146)+acc296(145)+acc296(149)+acc296(148)+acc296(147)+a&
      &cc296(156)+acc296(155)+acc296(154)+acc296(153)+acc296(151)+acc296(29)+ac&
      &c296(150)
      acc296(145)=Qspvak2k1*acc296(145)
      acc296(146)=Qspval6k2*acc296(75)
      acc296(147)=Qspval6e7*acc296(84)
      acc296(146)=acc296(147)+acc296(114)+acc296(146)
      acc296(146)=Qspvak2l5*acc296(146)
      acc296(147)=Qspval6k1*acc296(61)
      acc296(148)=-Qspval6l5*acc296(84)
      acc296(147)=acc296(148)+acc296(17)+acc296(147)
      acc296(147)=Qspvak2e7*acc296(147)
      acc296(148)=Qspvak7k1*acc296(69)
      acc296(149)=Qspvae7k1*acc296(50)
      acc296(150)=Qspvak2l6*acc296(120)
      acc296(151)=Qspval6k2*acc296(73)
      acc296(153)=Qspval6k1*acc296(92)
      acc296(154)=Qspval6l5*acc296(71)
      acc296(155)=Qspval6e7*acc296(48)
      acc296(146)=acc296(147)+acc296(146)+acc296(155)+acc296(154)+acc296(153)+a&
      &cc296(151)+acc296(150)+acc296(149)+acc296(18)+acc296(148)
      acc296(146)=Qspvak4k3*acc296(146)
      acc296(147)=Qspvae7k1*acc296(116)
      acc296(148)=Qspvak4k1*acc296(36)
      acc296(149)=Qspvak2l6*acc296(28)
      acc296(150)=Qspval6k2*acc296(112)
      acc296(151)=Qspval6k1*acc296(37)
      acc296(153)=Qspval6l5*acc296(126)
      acc296(154)=Qspval6e7*acc296(94)
      acc296(155)=-Qspval6e7*acc296(134)
      acc296(155)=acc296(39)+acc296(155)
      acc296(155)=Qspvak2l5*acc296(155)
      acc296(147)=acc296(155)+acc296(154)+acc296(153)+acc296(151)+acc296(150)+a&
      &cc296(149)+acc296(148)+acc296(58)+acc296(147)
      acc296(147)=QspQ*acc296(147)
      acc296(143)=acc296(119)-acc296(143)
      acc296(143)=Qspk7*acc296(143)
      acc296(148)=Qspval6k1*acc296(90)
      acc296(149)=Qspval6l5*acc296(134)
      acc296(148)=acc296(149)+acc296(22)+acc296(148)
      acc296(148)=QspQ*acc296(148)
      acc296(149)=-acc296(122)*acc296(141)
      acc296(150)=Qspval6k1*acc296(121)
      acc296(151)=-Qspval6l5*acc296(132)
      acc296(143)=acc296(148)+acc296(143)+acc296(151)+acc296(150)+acc296(117)+a&
      &cc296(149)
      acc296(143)=Qspvak2e7*acc296(143)
      acc296(148)=Qspval6k1*acc296(99)
      acc296(149)=Qspval6l5*acc296(127)
      acc296(150)=Qspval6e7*acc296(96)
      acc296(142)=acc296(150)+acc296(149)+acc296(148)+acc296(93)+acc296(142)
      acc296(142)=Qspk7*acc296(142)
      acc296(148)=Qspval6k2*acc296(53)
      acc296(149)=Qspval6e7*acc296(132)
      acc296(150)=Qspk7*acc296(152)
      acc296(148)=acc296(150)+acc296(149)+acc296(89)+acc296(148)
      acc296(148)=Qspvak2l5*acc296(148)
      acc296(140)=-acc296(103)*acc296(140)
      acc296(149)=Qspval5k1*acc296(100)
      acc296(150)=Qspvak7k1*acc296(102)
      acc296(151)=Qspvak4k1*acc296(7)
      acc296(152)=Qspvak2l6*acc296(63)
      acc296(153)=Qspk1*acc296(97)
      acc296(154)=-acc296(138)*acc296(141)
      acc296(154)=acc296(79)+acc296(154)
      acc296(154)=Qspval6k2*acc296(154)
      acc296(155)=Qspval6k1*acc296(13)
      acc296(156)=Qspval6l5*acc296(25)
      acc296(141)=Qspval6e7*acc296(106)*acc296(141)
      brack=acc296(19)+acc296(139)+acc296(140)+acc296(141)+acc296(142)+acc296(1&
      &43)+acc296(144)+acc296(145)+acc296(146)+acc296(147)+acc296(148)+acc296(1&
      &49)+acc296(150)+acc296(151)+acc296(152)+acc296(153)+acc296(154)+acc296(1&
      &55)+acc296(156)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram296_sign, shift => diagram296_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd296h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(-Q_ext(4),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd296h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d296
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d296 = 0.0_ki
      d296 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d296, ki), aimag(d296), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d296h1l1
