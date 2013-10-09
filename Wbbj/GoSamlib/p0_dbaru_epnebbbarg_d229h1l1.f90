module     p0_dbaru_epnebbbarg_d229h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d229h1l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_samurai
   public :: numerator_golem95
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd229h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc229(147)
      complex(ki) :: Qspl5
      complex(ki) :: Qspl6
      complex(ki) :: Qspk7
      complex(ki) :: Qspe7
      complex(ki) :: Qspvak2l5
      complex(ki) :: Qspvak2l6
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspval6k7
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspvak7l5
      complex(ki) :: Qspvak2e7
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvae7l5
      complex(ki) :: Qspval6e7
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak1l6
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspvak1k7
      Qspl5 = dotproduct(Q,l5)
      Qspl6 = dotproduct(Q,l6)
      Qspk7 = dotproduct(Q,k7)
      Qspe7 = dotproduct(Q,e7)
      Qspvak2l5 = dotproduct(Q,spvak2l5)
      Qspvak2l6 = dotproduct(Q,spvak2l6)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspval6k7 = dotproduct(Q,spval6k7)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspvak7l5 = dotproduct(Q,spvak7l5)
      Qspvak2e7 = dotproduct(Q,spvak2e7)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvae7l5 = dotproduct(Q,spvae7l5)
      Qspval6e7 = dotproduct(Q,spval6e7)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspvak1k7 = dotproduct(Q,spvak1k7)
      acc229(1)=abb229(13)
      acc229(2)=abb229(14)
      acc229(3)=abb229(15)
      acc229(4)=abb229(16)
      acc229(5)=abb229(17)
      acc229(6)=abb229(18)
      acc229(7)=abb229(19)
      acc229(8)=abb229(21)
      acc229(9)=abb229(22)
      acc229(10)=abb229(23)
      acc229(11)=abb229(24)
      acc229(12)=abb229(25)
      acc229(13)=abb229(26)
      acc229(14)=abb229(27)
      acc229(15)=abb229(28)
      acc229(16)=abb229(29)
      acc229(17)=abb229(30)
      acc229(18)=abb229(31)
      acc229(19)=abb229(32)
      acc229(20)=abb229(33)
      acc229(21)=abb229(34)
      acc229(22)=abb229(35)
      acc229(23)=abb229(36)
      acc229(24)=abb229(37)
      acc229(25)=abb229(38)
      acc229(26)=abb229(39)
      acc229(27)=abb229(40)
      acc229(28)=abb229(41)
      acc229(29)=abb229(42)
      acc229(30)=abb229(43)
      acc229(31)=abb229(44)
      acc229(32)=abb229(45)
      acc229(33)=abb229(46)
      acc229(34)=abb229(47)
      acc229(35)=abb229(48)
      acc229(36)=abb229(49)
      acc229(37)=abb229(50)
      acc229(38)=abb229(51)
      acc229(39)=abb229(52)
      acc229(40)=abb229(53)
      acc229(41)=abb229(54)
      acc229(42)=abb229(55)
      acc229(43)=abb229(56)
      acc229(44)=abb229(57)
      acc229(45)=abb229(58)
      acc229(46)=abb229(59)
      acc229(47)=abb229(60)
      acc229(48)=abb229(61)
      acc229(49)=abb229(62)
      acc229(50)=abb229(63)
      acc229(51)=abb229(64)
      acc229(52)=abb229(65)
      acc229(53)=abb229(66)
      acc229(54)=abb229(67)
      acc229(55)=abb229(68)
      acc229(56)=abb229(69)
      acc229(57)=abb229(70)
      acc229(58)=abb229(71)
      acc229(59)=abb229(72)
      acc229(60)=abb229(73)
      acc229(61)=abb229(74)
      acc229(62)=abb229(75)
      acc229(63)=abb229(76)
      acc229(64)=abb229(77)
      acc229(65)=abb229(78)
      acc229(66)=abb229(79)
      acc229(67)=abb229(80)
      acc229(68)=abb229(81)
      acc229(69)=abb229(82)
      acc229(70)=abb229(83)
      acc229(71)=abb229(84)
      acc229(72)=abb229(86)
      acc229(73)=abb229(87)
      acc229(74)=abb229(92)
      acc229(75)=abb229(93)
      acc229(76)=abb229(94)
      acc229(77)=abb229(95)
      acc229(78)=abb229(97)
      acc229(79)=abb229(99)
      acc229(80)=abb229(101)
      acc229(81)=abb229(103)
      acc229(82)=abb229(104)
      acc229(83)=abb229(106)
      acc229(84)=abb229(109)
      acc229(85)=abb229(110)
      acc229(86)=abb229(112)
      acc229(87)=abb229(113)
      acc229(88)=abb229(114)
      acc229(89)=abb229(115)
      acc229(90)=abb229(116)
      acc229(91)=abb229(117)
      acc229(92)=abb229(118)
      acc229(93)=abb229(123)
      acc229(94)=abb229(131)
      acc229(95)=abb229(134)
      acc229(96)=abb229(149)
      acc229(97)=abb229(150)
      acc229(98)=abb229(163)
      acc229(99)=abb229(167)
      acc229(100)=abb229(183)
      acc229(101)=abb229(188)
      acc229(102)=abb229(195)
      acc229(103)=abb229(207)
      acc229(104)=abb229(208)
      acc229(105)=abb229(211)
      acc229(106)=abb229(212)
      acc229(107)=abb229(222)
      acc229(108)=abb229(223)
      acc229(109)=abb229(226)
      acc229(110)=abb229(228)
      acc229(111)=abb229(245)
      acc229(112)=abb229(256)
      acc229(113)=abb229(260)
      acc229(114)=abb229(287)
      acc229(115)=abb229(326)
      acc229(116)=abb229(331)
      acc229(117)=abb229(452)
      acc229(118)=abb229(473)
      acc229(119)=abb229(531)
      acc229(120)=Qspl5*acc229(119)
      acc229(121)=Qspl6*acc229(118)
      acc229(122)=Qspk7*acc229(98)
      acc229(123)=Qspe7*acc229(21)
      acc229(124)=Qspvak2l5*acc229(61)
      acc229(125)=Qspvak2l6*acc229(23)
      acc229(126)=Qspvak2k7*acc229(63)
      acc229(127)=Qspval5k2*acc229(95)
      acc229(128)=Qspval6k2*acc229(102)
      acc229(129)=Qspval6l5*acc229(22)
      acc229(130)=Qspval6k7*acc229(35)
      acc229(131)=Qspvak7k2*acc229(116)
      acc229(132)=Qspvak7l5*acc229(111)
      acc229(133)=Qspvak2e7*acc229(115)
      acc229(134)=Qspvae7k2*acc229(96)
      acc229(135)=Qspvae7l5*acc229(53)
      acc229(136)=Qspval6e7*acc229(85)
      acc229(120)=acc229(132)-acc229(131)-acc229(130)-acc229(129)+acc229(126)+a&
      &cc229(125)+acc229(124)-acc229(123)-acc229(122)-acc229(121)-acc229(120)+a&
      &cc229(127)-acc229(128)-acc229(133)+acc229(134)+acc229(135)+acc229(136)
      acc229(121)=acc229(120)+acc229(101)
      acc229(122)=Qspk4+Qspk3
      acc229(121)=acc229(121)*acc229(122)
      acc229(123)=Qspl5*acc229(39)
      acc229(124)=Qspl6*acc229(33)
      acc229(125)=Qspk7*acc229(25)
      acc229(126)=Qspe7*acc229(13)
      acc229(127)=Qspvak2l5*acc229(70)
      acc229(128)=Qspvak2l6*acc229(67)
      acc229(129)=Qspvak2k7*acc229(42)
      acc229(130)=Qspval5k2*acc229(38)
      acc229(131)=Qspval6k2*acc229(17)
      acc229(132)=Qspval6l5*acc229(19)
      acc229(133)=Qspval6k7*acc229(31)
      acc229(134)=Qspvak7k2*acc229(62)
      acc229(135)=Qspvak7l5*acc229(57)
      acc229(136)=Qspvak2e7*acc229(54)
      acc229(137)=Qspvae7k2*acc229(41)
      acc229(138)=Qspvae7l5*acc229(34)
      acc229(139)=Qspval6e7*acc229(20)
      acc229(123)=acc229(139)+acc229(138)+acc229(137)+acc229(136)+acc229(135)+a&
      &cc229(134)+acc229(133)+acc229(132)+acc229(131)+acc229(130)+acc229(129)+a&
      &cc229(128)+acc229(127)+acc229(126)+acc229(125)+acc229(124)+acc229(1)+acc&
      &229(123)
      acc229(123)=Qspvak1k2*acc229(123)
      acc229(124)=Qspl5*acc229(72)
      acc229(125)=Qspl6*acc229(55)
      acc229(126)=Qspk7*acc229(51)
      acc229(127)=Qspe7*acc229(27)
      acc229(128)=Qspvak2l5*acc229(48)
      acc229(129)=Qspvak2l6*acc229(92)
      acc229(130)=Qspvak2k7*acc229(91)
      acc229(131)=Qspval5k2*acc229(87)
      acc229(132)=Qspval6k2*acc229(90)
      acc229(133)=Qspval6l5*acc229(59)
      acc229(134)=Qspval6k7*acc229(89)
      acc229(135)=Qspvak7k2*acc229(88)
      acc229(136)=Qspvak7l5*acc229(84)
      acc229(137)=Qspvak2e7*acc229(80)
      acc229(138)=Qspvae7k2*acc229(14)
      acc229(139)=Qspvae7l5*acc229(79)
      acc229(140)=Qspval6e7*acc229(75)
      acc229(124)=acc229(140)+acc229(139)+acc229(138)+acc229(137)+acc229(136)+a&
      &cc229(135)+acc229(134)+acc229(133)+acc229(132)+acc229(131)+acc229(130)+a&
      &cc229(129)+acc229(128)+acc229(127)+acc229(126)+acc229(125)+acc229(12)+ac&
      &c229(124)
      acc229(124)=Qspvak1k3*acc229(124)
      acc229(125)=Qspl5*acc229(16)
      acc229(126)=Qspl6*acc229(15)
      acc229(127)=Qspk7*acc229(6)
      acc229(128)=Qspe7*acc229(5)
      acc229(129)=Qspvak2l5*acc229(69)
      acc229(130)=Qspvak2l6*acc229(68)
      acc229(131)=Qspvak2k7*acc229(65)
      acc229(132)=Qspval5k2*acc229(37)
      acc229(133)=Qspval6k2*acc229(58)
      acc229(134)=Qspval6l5*acc229(56)
      acc229(135)=Qspval6k7*acc229(32)
      acc229(136)=Qspvak7k2*acc229(52)
      acc229(137)=Qspvak7l5*acc229(46)
      acc229(138)=Qspvak2e7*acc229(45)
      acc229(139)=Qspvae7k2*acc229(40)
      acc229(140)=Qspvae7l5*acc229(36)
      acc229(141)=Qspval6e7*acc229(11)
      acc229(125)=acc229(141)+acc229(140)+acc229(139)+acc229(138)+acc229(137)+a&
      &cc229(136)+acc229(135)+acc229(134)+acc229(133)+acc229(132)+acc229(131)+a&
      &cc229(130)+acc229(129)+acc229(128)+acc229(127)+acc229(126)+acc229(2)+acc&
      &229(125)
      acc229(125)=Qspvak4k2*acc229(125)
      acc229(126)=Qspl5*acc229(110)
      acc229(127)=Qspl6*acc229(107)
      acc229(128)=Qspk7*acc229(97)
      acc229(129)=Qspe7*acc229(28)
      acc229(130)=Qspvak2l5*acc229(66)
      acc229(131)=Qspvak2l6*acc229(29)
      acc229(132)=Qspvak2k7*acc229(64)
      acc229(133)=Qspval5k2*acc229(73)
      acc229(134)=Qspval6k2*acc229(104)
      acc229(135)=Qspval6l5*acc229(112)
      acc229(136)=Qspval6k7*acc229(114)
      acc229(137)=Qspvak7k2*acc229(113)
      acc229(138)=Qspvak7l5*acc229(108)
      acc229(139)=Qspvak2e7*acc229(106)
      acc229(140)=Qspvae7k2*acc229(105)
      acc229(141)=Qspvae7l5*acc229(103)
      acc229(142)=Qspval6e7*acc229(93)
      acc229(126)=acc229(142)+acc229(141)+acc229(140)+acc229(139)+acc229(138)+a&
      &cc229(137)+acc229(136)+acc229(135)+acc229(134)+acc229(133)+acc229(132)+a&
      &cc229(131)+acc229(130)+acc229(129)+acc229(128)+acc229(127)+acc229(3)+acc&
      &229(126)
      acc229(126)=Qspvak4k3*acc229(126)
      acc229(122)=Qspk2-acc229(122)
      acc229(122)=acc229(24)*acc229(122)
      acc229(127)=Qspvak1k2*acc229(10)
      acc229(128)=Qspvak1k3*acc229(18)
      acc229(129)=Qspvak4k2*acc229(30)
      acc229(130)=Qspvak4k3*acc229(74)
      acc229(120)=acc229(130)+acc229(129)+acc229(128)+acc229(127)+acc229(43)+ac&
      &c229(122)-acc229(120)
      acc229(120)=Qspk2*acc229(120)
      acc229(122)=Qspl6+Qspl5
      acc229(122)=acc229(100)*acc229(122)
      acc229(127)=acc229(86)*Qspvak1e7
      acc229(128)=acc229(71)*Qspvak1l6
      acc229(129)=acc229(50)*QspQ
      acc229(130)=acc229(47)*Qspk1
      acc229(131)=acc229(9)*Qspvak1l5
      acc229(132)=acc229(7)*Qspvak1k7
      acc229(133)=Qspk7*acc229(117)
      acc229(134)=Qspe7*acc229(81)
      acc229(135)=Qspvak2l5*acc229(4)
      acc229(136)=Qspvak2l6*acc229(8)
      acc229(137)=Qspvak2k7*acc229(60)
      acc229(138)=Qspval5k2*acc229(44)
      acc229(139)=Qspval6k2*acc229(26)
      acc229(140)=Qspval6l5*acc229(78)
      acc229(141)=Qspval6k7*acc229(109)
      acc229(142)=Qspvak7k2*acc229(76)
      acc229(143)=Qspvak7l5*acc229(99)
      acc229(144)=Qspvak2e7*acc229(77)
      acc229(145)=Qspvae7k2*acc229(94)
      acc229(146)=Qspvae7l5*acc229(49)
      acc229(147)=Qspval6e7*acc229(82)
      brack=acc229(83)+acc229(120)+acc229(121)+acc229(122)+acc229(123)+acc229(1&
      &24)+acc229(125)+acc229(126)+acc229(127)+acc229(128)+acc229(129)+acc229(1&
      &30)+acc229(131)+acc229(132)+acc229(133)+acc229(134)+acc229(135)+acc229(1&
      &36)+acc229(137)+acc229(138)+acc229(139)+acc229(140)+acc229(141)+acc229(1&
      &42)+acc229(143)+acc229(144)+acc229(145)+acc229(146)+acc229(147)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram229_sign, shift => diagram229_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3+k2-k4
      Q(1)  =cmplx(real(+Q_ext(4)  -qshift(0),  ki_sam),aimag(+Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(+Q_ext(1:3)-qshift(1:3),ki_sam),aimag(+Q_ext(1:3)),ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd229h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d229
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d229 = 0.0_ki
      d229 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d229, ki), aimag(d229), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d229h1l1
