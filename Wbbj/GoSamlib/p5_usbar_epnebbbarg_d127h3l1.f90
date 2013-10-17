module     p5_usbar_epnebbbarg_d127h3l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity3d127h3l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc127(149)
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspval5k1
      complex(ki) :: QspQ
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak2k3
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspk7
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspval5k1 = dotproduct(Q,spval5k1)
      QspQ = dotproduct(Q,Q)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspk7 = dotproduct(Q,k7)
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      acc127(1)=abb127(12)
      acc127(2)=abb127(13)
      acc127(3)=abb127(14)
      acc127(4)=abb127(15)
      acc127(5)=abb127(16)
      acc127(6)=abb127(17)
      acc127(7)=abb127(18)
      acc127(8)=abb127(19)
      acc127(9)=abb127(20)
      acc127(10)=abb127(21)
      acc127(11)=abb127(22)
      acc127(12)=abb127(23)
      acc127(13)=abb127(24)
      acc127(14)=abb127(25)
      acc127(15)=abb127(26)
      acc127(16)=abb127(27)
      acc127(17)=abb127(28)
      acc127(18)=abb127(29)
      acc127(19)=abb127(30)
      acc127(20)=abb127(31)
      acc127(21)=abb127(32)
      acc127(22)=abb127(33)
      acc127(23)=abb127(34)
      acc127(24)=abb127(35)
      acc127(25)=abb127(36)
      acc127(26)=abb127(37)
      acc127(27)=abb127(38)
      acc127(28)=abb127(39)
      acc127(29)=abb127(40)
      acc127(30)=abb127(41)
      acc127(31)=abb127(42)
      acc127(32)=abb127(43)
      acc127(33)=abb127(44)
      acc127(34)=abb127(45)
      acc127(35)=abb127(46)
      acc127(36)=abb127(47)
      acc127(37)=abb127(48)
      acc127(38)=abb127(49)
      acc127(39)=abb127(50)
      acc127(40)=abb127(51)
      acc127(41)=abb127(52)
      acc127(42)=abb127(53)
      acc127(43)=abb127(54)
      acc127(44)=abb127(55)
      acc127(45)=abb127(56)
      acc127(46)=abb127(57)
      acc127(47)=abb127(58)
      acc127(48)=abb127(59)
      acc127(49)=abb127(60)
      acc127(50)=abb127(61)
      acc127(51)=abb127(62)
      acc127(52)=abb127(63)
      acc127(53)=abb127(64)
      acc127(54)=abb127(65)
      acc127(55)=abb127(66)
      acc127(56)=abb127(67)
      acc127(57)=abb127(68)
      acc127(58)=abb127(69)
      acc127(59)=abb127(70)
      acc127(60)=abb127(71)
      acc127(61)=abb127(72)
      acc127(62)=abb127(73)
      acc127(63)=abb127(74)
      acc127(64)=abb127(75)
      acc127(65)=abb127(76)
      acc127(66)=abb127(77)
      acc127(67)=abb127(78)
      acc127(68)=abb127(79)
      acc127(69)=abb127(80)
      acc127(70)=abb127(81)
      acc127(71)=abb127(82)
      acc127(72)=abb127(83)
      acc127(73)=abb127(84)
      acc127(74)=abb127(85)
      acc127(75)=abb127(86)
      acc127(76)=abb127(87)
      acc127(77)=abb127(88)
      acc127(78)=abb127(89)
      acc127(79)=abb127(90)
      acc127(80)=abb127(91)
      acc127(81)=abb127(92)
      acc127(82)=abb127(93)
      acc127(83)=abb127(94)
      acc127(84)=abb127(96)
      acc127(85)=abb127(97)
      acc127(86)=abb127(98)
      acc127(87)=abb127(99)
      acc127(88)=abb127(102)
      acc127(89)=abb127(103)
      acc127(90)=abb127(104)
      acc127(91)=abb127(105)
      acc127(92)=abb127(106)
      acc127(93)=abb127(108)
      acc127(94)=abb127(112)
      acc127(95)=abb127(113)
      acc127(96)=abb127(115)
      acc127(97)=abb127(116)
      acc127(98)=abb127(118)
      acc127(99)=abb127(120)
      acc127(100)=abb127(121)
      acc127(101)=abb127(123)
      acc127(102)=abb127(124)
      acc127(103)=abb127(125)
      acc127(104)=abb127(126)
      acc127(105)=abb127(144)
      acc127(106)=abb127(149)
      acc127(107)=abb127(168)
      acc127(108)=abb127(172)
      acc127(109)=abb127(190)
      acc127(110)=abb127(192)
      acc127(111)=abb127(193)
      acc127(112)=abb127(194)
      acc127(113)=abb127(195)
      acc127(114)=abb127(196)
      acc127(115)=abb127(198)
      acc127(116)=abb127(200)
      acc127(117)=abb127(202)
      acc127(118)=abb127(203)
      acc127(119)=abb127(205)
      acc127(120)=abb127(208)
      acc127(121)=abb127(210)
      acc127(122)=abb127(211)
      acc127(123)=abb127(212)
      acc127(124)=abb127(213)
      acc127(125)=abb127(214)
      acc127(126)=abb127(215)
      acc127(127)=-acc127(20)*Qspvak4k1
      acc127(128)=acc127(10)*Qspvak2l6
      acc127(129)=acc127(11)*Qspvak2k1
      acc127(130)=acc127(13)*Qspval5l6
      acc127(131)=acc127(23)*Qspvae7l5
      acc127(132)=acc127(27)*Qspe7
      acc127(133)=acc127(28)*Qspvak2l5
      acc127(134)=acc127(33)*Qspvak7l6
      acc127(135)=acc127(62)*Qspvak7k1
      acc127(136)=acc127(82)*Qspvak7l5
      acc127(137)=acc127(92)*Qspvak2k7
      acc127(138)=acc127(93)*Qspvak2e7
      acc127(139)=acc127(109)*Qspvae7l6
      acc127(140)=acc127(112)*Qspval6l5
      acc127(141)=acc127(113)*Qspvae7k1
      acc127(142)=acc127(122)*Qspval6k1
      acc127(143)=acc127(125)*Qspval5k1
      acc127(127)=acc127(143)+acc127(142)+acc127(141)+acc127(140)+acc127(139)+a&
      &cc127(138)+acc127(137)+acc127(136)+acc127(135)+acc127(134)+acc127(133)+a&
      &cc127(132)+acc127(26)+acc127(131)+acc127(130)+acc127(129)+acc127(128)+ac&
      &c127(127)
      acc127(127)=QspQ*acc127(127)
      acc127(128)=Qspk3+Qspk4
      acc127(129)=acc127(128)-Qspk1
      acc127(130)=-acc127(24)*acc127(129)
      acc127(131)=acc127(1)*Qspval5l6
      acc127(132)=acc127(4)*Qspvae7l6
      acc127(133)=acc127(25)*Qspvae7l5
      acc127(134)=acc127(34)*Qspvak7l6
      acc127(135)=acc127(40)*Qspval6l5
      acc127(136)=acc127(41)*Qspvak7l5
      acc127(137)=acc127(49)*Qspk2
      acc127(138)=acc127(53)*Qspe7
      acc127(139)=acc127(57)*Qspvak2k7
      acc127(140)=acc127(67)*Qspvak2l6
      acc127(141)=acc127(72)*Qspvak2l5
      acc127(142)=acc127(77)*Qspvak2e7
      acc127(130)=acc127(138)+acc127(135)+acc127(131)+acc127(130)+acc127(142)+a&
      &cc127(141)+acc127(140)+acc127(139)+acc127(137)+acc127(136)+acc127(134)+a&
      &cc127(133)+acc127(132)
      acc127(130)=Qspvak2k1*acc127(130)
      acc127(131)=acc127(14)*Qspk2
      acc127(132)=acc127(15)*Qspvak4k3
      acc127(133)=acc127(64)*Qspvak2l6
      acc127(134)=acc127(69)*Qspvak2l5
      acc127(135)=acc127(80)*Qspe7
      acc127(136)=acc127(84)*Qspvak2k7
      acc127(137)=acc127(86)*Qspvak2e7
      acc127(138)=acc127(107)*Qspvae7l6
      acc127(139)=acc127(110)*Qspvae7l5
      acc127(140)=acc127(116)*Qspvak7l6
      acc127(141)=acc127(118)*Qspvak7l5
      acc127(142)=acc127(121)*Qspval6l5
      acc127(143)=acc127(124)*Qspval5l6
      acc127(131)=acc127(143)+acc127(142)+acc127(141)+acc127(140)+acc127(139)+a&
      &cc127(138)+acc127(137)+acc127(136)+acc127(135)+acc127(134)+acc127(133)+a&
      &cc127(50)+acc127(132)+acc127(131)
      acc127(131)=Qspk1*acc127(131)
      acc127(132)=acc127(3)*Qspk2
      acc127(133)=acc127(31)*Qspvae7l6
      acc127(134)=acc127(37)*Qspe7
      acc127(135)=acc127(43)*Qspvak2l5
      acc127(136)=acc127(51)*Qspvak4k3
      acc127(137)=acc127(55)*Qspvae7l5
      acc127(138)=acc127(56)*Qspvak2e7
      acc127(139)=acc127(58)*Qspvak7l6
      acc127(140)=acc127(73)*Qspvak7l5
      acc127(141)=acc127(76)*Qspvak2k7
      acc127(142)=acc127(81)*Qspvak2l6
      acc127(143)=acc127(83)*Qspval6l5
      acc127(144)=acc127(88)*Qspval5l6
      acc127(132)=acc127(144)+acc127(143)+acc127(142)+acc127(141)+acc127(140)+a&
      &cc127(139)+acc127(138)+acc127(137)+acc127(136)+acc127(135)+acc127(134)+a&
      &cc127(133)+acc127(132)+acc127(2)
      acc127(132)=Qspvak4k1*acc127(132)
      acc127(133)=acc127(68)*Qspvak2l5
      acc127(134)=acc127(74)*Qspvak2e7
      acc127(135)=acc127(78)*Qspe7
      acc127(136)=acc127(87)*Qspk2
      acc127(137)=acc127(90)*Qspvae7l6
      acc127(138)=acc127(94)*Qspvae7l5
      acc127(139)=acc127(95)*Qspvak7l6
      acc127(140)=acc127(99)*Qspvak7l5
      acc127(141)=acc127(100)*Qspval6l5
      acc127(142)=acc127(102)*Qspval5l6
      acc127(143)=acc127(103)*Qspvak2k7
      acc127(144)=acc127(104)*Qspvak2l6
      acc127(133)=acc127(144)+acc127(143)+acc127(142)+acc127(141)+acc127(140)+a&
      &cc127(139)+acc127(138)+acc127(137)+acc127(136)+acc127(135)+acc127(134)+a&
      &cc127(133)
      acc127(133)=Qspvak2k3*acc127(133)
      acc127(134)=acc127(7)*Qspe7
      acc127(135)=acc127(8)*Qspval6l5
      acc127(136)=acc127(12)*Qspvak7l5
      acc127(137)=acc127(17)*Qspk2
      acc127(138)=acc127(18)*Qspvae7l6
      acc127(139)=acc127(35)*Qspvak7l6
      acc127(140)=acc127(39)*Qspvae7l5
      acc127(141)=acc127(59)*Qspvak2e7
      acc127(142)=acc127(61)*Qspval5l6
      acc127(143)=acc127(66)*Qspvak2k7
      acc127(144)=acc127(71)*Qspvak2l5
      acc127(145)=acc127(75)*Qspvak2l6
      acc127(134)=acc127(145)+acc127(144)+acc127(143)+acc127(142)+acc127(141)+a&
      &cc127(140)+acc127(139)+acc127(138)+acc127(137)+acc127(136)+acc127(135)+a&
      &cc127(134)+acc127(5)
      acc127(135)=Qspvak4k3*Qspvak2k1
      acc127(134)=acc127(135)*acc127(134)
      acc127(136)=Qspvak3k1*acc127(20)
      acc127(137)=acc127(6)*Qspvak2l5
      acc127(138)=acc127(29)*Qspk2
      acc127(139)=acc127(30)*Qspvae7k1
      acc127(140)=acc127(32)*Qspval5k1
      acc127(141)=acc127(38)*Qspvak7k1
      acc127(142)=acc127(45)*Qspvak2k7
      acc127(143)=acc127(54)*Qspvak2e7
      acc127(144)=acc127(60)*Qspval6k1
      acc127(145)=acc127(98)*Qspvak2l6
      acc127(136)=acc127(145)+acc127(144)+acc127(143)+acc127(142)+acc127(141)+a&
      &cc127(140)+acc127(139)+acc127(138)+acc127(19)+acc127(137)+acc127(136)
      acc127(136)=Qspvak4k3*acc127(136)
      acc127(135)=-acc127(16)*acc127(135)
      acc127(137)=acc127(36)*QspQ
      acc127(138)=acc127(42)*Qspvak4k1
      acc127(139)=-acc127(48)*Qspvak2k1
      acc127(140)=acc127(85)*Qspvak2k3
      acc127(141)=acc127(108)*Qspk1
      acc127(135)=acc127(141)+acc127(140)-acc127(70)+acc127(139)+acc127(138)+ac&
      &c127(137)+acc127(135)
      acc127(137)=-Qspk7+Qspl5+Qspl6
      acc127(135)=acc127(137)*acc127(135)
      acc127(137)=-acc127(46)*Qspvak4k1
      acc127(138)=acc127(114)*Qspvae7k1
      acc127(139)=acc127(119)*Qspvak7k1
      acc127(140)=-acc127(123)*Qspval6k1
      acc127(141)=-acc127(126)*Qspval5k1
      acc127(137)=acc127(137)+acc127(141)+acc127(140)+acc127(139)+acc127(138)
      acc127(129)=acc127(129)*acc127(137)
      acc127(137)=-acc127(44)*Qspk2
      acc127(138)=acc127(79)*Qspvak2l5
      acc127(139)=acc127(89)*Qspvak2e7
      acc127(140)=acc127(91)*Qspvak2k7
      acc127(141)=-acc127(96)*Qspvak2l6
      acc127(137)=-acc127(106)+acc127(141)+acc127(140)+acc127(139)+acc127(138)+&
      &acc127(137)
      acc127(128)=acc127(128)*acc127(137)
      acc127(137)=acc127(9)*Qspk2
      acc127(138)=acc127(21)*Qspvak3k1
      acc127(139)=acc127(47)*Qspvak2l6
      acc127(140)=acc127(52)*Qspvak2k7
      acc127(141)=acc127(63)*Qspvak2l5
      acc127(142)=acc127(65)*Qspe7
      acc127(143)=acc127(97)*Qspval5l6
      acc127(144)=acc127(101)*Qspvae7l5
      acc127(145)=acc127(105)*Qspvae7l6
      acc127(146)=acc127(111)*Qspvak2e7
      acc127(147)=acc127(115)*Qspvak7l6
      acc127(148)=acc127(117)*Qspvak7l5
      acc127(149)=acc127(120)*Qspval6l5
      brack=acc127(22)+acc127(127)+acc127(128)+acc127(129)+acc127(130)+acc127(1&
      &31)+acc127(132)+acc127(133)+acc127(134)+acc127(135)+acc127(136)+acc127(1&
      &37)+acc127(138)+acc127(139)+acc127(140)+acc127(141)+acc127(142)+acc127(1&
      &43)+acc127(144)+acc127(145)+acc127(146)+acc127(147)+acc127(148)+acc127(1&
      &49)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram127_sign, shift => diagram127_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd127h3
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd127h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d127
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d127 = 0.0_ki
      d127 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d127, ki), aimag(d127), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d127h3l1