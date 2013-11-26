module     p0_dbaru_epnebbbarg_d68h1l1
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d68h1l1.f90
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
      use p0_dbaru_epnebbbarg_abbrevd68h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc68(140)
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1l6
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak1e7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvae7k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: QspQ
      complex(ki) :: Qspe7
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspvak4k3
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1l6 = dotproduct(Q,spvak1l6)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak1e7 = dotproduct(Q,spvak1e7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l5 = dotproduct(Q,spvak1l5)
      Qspk1 = dotproduct(Q,k1)
      Qspvae7k2 = dotproduct(Q,spvae7k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      QspQ = dotproduct(Q,Q)
      Qspe7 = dotproduct(Q,e7)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      acc68(1)=abb68(8)
      acc68(2)=abb68(9)
      acc68(3)=abb68(10)
      acc68(4)=abb68(11)
      acc68(5)=abb68(12)
      acc68(6)=abb68(13)
      acc68(7)=abb68(14)
      acc68(8)=abb68(15)
      acc68(9)=abb68(16)
      acc68(10)=abb68(17)
      acc68(11)=abb68(18)
      acc68(12)=abb68(19)
      acc68(13)=abb68(20)
      acc68(14)=abb68(21)
      acc68(15)=abb68(22)
      acc68(16)=abb68(23)
      acc68(17)=abb68(24)
      acc68(18)=abb68(25)
      acc68(19)=abb68(26)
      acc68(20)=abb68(27)
      acc68(21)=abb68(28)
      acc68(22)=abb68(29)
      acc68(23)=abb68(30)
      acc68(24)=abb68(31)
      acc68(25)=abb68(32)
      acc68(26)=abb68(33)
      acc68(27)=abb68(34)
      acc68(28)=abb68(35)
      acc68(29)=abb68(36)
      acc68(30)=abb68(37)
      acc68(31)=abb68(38)
      acc68(32)=abb68(39)
      acc68(33)=abb68(40)
      acc68(34)=abb68(41)
      acc68(35)=abb68(42)
      acc68(36)=abb68(43)
      acc68(37)=abb68(44)
      acc68(38)=abb68(45)
      acc68(39)=abb68(46)
      acc68(40)=abb68(47)
      acc68(41)=abb68(48)
      acc68(42)=abb68(49)
      acc68(43)=abb68(50)
      acc68(44)=abb68(51)
      acc68(45)=abb68(52)
      acc68(46)=abb68(53)
      acc68(47)=abb68(54)
      acc68(48)=abb68(55)
      acc68(49)=abb68(56)
      acc68(50)=abb68(57)
      acc68(51)=abb68(58)
      acc68(52)=abb68(59)
      acc68(53)=abb68(60)
      acc68(54)=abb68(61)
      acc68(55)=abb68(62)
      acc68(56)=abb68(63)
      acc68(57)=abb68(64)
      acc68(58)=abb68(65)
      acc68(59)=abb68(66)
      acc68(60)=abb68(68)
      acc68(61)=abb68(69)
      acc68(62)=abb68(70)
      acc68(63)=abb68(72)
      acc68(64)=abb68(73)
      acc68(65)=abb68(74)
      acc68(66)=abb68(75)
      acc68(67)=abb68(76)
      acc68(68)=abb68(77)
      acc68(69)=abb68(78)
      acc68(70)=abb68(82)
      acc68(71)=abb68(84)
      acc68(72)=abb68(85)
      acc68(73)=abb68(86)
      acc68(74)=abb68(88)
      acc68(75)=abb68(89)
      acc68(76)=abb68(91)
      acc68(77)=abb68(92)
      acc68(78)=abb68(93)
      acc68(79)=abb68(96)
      acc68(80)=abb68(97)
      acc68(81)=abb68(98)
      acc68(82)=abb68(99)
      acc68(83)=abb68(102)
      acc68(84)=abb68(108)
      acc68(85)=abb68(113)
      acc68(86)=abb68(117)
      acc68(87)=abb68(120)
      acc68(88)=abb68(123)
      acc68(89)=abb68(126)
      acc68(90)=abb68(129)
      acc68(91)=abb68(130)
      acc68(92)=abb68(133)
      acc68(93)=abb68(134)
      acc68(94)=abb68(137)
      acc68(95)=abb68(139)
      acc68(96)=abb68(140)
      acc68(97)=abb68(141)
      acc68(98)=abb68(142)
      acc68(99)=abb68(143)
      acc68(100)=abb68(145)
      acc68(101)=abb68(147)
      acc68(102)=abb68(148)
      acc68(103)=abb68(149)
      acc68(104)=abb68(153)
      acc68(105)=abb68(154)
      acc68(106)=abb68(155)
      acc68(107)=abb68(158)
      acc68(108)=abb68(159)
      acc68(109)=abb68(160)
      acc68(110)=abb68(164)
      acc68(111)=abb68(167)
      acc68(112)=abb68(169)
      acc68(113)=abb68(172)
      acc68(114)=abb68(173)
      acc68(115)=abb68(174)
      acc68(116)=abb68(175)
      acc68(117)=abb68(176)
      acc68(118)=abb68(178)
      acc68(119)=abb68(179)
      acc68(120)=abb68(181)
      acc68(121)=abb68(183)
      acc68(122)=abb68(192)
      acc68(123)=Qspl6+Qspl5
      acc68(124)=Qspk2-acc68(123)
      acc68(124)=acc68(108)*acc68(124)
      acc68(125)=Qspvak1l6*acc68(69)
      acc68(126)=Qspval5k2*acc68(121)
      acc68(127)=Qspval6k2*acc68(118)
      acc68(128)=Qspvak1e7*acc68(111)
      acc68(129)=-Qspvak3k2*acc68(81)
      acc68(130)=Qspvak1k2*acc68(32)
      acc68(131)=Qspvak1l5*acc68(23)
      acc68(132)=Qspk1*acc68(102)
      acc68(133)=Qspvae7k2*acc68(100)
      acc68(134)=Qspvak4k2*acc68(51)
      acc68(135)=QspQ*acc68(107)
      acc68(136)=Qspvak1k2*acc68(8)
      acc68(136)=acc68(101)+acc68(136)
      acc68(136)=Qspe7*acc68(136)
      acc68(137)=Qspval6l5*acc68(112)
      acc68(124)=acc68(137)+acc68(136)+acc68(135)+acc68(134)+acc68(133)+acc68(1&
      &32)+acc68(131)+acc68(130)+acc68(129)+acc68(128)+acc68(127)+acc68(126)+ac&
      &c68(28)+acc68(125)+acc68(124)
      acc68(124)=Qspk2*acc68(124)
      acc68(125)=-Qspe7*acc68(21)
      acc68(125)=acc68(125)+acc68(52)
      acc68(125)=Qspvak1k2*acc68(125)
      acc68(126)=Qspvak1l6*acc68(104)
      acc68(127)=Qspval5k2*acc68(116)
      acc68(128)=Qspval6k2*acc68(119)
      acc68(129)=Qspvak1e7*acc68(103)
      acc68(130)=-Qspvak3k2*acc68(25)
      acc68(131)=Qspvak1l5*acc68(30)
      acc68(132)=Qspk1*acc68(38)
      acc68(133)=Qspvae7k2*acc68(6)
      acc68(134)=Qspvak4k2*acc68(75)
      acc68(125)=acc68(134)+acc68(133)+acc68(132)+acc68(131)+acc68(130)+acc68(1&
      &29)+acc68(128)+acc68(127)+acc68(19)+acc68(126)+acc68(125)
      acc68(125)=Qspval6l5*acc68(125)
      acc68(126)=Qspval5k2*acc68(114)
      acc68(127)=Qspval6k2*acc68(115)
      acc68(128)=Qspvak1k2*acc68(7)
      acc68(129)=Qspvak1l5*acc68(20)
      acc68(130)=Qspk1*acc68(70)
      acc68(126)=acc68(130)+acc68(129)+acc68(128)+acc68(127)+acc68(56)+acc68(12&
      &6)
      acc68(126)=Qspe7*acc68(126)
      acc68(127)=Qspval6k2*acc68(116)
      acc68(128)=Qspvak1l5*acc68(104)
      acc68(129)=Qspvae7k2*acc68(110)
      acc68(127)=acc68(129)+acc68(128)+acc68(109)+acc68(127)
      acc68(127)=QspQ*acc68(127)
      acc68(128)=Qspval6k2*acc68(117)
      acc68(129)=acc68(128)+acc68(106)
      acc68(129)=-acc68(129)*acc68(123)
      acc68(130)=Qspvak1l5*acc68(105)
      acc68(128)=acc68(130)+acc68(66)+acc68(128)
      acc68(128)=Qspk1*acc68(128)
      acc68(130)=Qspval5k2*acc68(120)
      acc68(131)=Qspval6k2*acc68(113)
      acc68(132)=Qspvak3k2*acc68(49)
      acc68(133)=Qspvak1k2*acc68(31)
      acc68(134)=-acc68(105)*acc68(123)
      acc68(134)=acc68(17)+acc68(134)
      acc68(134)=Qspvak1l5*acc68(134)
      acc68(135)=acc68(123)-Qspk1
      acc68(136)=acc68(86)*acc68(135)
      acc68(136)=acc68(76)+acc68(136)
      acc68(136)=Qspvae7k2*acc68(136)
      acc68(137)=Qspvak4k2*acc68(41)
      acc68(124)=acc68(124)+acc68(125)+acc68(126)+acc68(127)+acc68(137)+acc68(1&
      &36)+acc68(128)+acc68(134)+acc68(133)+acc68(132)+acc68(131)+acc68(99)+acc&
      &68(130)+acc68(129)
      acc68(124)=Qspvak4k3*acc68(124)
      acc68(125)=Qspvak1k3*acc68(39)
      acc68(126)=Qspvak1k2*acc68(62)
      acc68(127)=Qspvak4k2*acc68(50)
      acc68(128)=QspQ*acc68(74)
      acc68(125)=acc68(128)+acc68(127)+acc68(126)+acc68(48)+acc68(125)
      acc68(125)=Qspe7*acc68(125)
      acc68(126)=Qspvae7k2*acc68(95)
      acc68(127)=Qspvak1e7*acc68(97)
      acc68(128)=-Qspvak4k2*acc68(24)
      acc68(129)=Qspe7*acc68(92)
      acc68(126)=acc68(129)+acc68(128)+acc68(126)+acc68(91)+acc68(127)
      acc68(126)=Qspval6l5*acc68(126)
      acc68(128)=Qspvak1e7*acc68(88)
      acc68(129)=Qspvae7k2*acc68(82)
      acc68(130)=-Qspvak4k2*acc68(67)
      acc68(131)=Qspe7*acc68(80)
      acc68(129)=acc68(131)+acc68(130)+acc68(129)+acc68(79)-acc68(128)
      acc68(129)=Qspk2*acc68(129)
      acc68(130)=Qspvak1e7*acc68(89)
      acc68(131)=Qspvae7k2*acc68(87)
      acc68(132)=Qspvak4k2*acc68(81)
      acc68(130)=acc68(132)+acc68(131)+acc68(61)+acc68(130)
      acc68(130)=QspQ*acc68(130)
      acc68(131)=Qspk4+Qspk3
      acc68(128)=acc68(128)-acc68(78)
      acc68(128)=acc68(128)*acc68(131)
      acc68(132)=acc68(77)*acc68(123)
      acc68(133)=Qspvak1l6*acc68(10)
      acc68(134)=Qspvak3k2*acc68(16)
      acc68(136)=-Qspvak1k2*acc68(22)
      acc68(137)=Qspvak1l5*acc68(1)
      acc68(138)=Qspk1*acc68(43)
      acc68(139)=-acc68(82)*acc68(131)
      acc68(139)=-acc68(71)+acc68(139)
      acc68(139)=Qspvae7k2*acc68(139)
      acc68(140)=acc68(67)*acc68(131)
      acc68(140)=acc68(40)+acc68(140)
      acc68(140)=Qspvak4k2*acc68(140)
      acc68(125)=acc68(129)+acc68(126)+acc68(125)+acc68(130)+acc68(140)+acc68(1&
      &39)+acc68(138)+acc68(137)+acc68(136)+acc68(134)+acc68(14)+acc68(133)+acc&
      &68(128)+acc68(132)
      acc68(125)=Qspk2*acc68(125)
      acc68(126)=Qspvak1k3*acc68(44)
      acc68(128)=Qspvak1k2*acc68(27)
      acc68(129)=Qspvak4k2*acc68(5)
      acc68(130)=QspQ*acc68(94)
      acc68(126)=acc68(130)+acc68(129)+acc68(128)+acc68(47)+acc68(126)
      acc68(126)=Qspe7*acc68(126)
      acc68(128)=Qspvak1e7*acc68(98)
      acc68(129)=Qspvae7k2*acc68(96)
      acc68(130)=Qspvak4k2*acc68(25)
      acc68(128)=acc68(130)+acc68(129)+acc68(84)+acc68(128)
      acc68(128)=QspQ*acc68(128)
      acc68(127)=acc68(127)-acc68(90)
      acc68(127)=-acc68(127)*acc68(131)
      acc68(129)=Qspvak1l6*acc68(55)
      acc68(130)=Qspvak3k2*acc68(13)
      acc68(132)=Qspvak1k2*acc68(26)
      acc68(133)=Qspvak1l5*acc68(12)
      acc68(134)=Qspk1*acc68(93)
      acc68(136)=acc68(131)*Qspvae7k2
      acc68(137)=-acc68(95)*acc68(136)
      acc68(138)=acc68(24)*acc68(131)
      acc68(138)=acc68(3)+acc68(138)
      acc68(138)=Qspvak4k2*acc68(138)
      acc68(126)=acc68(126)+acc68(128)+acc68(138)+acc68(137)+acc68(134)+acc68(1&
      &33)+acc68(132)+acc68(130)+acc68(11)+acc68(129)+acc68(127)
      acc68(126)=Qspval6l5*acc68(126)
      acc68(127)=acc68(72)*acc68(123)
      acc68(128)=Qspvak3k2*acc68(64)
      acc68(129)=Qspvak1k2*acc68(9)
      acc68(130)=Qspvak1l5*acc68(4)
      acc68(132)=Qspk1*acc68(63)
      acc68(133)=Qspvae7k2*acc68(68)
      acc68(134)=Qspvak4k2*acc68(58)
      acc68(137)=QspQ*acc68(59)
      acc68(127)=acc68(137)+acc68(134)+acc68(133)+acc68(132)+acc68(130)+acc68(1&
      &29)+acc68(34)+acc68(128)+acc68(127)
      acc68(127)=QspQ*acc68(127)
      acc68(128)=Qspvak3k2*acc68(33)
      acc68(129)=Qspvak1k2*acc68(45)
      acc68(130)=Qspvak1l5*acc68(2)
      acc68(132)=Qspk1*acc68(29)
      acc68(133)=Qspvak4k2*acc68(54)
      acc68(134)=QspQ*acc68(35)
      acc68(128)=acc68(134)+acc68(133)+acc68(132)+acc68(130)+acc68(129)+acc68(4&
      &6)+acc68(128)
      acc68(128)=Qspe7*acc68(128)
      acc68(129)=acc68(42)*acc68(131)
      acc68(130)=Qspvak3k2*acc68(83)
      acc68(132)=-Qspvak1k2*acc68(60)
      acc68(133)=Qspvak1l5*acc68(36)
      acc68(129)=acc68(133)+acc68(132)+acc68(15)-acc68(130)+acc68(129)
      acc68(129)=Qspk1*acc68(129)
      acc68(130)=acc68(130)-acc68(57)
      acc68(130)=acc68(130)*acc68(123)
      acc68(132)=acc68(60)*acc68(123)
      acc68(133)=acc68(22)*acc68(131)
      acc68(132)=acc68(133)+acc68(132)
      acc68(132)=Qspvak1k2*acc68(132)
      acc68(133)=-acc68(53)*acc68(131)
      acc68(123)=-acc68(36)*acc68(123)
      acc68(123)=acc68(123)+acc68(133)
      acc68(123)=Qspvak1l5*acc68(123)
      acc68(133)=-acc68(122)*acc68(131)
      acc68(134)=-acc68(85)*acc68(135)
      acc68(133)=acc68(18)+acc68(134)+acc68(133)
      acc68(133)=Qspvak4k2*acc68(133)
      acc68(131)=-acc68(65)*acc68(131)
      acc68(134)=Qspvak3k2*acc68(73)
      acc68(135)=acc68(71)*acc68(136)
      brack=acc68(37)+acc68(123)+acc68(124)+acc68(125)+acc68(126)+acc68(127)+ac&
      &c68(128)+acc68(129)+acc68(130)+acc68(131)+acc68(132)+acc68(133)+acc68(13&
      &4)+acc68(135)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_samurai:
   function numerator_samurai(ncut,Q_ext, mu2_ext) result(numerator)
      use precision, only: ki_sam => ki
!      use p0_dbaru_epnebbbarg_groups, only: &
!           & sign => diagram68_sign, shift => diagram68_shift
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd68h1
      implicit none
      integer, intent(in) :: ncut
      complex(ki_sam), dimension(4), intent(in) :: Q_ext
      complex(ki_sam), intent(in) :: mu2_ext
      complex(ki_sam) :: numerator
      complex(ki) :: d68
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2
      Q(1)  =cmplx(real(-Q_ext(4)  -qshift(0),  ki_sam),aimag(-Q_ext(4)),  ki)
      Q(2:4)=cmplx(real(-Q_ext(1:3)-qshift(1:3),ki_sam),aimag(-Q_ext(1:3)),ki)
      d68 = 0.0_ki
      d68 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d68, ki), aimag(d68), ki_sam)
   end function numerator_samurai
   !------#] function numerator_samurai:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd68h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d68
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k2
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d68 = 0.0_ki
      d68 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d68, ki), aimag(d68), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d68h1l1
