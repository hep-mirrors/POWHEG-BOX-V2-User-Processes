module     p5_usbar_epnebbbarg_d104h2l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity2d104h2l1.f90
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
      use p5_usbar_epnebbbarg_abbrevd104h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc104(148)
      complex(ki) :: Qspe7
      complex(ki) :: Qspl6
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspl5
      complex(ki) :: Qspvae7l6
      complex(ki) :: Qspvak7l6
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk3
      complex(ki) :: Qspk4
      complex(ki) :: Qspval6k1
      complex(ki) :: Qspvak4k1
      complex(ki) :: Qspval5k7
      complex(ki) :: Qspval5e7
      complex(ki) :: Qspval5k1
      complex(ki) :: Qspvak7k1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvae7k1
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak3k1
      complex(ki) :: Qspvak4k3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k3
      Qspe7 = dotproduct(Q,e7)
      Qspl6 = dotproduct(Q,l6)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspl5 = dotproduct(Q,l5)
      Qspvae7l6 = dotproduct(Q,spvae7l6)
      Qspvak7l6 = dotproduct(Q,spvak7l6)
      Qspk7 = dotproduct(Q,k7)
      Qspval5l6 = dotproduct(Q,spval5l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk3 = dotproduct(Q,k3)
      Qspk4 = dotproduct(Q,k4)
      Qspval6k1 = dotproduct(Q,spval6k1)
      Qspvak4k1 = dotproduct(Q,spvak4k1)
      Qspval5k7 = dotproduct(Q,spval5k7)
      Qspval5e7 = dotproduct(Q,spval5e7)
      Qspval5k1 = dotproduct(Q,spval5k1)
      Qspvak7k1 = dotproduct(Q,spvak7k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvae7k1 = dotproduct(Q,spvae7k1)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak3k1 = dotproduct(Q,spvak3k1)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k3 = dotproduct(Q,spvak2k3)
      acc104(1)=abb104(11)
      acc104(2)=abb104(12)
      acc104(3)=abb104(13)
      acc104(4)=abb104(14)
      acc104(5)=abb104(15)
      acc104(6)=abb104(16)
      acc104(7)=abb104(17)
      acc104(8)=abb104(18)
      acc104(9)=abb104(19)
      acc104(10)=abb104(20)
      acc104(11)=abb104(21)
      acc104(12)=abb104(22)
      acc104(13)=abb104(23)
      acc104(14)=abb104(24)
      acc104(15)=abb104(25)
      acc104(16)=abb104(26)
      acc104(17)=abb104(27)
      acc104(18)=abb104(28)
      acc104(19)=abb104(29)
      acc104(20)=abb104(30)
      acc104(21)=abb104(31)
      acc104(22)=abb104(32)
      acc104(23)=abb104(33)
      acc104(24)=abb104(34)
      acc104(25)=abb104(35)
      acc104(26)=abb104(36)
      acc104(27)=abb104(37)
      acc104(28)=abb104(38)
      acc104(29)=abb104(39)
      acc104(30)=abb104(40)
      acc104(31)=abb104(41)
      acc104(32)=abb104(42)
      acc104(33)=abb104(43)
      acc104(34)=abb104(44)
      acc104(35)=abb104(45)
      acc104(36)=abb104(46)
      acc104(37)=abb104(47)
      acc104(38)=abb104(48)
      acc104(39)=abb104(49)
      acc104(40)=abb104(50)
      acc104(41)=abb104(51)
      acc104(42)=abb104(52)
      acc104(43)=abb104(53)
      acc104(44)=abb104(54)
      acc104(45)=abb104(55)
      acc104(46)=abb104(57)
      acc104(47)=abb104(63)
      acc104(48)=abb104(65)
      acc104(49)=abb104(68)
      acc104(50)=abb104(71)
      acc104(51)=abb104(76)
      acc104(52)=abb104(80)
      acc104(53)=abb104(88)
      acc104(54)=abb104(89)
      acc104(55)=abb104(90)
      acc104(56)=abb104(93)
      acc104(57)=abb104(94)
      acc104(58)=abb104(95)
      acc104(59)=abb104(102)
      acc104(60)=abb104(105)
      acc104(61)=abb104(107)
      acc104(62)=abb104(109)
      acc104(63)=abb104(111)
      acc104(64)=abb104(112)
      acc104(65)=abb104(120)
      acc104(66)=abb104(121)
      acc104(67)=abb104(122)
      acc104(68)=abb104(127)
      acc104(69)=abb104(128)
      acc104(70)=abb104(129)
      acc104(71)=abb104(130)
      acc104(72)=abb104(131)
      acc104(73)=abb104(132)
      acc104(74)=abb104(133)
      acc104(75)=abb104(143)
      acc104(76)=abb104(144)
      acc104(77)=abb104(156)
      acc104(78)=abb104(158)
      acc104(79)=abb104(162)
      acc104(80)=abb104(167)
      acc104(81)=abb104(171)
      acc104(82)=abb104(178)
      acc104(83)=abb104(185)
      acc104(84)=abb104(189)
      acc104(85)=abb104(190)
      acc104(86)=abb104(194)
      acc104(87)=abb104(195)
      acc104(88)=abb104(196)
      acc104(89)=abb104(197)
      acc104(90)=abb104(198)
      acc104(91)=abb104(205)
      acc104(92)=abb104(206)
      acc104(93)=abb104(207)
      acc104(94)=abb104(214)
      acc104(95)=abb104(216)
      acc104(96)=abb104(221)
      acc104(97)=abb104(223)
      acc104(98)=abb104(225)
      acc104(99)=abb104(226)
      acc104(100)=abb104(227)
      acc104(101)=abb104(228)
      acc104(102)=abb104(231)
      acc104(103)=abb104(235)
      acc104(104)=abb104(243)
      acc104(105)=abb104(245)
      acc104(106)=abb104(262)
      acc104(107)=abb104(265)
      acc104(108)=abb104(270)
      acc104(109)=abb104(285)
      acc104(110)=abb104(297)
      acc104(111)=abb104(302)
      acc104(112)=abb104(311)
      acc104(113)=abb104(328)
      acc104(114)=abb104(354)
      acc104(115)=abb104(372)
      acc104(116)=abb104(373)
      acc104(117)=abb104(385)
      acc104(118)=abb104(386)
      acc104(119)=abb104(394)
      acc104(120)=abb104(401)
      acc104(121)=acc104(2)*Qspe7
      acc104(122)=acc104(7)*Qspl6
      acc104(123)=acc104(17)*Qspk2
      acc104(124)=acc104(24)*Qspvak2e7
      acc104(125)=acc104(25)*Qspl5
      acc104(126)=acc104(26)*Qspvae7l6
      acc104(127)=acc104(27)*Qspvak7l6
      acc104(128)=acc104(34)*Qspk7
      acc104(129)=acc104(35)*Qspval5l6
      acc104(130)=acc104(39)*Qspvak2k7
      acc104(131)=acc104(40)*Qspvak2l6
      acc104(132)=acc104(44)*Qspvak2l5
      acc104(121)=acc104(132)+acc104(131)+acc104(130)+acc104(129)+acc104(128)+a&
      &cc104(127)+acc104(126)+acc104(125)+acc104(124)+acc104(123)+acc104(122)+a&
      &cc104(4)+acc104(121)
      acc104(121)=acc104(121)*Qspvak2k1
      acc104(122)=Qspl5+Qspl6
      acc104(123)=acc104(71)*acc104(122)
      acc104(124)=Qspk3+Qspk4
      acc104(125)=-acc104(120)*acc104(124)
      acc104(126)=acc104(3)*Qspval6k1
      acc104(127)=acc104(23)*Qspvak4k1
      acc104(128)=acc104(38)*Qspk2
      acc104(129)=acc104(52)*Qspval5k7
      acc104(130)=acc104(55)*Qspval5e7
      acc104(131)=acc104(56)*Qspvak2k7
      acc104(132)=acc104(57)*Qspval5k1
      acc104(133)=acc104(59)*Qspvak7k1
      acc104(134)=acc104(60)*Qspvak2l6
      acc104(135)=acc104(67)*Qspe7
      acc104(136)=acc104(69)*Qspvae7l6
      acc104(137)=acc104(78)*Qspval5l6
      acc104(138)=acc104(79)*Qspvae7k2
      acc104(139)=acc104(81)*Qspvak2e7
      acc104(140)=acc104(84)*Qspval6k2
      acc104(141)=acc104(89)*Qspval5k2
      acc104(142)=acc104(91)*Qspvae7k1
      acc104(143)=acc104(94)*Qspvak7l6
      acc104(144)=acc104(97)*Qspvak2l5
      acc104(145)=acc104(100)*Qspvak7k2
      acc104(146)=acc104(119)*Qspk7
      acc104(147)=-Qspvak3k1*acc104(66)
      acc104(121)=acc104(146)+acc104(144)+acc104(135)+acc104(134)+acc104(131)+a&
      &cc104(128)+acc104(125)+acc104(123)+acc104(121)+acc104(147)+acc104(145)+a&
      &cc104(143)+acc104(142)+acc104(141)+acc104(140)+acc104(139)+acc104(138)+a&
      &cc104(137)+acc104(136)+acc104(133)+acc104(132)+acc104(130)+acc104(129)+a&
      &cc104(127)+acc104(126)
      acc104(121)=Qspvak4k3*acc104(121)
      acc104(123)=acc104(66)*Qspvak4k1
      acc104(125)=-acc104(8)*Qspvak2k1
      acc104(126)=acc104(12)*Qspe7
      acc104(127)=acc104(13)*Qspl6
      acc104(128)=acc104(33)*Qspval5k1
      acc104(129)=acc104(41)*Qspvak2e7
      acc104(130)=acc104(61)*Qspvak2k7
      acc104(131)=acc104(63)*Qspvae7k1
      acc104(132)=acc104(70)*Qspl5
      acc104(133)=acc104(74)*Qspvak7l6
      acc104(134)=acc104(77)*Qspvae7l6
      acc104(135)=acc104(80)*Qspk7
      acc104(136)=acc104(82)*Qspk2
      acc104(137)=acc104(86)*Qspvak2l5
      acc104(138)=acc104(95)*Qspval5e7
      acc104(139)=acc104(99)*Qspval5l6
      acc104(140)=acc104(103)*Qspvae7k2
      acc104(141)=acc104(105)*Qspvak2l6
      acc104(142)=-acc104(106)*Qspval6k1
      acc104(143)=acc104(110)*Qspvak7k2
      acc104(144)=acc104(112)*Qspval5k2
      acc104(145)=acc104(113)*Qspvak7k1
      acc104(146)=acc104(114)*Qspval5k7
      acc104(147)=acc104(115)*Qspvak4k3
      acc104(148)=acc104(118)*Qspval6k2
      acc104(123)=acc104(148)+acc104(147)+acc104(146)+acc104(145)+acc104(144)+a&
      &cc104(143)+acc104(142)+acc104(141)+acc104(140)+acc104(139)+acc104(138)+a&
      &cc104(137)+acc104(136)+acc104(135)+acc104(134)+acc104(133)+acc104(132)+a&
      &cc104(131)+acc104(130)+acc104(129)+acc104(128)+acc104(127)+acc104(126)+a&
      &cc104(125)+acc104(6)+acc104(123)
      acc104(123)=QspQ*acc104(123)
      acc104(125)=Qspk7-acc104(122)
      acc104(125)=acc104(73)*acc104(125)
      acc104(126)=acc104(15)*Qspvak2k1
      acc104(127)=-acc104(32)*Qspvak2l5
      acc104(128)=-acc104(50)*Qspval5l6
      acc104(129)=acc104(53)*Qspval5e7
      acc104(130)=-acc104(54)*Qspval5k1
      acc104(131)=-acc104(68)*Qspe7
      acc104(132)=acc104(72)*Qspval5k7
      acc104(133)=-acc104(83)*Qspk2
      acc104(134)=acc104(87)*Qspvae7k1
      acc104(135)=acc104(92)*Qspvak2k7
      acc104(136)=acc104(93)*Qspvae7l6
      acc104(137)=acc104(98)*Qspvae7k2
      acc104(138)=acc104(101)*Qspvak2e7
      acc104(139)=acc104(104)*Qspvak2l6
      acc104(140)=acc104(107)*Qspvak7l6
      acc104(141)=-acc104(108)*Qspval5k2
      acc104(142)=-acc104(109)*Qspvak7k2
      acc104(143)=acc104(111)*Qspval6k1
      acc104(144)=-acc104(116)*Qspvak7k1
      acc104(145)=acc104(117)*Qspval6k2
      acc104(125)=acc104(125)+acc104(145)+acc104(144)+acc104(143)+acc104(142)+a&
      &cc104(141)+acc104(140)+acc104(139)+acc104(138)+acc104(137)+acc104(136)+a&
      &cc104(135)+acc104(134)+acc104(133)+acc104(132)+acc104(131)+acc104(62)+ac&
      &c104(130)+acc104(129)+acc104(128)+acc104(127)+acc104(126)
      acc104(124)=acc104(124)*acc104(125)
      acc104(125)=acc104(9)*Qspe7
      acc104(126)=acc104(10)*Qspval5l6
      acc104(127)=acc104(14)*Qspvak2e7
      acc104(128)=acc104(19)*Qspvae7l6
      acc104(129)=acc104(31)*Qspvak7l6
      acc104(130)=acc104(36)*Qspvak2k7
      acc104(131)=acc104(42)*Qspk2
      acc104(132)=acc104(43)*Qspl6
      acc104(133)=acc104(46)*Qspk7
      acc104(134)=acc104(47)*Qspvak2l6
      acc104(135)=acc104(48)*Qspvak2l5
      acc104(136)=acc104(49)*Qspl5
      acc104(125)=acc104(136)+acc104(135)+acc104(134)+acc104(133)+acc104(132)+a&
      &cc104(131)+acc104(130)+acc104(129)+acc104(128)+acc104(127)+acc104(11)+ac&
      &c104(126)+acc104(125)
      acc104(125)=Qspvak2k3*acc104(125)
      acc104(122)=-acc104(64)*acc104(122)
      acc104(126)=acc104(1)*Qspval5k1
      acc104(127)=acc104(5)*Qspvak2k1
      acc104(128)=acc104(16)*Qspe7
      acc104(129)=acc104(18)*Qspvae7k1
      acc104(130)=acc104(20)*Qspk2
      acc104(131)=acc104(21)*Qspval6k1
      acc104(132)=acc104(22)*Qspval5k2
      acc104(133)=acc104(28)*Qspval5l6
      acc104(134)=acc104(29)*Qspvak2l5
      acc104(135)=acc104(30)*Qspvak2k7
      acc104(136)=acc104(37)*Qspvak2l6
      acc104(137)=acc104(45)*Qspvak2e7
      acc104(138)=acc104(51)*Qspvak7k1
      acc104(139)=acc104(58)*Qspval6k2
      acc104(140)=acc104(65)*Qspk7
      acc104(141)=acc104(75)*Qspvak7k2
      acc104(142)=acc104(76)*Qspval5e7
      acc104(143)=acc104(85)*Qspvak4k1
      acc104(144)=acc104(88)*Qspval5k7
      acc104(145)=acc104(90)*Qspvae7l6
      acc104(146)=acc104(96)*Qspvak7l6
      acc104(147)=acc104(102)*Qspvae7k2
      brack=acc104(121)+acc104(122)+acc104(123)+acc104(124)+acc104(125)+acc104(&
      &126)+acc104(127)+acc104(128)+acc104(129)+acc104(130)+acc104(131)+acc104(&
      &132)+acc104(133)+acc104(134)+acc104(135)+acc104(136)+acc104(137)+acc104(&
      &138)+acc104(139)+acc104(140)+acc104(141)+acc104(142)+acc104(143)+acc104(&
      &144)+acc104(145)+acc104(146)+acc104(147)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p5_usbar_epnebbbarg_groups, only: &
!           & sign => diagram104_sign, shift => diagram104_shift
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd104h2
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd104h2
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d104
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d104 = 0.0_ki
      d104 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d104, ki), aimag(d104), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p5_usbar_epnebbbarg_d104h2l1
