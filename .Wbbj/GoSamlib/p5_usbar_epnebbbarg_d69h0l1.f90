module     p5_usbar_epnebbbarg_d69h0l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d69h0l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd69h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc69(157)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk7
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspe7
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak2k3
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk7 = dotproduct(Q,k7)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspe7 = dotproduct(Q,e7)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc69(1)=abb69(7)
      acc69(2)=abb69(8)
      acc69(3)=abb69(9)
      acc69(4)=abb69(10)
      acc69(5)=abb69(11)
      acc69(6)=abb69(12)
      acc69(7)=abb69(13)
      acc69(8)=abb69(14)
      acc69(9)=abb69(15)
      acc69(10)=abb69(16)
      acc69(11)=abb69(17)
      acc69(12)=abb69(18)
      acc69(13)=abb69(19)
      acc69(14)=abb69(20)
      acc69(15)=abb69(21)
      acc69(16)=abb69(22)
      acc69(17)=abb69(23)
      acc69(18)=abb69(24)
      acc69(19)=abb69(25)
      acc69(20)=abb69(26)
      acc69(21)=abb69(27)
      acc69(22)=abb69(28)
      acc69(23)=abb69(29)
      acc69(24)=abb69(30)
      acc69(25)=abb69(31)
      acc69(26)=abb69(32)
      acc69(27)=abb69(33)
      acc69(28)=abb69(34)
      acc69(29)=abb69(35)
      acc69(30)=abb69(36)
      acc69(31)=abb69(37)
      acc69(32)=abb69(39)
      acc69(33)=abb69(40)
      acc69(34)=abb69(41)
      acc69(35)=abb69(43)
      acc69(36)=abb69(44)
      acc69(37)=abb69(45)
      acc69(38)=abb69(46)
      acc69(39)=abb69(47)
      acc69(40)=abb69(48)
      acc69(41)=abb69(49)
      acc69(42)=abb69(50)
      acc69(43)=abb69(51)
      acc69(44)=abb69(52)
      acc69(45)=abb69(53)
      acc69(46)=abb69(54)
      acc69(47)=abb69(55)
      acc69(48)=abb69(56)
      acc69(49)=abb69(57)
      acc69(50)=abb69(58)
      acc69(51)=abb69(59)
      acc69(52)=abb69(60)
      acc69(53)=abb69(61)
      acc69(54)=abb69(62)
      acc69(55)=abb69(63)
      acc69(56)=abb69(64)
      acc69(57)=abb69(65)
      acc69(58)=abb69(66)
      acc69(59)=abb69(67)
      acc69(60)=abb69(68)
      acc69(61)=abb69(71)
      acc69(62)=abb69(72)
      acc69(63)=abb69(74)
      acc69(64)=abb69(75)
      acc69(65)=abb69(77)
      acc69(66)=abb69(78)
      acc69(67)=abb69(79)
      acc69(68)=abb69(80)
      acc69(69)=abb69(81)
      acc69(70)=abb69(82)
      acc69(71)=abb69(83)
      acc69(72)=abb69(84)
      acc69(73)=abb69(85)
      acc69(74)=abb69(86)
      acc69(75)=abb69(87)
      acc69(76)=abb69(88)
      acc69(77)=abb69(89)
      acc69(78)=abb69(90)
      acc69(79)=abb69(91)
      acc69(80)=abb69(92)
      acc69(81)=abb69(93)
      acc69(82)=abb69(94)
      acc69(83)=abb69(95)
      acc69(84)=abb69(96)
      acc69(85)=abb69(97)
      acc69(86)=abb69(98)
      acc69(87)=abb69(99)
      acc69(88)=abb69(100)
      acc69(89)=abb69(101)
      acc69(90)=abb69(102)
      acc69(91)=abb69(103)
      acc69(92)=abb69(104)
      acc69(93)=abb69(105)
      acc69(94)=abb69(106)
      acc69(95)=abb69(107)
      acc69(96)=abb69(108)
      acc69(97)=abb69(109)
      acc69(98)=abb69(110)
      acc69(99)=abb69(111)
      acc69(100)=abb69(112)
      acc69(101)=abb69(113)
      acc69(102)=abb69(114)
      acc69(103)=abb69(115)
      acc69(104)=abb69(117)
      acc69(105)=abb69(118)
      acc69(106)=abb69(119)
      acc69(107)=abb69(120)
      acc69(108)=abb69(121)
      acc69(109)=abb69(122)
      acc69(110)=abb69(123)
      acc69(111)=abb69(124)
      acc69(112)=abb69(125)
      acc69(113)=abb69(126)
      acc69(114)=abb69(127)
      acc69(115)=abb69(128)
      acc69(116)=abb69(129)
      acc69(117)=abb69(133)
      acc69(118)=abb69(136)
      acc69(119)=abb69(141)
      acc69(120)=abb69(144)
      acc69(121)=abb69(146)
      acc69(122)=abb69(147)
      acc69(123)=abb69(149)
      acc69(124)=abb69(157)
      acc69(125)=abb69(158)
      acc69(126)=abb69(166)
      acc69(127)=abb69(167)
      acc69(128)=abb69(172)
      acc69(129)=abb69(173)
      acc69(130)=abb69(176)
      acc69(131)=abb69(178)
      acc69(132)=abb69(179)
      acc69(133)=abb69(180)
      acc69(134)=abb69(189)
      acc69(135)=abb69(190)
      acc69(136)=abb69(193)
      acc69(137)=abb69(199)
      acc69(138)=abb69(200)
      acc69(139)=abb69(203)
      acc69(140)=abb69(204)
      acc69(141)=Qspl6+Qspl5
      acc69(142)=acc69(141)-Qspk7
      acc69(143)=-acc69(108)*acc69(142)
      acc69(144)=Qspvak3k1*acc69(109)
      acc69(145)=Qspvak7k1*acc69(63)
      acc69(146)=Qspvak2k1*acc69(21)
      acc69(147)=Qspval5k1*acc69(38)
      acc69(148)=Qspval6k1*acc69(5)
      acc69(149)=Qspvak4k1*acc69(59)
      acc69(150)=QspQ*acc69(29)
      acc69(151)=Qspk2*acc69(28)
      acc69(152)=Qspvak2k1*acc69(30)
      acc69(152)=acc69(12)+acc69(152)
      acc69(152)=Qspval5k2*acc69(152)
      acc69(153)=Qspvak2k1*acc69(24)
      acc69(153)=acc69(22)+acc69(153)
      acc69(153)=Qspval6k2*acc69(153)
      acc69(143)=acc69(153)+acc69(152)+acc69(151)+acc69(150)+acc69(149)+acc69(1&
      &48)+acc69(147)+acc69(146)+acc69(145)+acc69(13)+acc69(144)+acc69(143)
      acc69(143)=Qspe7*acc69(143)
      acc69(144)=-acc69(82)*acc69(141)
      acc69(145)=-Qspvak3k1*acc69(100)
      acc69(146)=Qspk7*acc69(32)
      acc69(147)=Qspvak7k1*acc69(79)
      acc69(148)=Qspvae7k1*acc69(73)
      acc69(149)=Qspval5k1*acc69(58)
      acc69(150)=Qspval6k1*acc69(84)
      acc69(151)=Qspvak4k1*acc69(115)
      acc69(152)=QspQ*acc69(20)
      acc69(153)=Qspk2*acc69(41)
      acc69(144)=acc69(153)+acc69(152)+acc69(151)+acc69(150)+acc69(149)+acc69(1&
      &48)+acc69(147)+acc69(146)+acc69(7)+acc69(145)+acc69(144)
      acc69(144)=Qspval5k2*acc69(144)
      acc69(145)=-acc69(99)*acc69(141)
      acc69(146)=-Qspvak3k1*acc69(102)
      acc69(147)=Qspk7*acc69(72)
      acc69(148)=Qspvak7k1*acc69(110)
      acc69(149)=Qspvae7k1*acc69(107)
      acc69(150)=Qspval5k1*acc69(57)
      acc69(151)=Qspval6k1*acc69(97)
      acc69(152)=Qspvak4k1*acc69(114)
      acc69(153)=QspQ*acc69(35)
      acc69(154)=Qspk2*acc69(77)
      acc69(145)=acc69(154)+acc69(153)+acc69(152)+acc69(151)+acc69(150)+acc69(1&
      &49)+acc69(148)+acc69(147)+acc69(65)+acc69(146)+acc69(145)
      acc69(145)=Qspval6k2*acc69(145)
      acc69(146)=-acc69(71)*acc69(141)
      acc69(147)=Qspvak3k1*acc69(95)
      acc69(148)=Qspk7*acc69(74)
      acc69(149)=Qspvak7k1*acc69(39)
      acc69(150)=Qspvak2k1*acc69(16)
      acc69(151)=Qspvae7k1*acc69(11)
      acc69(152)=Qspval5k1*acc69(51)
      acc69(153)=Qspval6k1*acc69(111)
      acc69(154)=Qspvak4k1*acc69(90)
      acc69(155)=QspQ*acc69(26)
      acc69(156)=Qspk2*acc69(9)
      acc69(143)=acc69(143)+acc69(145)+acc69(144)+acc69(156)+acc69(155)+acc69(1&
      &54)+acc69(153)+acc69(152)+acc69(151)+acc69(150)+acc69(149)+acc69(148)+ac&
      &c69(6)+acc69(147)+acc69(146)
      acc69(143)=Qspvak4k3*acc69(143)
      acc69(144)=Qspk4+Qspk3
      acc69(145)=acc69(132)*acc69(144)
      acc69(146)=Qspvak2k3*acc69(4)
      acc69(147)=Qspvak2k1*acc69(60)
      acc69(148)=QspQ*acc69(86)
      acc69(149)=Qspk2*acc69(66)
      acc69(145)=acc69(149)+acc69(148)+acc69(147)+acc69(14)+acc69(146)+acc69(14&
      &5)
      acc69(145)=Qspval5k2*acc69(145)
      acc69(146)=acc69(135)*acc69(144)
      acc69(147)=Qspvak2k3*acc69(31)
      acc69(148)=Qspvak2k1*acc69(47)
      acc69(149)=QspQ*acc69(136)
      acc69(150)=Qspk2*acc69(70)
      acc69(146)=acc69(150)+acc69(149)+acc69(148)+acc69(62)+acc69(147)+acc69(14&
      &6)
      acc69(146)=Qspval6k2*acc69(146)
      acc69(147)=Qspval5k1*acc69(49)
      acc69(148)=Qspval6k1*acc69(137)
      acc69(149)=-Qspvak4k1*acc69(109)
      acc69(147)=acc69(149)+acc69(148)+acc69(15)+acc69(147)
      acc69(147)=QspQ*acc69(147)
      acc69(148)=Qspvak4k1*acc69(103)
      acc69(149)=Qspval5k1*acc69(85)
      acc69(150)=Qspval6k1*acc69(140)
      acc69(148)=acc69(148)+acc69(150)+acc69(104)+acc69(149)
      acc69(148)=Qspk2*acc69(148)
      acc69(149)=-acc69(122)*acc69(144)
      acc69(142)=-acc69(91)*acc69(142)
      acc69(150)=Qspvak2k3*acc69(116)
      acc69(151)=Qspvak7k1*acc69(117)
      acc69(152)=Qspvak2k1*acc69(18)
      acc69(153)=Qspval5k1*acc69(10)
      acc69(154)=Qspval6k1*acc69(98)
      acc69(155)=acc69(144)*Qspvak4k1
      acc69(156)=-acc69(103)*acc69(155)
      acc69(142)=acc69(146)+acc69(145)+acc69(148)+acc69(147)+acc69(156)+acc69(1&
      &54)+acc69(153)+acc69(152)+acc69(151)+acc69(42)+acc69(150)+acc69(142)+acc&
      &69(149)
      acc69(142)=Qspe7*acc69(142)
      acc69(145)=-acc69(129)*acc69(141)
      acc69(146)=-acc69(119)*acc69(144)
      acc69(147)=Qspk7*acc69(127)
      acc69(148)=Qspvak7k1*acc69(120)
      acc69(149)=Qspvak2k1*acc69(36)
      acc69(150)=Qspvae7k1*acc69(78)
      acc69(151)=Qspval5k1*acc69(81)
      acc69(152)=Qspval6k1*acc69(138)
      acc69(153)=Qspvak4k1*acc69(106)
      acc69(154)=QspQ*acc69(53)
      acc69(156)=Qspk2*acc69(130)
      acc69(145)=acc69(156)+acc69(154)+acc69(153)+acc69(152)+acc69(151)+acc69(1&
      &50)+acc69(149)+acc69(148)+acc69(67)+acc69(147)+acc69(146)+acc69(145)
      acc69(145)=Qspk2*acc69(145)
      acc69(146)=Qspvae7k1*acc69(54)
      acc69(147)=Qspvak4k1*acc69(100)
      acc69(146)=acc69(147)+acc69(40)+acc69(146)
      acc69(146)=QspQ*acc69(146)
      acc69(147)=Qspvak4k1*acc69(113)
      acc69(148)=Qspvae7k1*acc69(64)
      acc69(147)=-acc69(147)+acc69(17)+acc69(148)
      acc69(147)=Qspk2*acc69(147)
      acc69(148)=-acc69(128)*acc69(144)
      acc69(149)=acc69(80)*acc69(141)
      acc69(150)=Qspk7*acc69(48)
      acc69(151)=Qspvak7k1*acc69(55)
      acc69(152)=-Qspvak2k1*acc69(44)
      acc69(153)=Qspvae7k1*acc69(61)
      acc69(154)=Qspval5k1*acc69(52)
      acc69(156)=Qspval6k1*acc69(69)
      acc69(157)=acc69(113)*acc69(155)
      acc69(146)=acc69(147)+acc69(146)+acc69(157)+acc69(156)+acc69(154)+acc69(1&
      &53)+acc69(152)+acc69(151)+acc69(1)+acc69(150)+acc69(149)+acc69(148)
      acc69(146)=Qspval5k2*acc69(146)
      acc69(147)=Qspvae7k1*acc69(75)
      acc69(148)=Qspvak4k1*acc69(102)
      acc69(147)=acc69(148)+acc69(83)+acc69(147)
      acc69(147)=QspQ*acc69(147)
      acc69(148)=Qspvak4k1*acc69(112)
      acc69(149)=Qspvae7k1*acc69(133)
      acc69(148)=-acc69(148)+acc69(3)+acc69(149)
      acc69(148)=Qspk2*acc69(148)
      acc69(149)=-acc69(134)*acc69(144)
      acc69(150)=acc69(126)*acc69(141)
      acc69(151)=Qspk7*acc69(124)
      acc69(152)=Qspvak7k1*acc69(68)
      acc69(153)=-Qspvak2k1*acc69(125)
      acc69(154)=Qspvae7k1*acc69(131)
      acc69(156)=Qspval5k1*acc69(92)
      acc69(157)=Qspval6k1*acc69(139)
      acc69(155)=acc69(112)*acc69(155)
      acc69(147)=acc69(148)+acc69(147)+acc69(155)+acc69(157)+acc69(156)+acc69(1&
      &54)+acc69(153)+acc69(152)+acc69(2)+acc69(151)+acc69(150)+acc69(149)
      acc69(147)=Qspval6k2*acc69(147)
      acc69(148)=-acc69(27)*acc69(144)
      acc69(149)=acc69(19)*acc69(141)
      acc69(150)=-Qspk7*acc69(87)
      acc69(151)=Qspvak7k1*acc69(121)
      acc69(152)=-Qspvak2k1*acc69(33)
      acc69(153)=Qspvae7k1*acc69(76)
      acc69(154)=Qspval5k1*acc69(45)
      acc69(155)=Qspval6k1*acc69(89)
      acc69(156)=-Qspvak4k1*acc69(105)
      acc69(157)=-QspQ*acc69(50)
      acc69(148)=acc69(157)+acc69(156)+acc69(155)+acc69(154)+acc69(153)+acc69(1&
      &52)+acc69(151)+acc69(8)+acc69(150)+acc69(149)+acc69(148)
      acc69(148)=QspQ*acc69(148)
      acc69(149)=acc69(123)*acc69(144)
      acc69(149)=acc69(149)-acc69(94)
      acc69(149)=acc69(149)*acc69(141)
      acc69(150)=acc69(96)*acc69(144)
      acc69(151)=Qspk7*acc69(88)
      acc69(152)=Qspvak7k1*acc69(93)
      acc69(153)=Qspvak2k1*acc69(23)
      acc69(154)=Qspvae7k1*acc69(56)
      acc69(155)=-acc69(43)*acc69(141)
      acc69(155)=acc69(34)+acc69(155)
      acc69(155)=Qspval5k1*acc69(155)
      acc69(141)=-acc69(118)*acc69(141)
      acc69(141)=acc69(37)+acc69(141)
      acc69(141)=Qspval6k1*acc69(141)
      acc69(144)=-acc69(101)*acc69(144)
      acc69(144)=acc69(46)+acc69(144)
      acc69(144)=Qspvak4k1*acc69(144)
      brack=acc69(25)+acc69(141)+acc69(142)+acc69(143)+acc69(144)+acc69(145)+ac&
      &c69(146)+acc69(147)+acc69(148)+acc69(149)+acc69(150)+acc69(151)+acc69(15&
      &2)+acc69(153)+acc69(154)+acc69(155)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram69_sign, shift => diagram69_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd69h0
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d69
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1)  =cmplx(real(+Q_ext(4),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d69 = 0.0_ki
      d69 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d69, ki), aimag(d69), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd69h0
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d69
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d69 = 0.0_ki
      d69 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d69, ki), aimag(d69), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d69h0l1
