module     p0_dbaru_epnebbbarg_d67h1l1
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d67h1l1.f90
   ! generator: buildfortran.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd67h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc67(147)
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspval6l5
      complex(ki) :: Qspk2
      complex(ki) :: Qspk4
      complex(ki) :: Qspk3
      complex(ki) :: Qspl6
      complex(ki) :: Qspl5
      complex(ki) :: Qspvak7k2
      complex(ki) :: Qspk7
      complex(ki) :: Qspval5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval6k2
      complex(ki) :: Qspvak4k2
      complex(ki) :: Qspvak1k3
      complex(ki) :: Qspvak2k7
      complex(ki) :: Qspvak3k2
      complex(ki) :: Qspvak4k3
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspval6l5 = dotproduct(Q,spval6l5)
      Qspk2 = dotproduct(Q,k2)
      Qspk4 = dotproduct(Q,k4)
      Qspk3 = dotproduct(Q,k3)
      Qspl6 = dotproduct(Q,l6)
      Qspl5 = dotproduct(Q,l5)
      Qspvak7k2 = dotproduct(Q,spvak7k2)
      Qspk7 = dotproduct(Q,k7)
      Qspval5k2 = dotproduct(Q,spval5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval6k2 = dotproduct(Q,spval6k2)
      Qspvak4k2 = dotproduct(Q,spvak4k2)
      Qspvak1k3 = dotproduct(Q,spvak1k3)
      Qspvak2k7 = dotproduct(Q,spvak2k7)
      Qspvak3k2 = dotproduct(Q,spvak3k2)
      Qspvak4k3 = dotproduct(Q,spvak4k3)
      acc67(1)=abb67(9)
      acc67(2)=abb67(10)
      acc67(3)=abb67(11)
      acc67(4)=abb67(12)
      acc67(5)=abb67(13)
      acc67(6)=abb67(14)
      acc67(7)=abb67(15)
      acc67(8)=abb67(16)
      acc67(9)=abb67(17)
      acc67(10)=abb67(18)
      acc67(11)=abb67(19)
      acc67(12)=abb67(20)
      acc67(13)=abb67(21)
      acc67(14)=abb67(22)
      acc67(15)=abb67(23)
      acc67(16)=abb67(24)
      acc67(17)=abb67(25)
      acc67(18)=abb67(26)
      acc67(19)=abb67(27)
      acc67(20)=abb67(28)
      acc67(21)=abb67(29)
      acc67(22)=abb67(30)
      acc67(23)=abb67(31)
      acc67(24)=abb67(32)
      acc67(25)=abb67(33)
      acc67(26)=abb67(34)
      acc67(27)=abb67(35)
      acc67(28)=abb67(36)
      acc67(29)=abb67(37)
      acc67(30)=abb67(38)
      acc67(31)=abb67(39)
      acc67(32)=abb67(40)
      acc67(33)=abb67(41)
      acc67(34)=abb67(42)
      acc67(35)=abb67(43)
      acc67(36)=abb67(44)
      acc67(37)=abb67(45)
      acc67(38)=abb67(46)
      acc67(39)=abb67(47)
      acc67(40)=abb67(48)
      acc67(41)=abb67(49)
      acc67(42)=abb67(50)
      acc67(43)=abb67(51)
      acc67(44)=abb67(52)
      acc67(45)=abb67(53)
      acc67(46)=abb67(54)
      acc67(47)=abb67(55)
      acc67(48)=abb67(56)
      acc67(49)=abb67(57)
      acc67(50)=abb67(58)
      acc67(51)=abb67(59)
      acc67(52)=abb67(60)
      acc67(53)=abb67(61)
      acc67(54)=abb67(62)
      acc67(55)=abb67(63)
      acc67(56)=abb67(64)
      acc67(57)=abb67(65)
      acc67(58)=abb67(66)
      acc67(59)=abb67(67)
      acc67(60)=abb67(68)
      acc67(61)=abb67(69)
      acc67(62)=abb67(70)
      acc67(63)=abb67(71)
      acc67(64)=abb67(72)
      acc67(65)=abb67(73)
      acc67(66)=abb67(74)
      acc67(67)=abb67(75)
      acc67(68)=abb67(76)
      acc67(69)=abb67(78)
      acc67(70)=abb67(79)
      acc67(71)=abb67(80)
      acc67(72)=abb67(81)
      acc67(73)=abb67(82)
      acc67(74)=abb67(83)
      acc67(75)=abb67(85)
      acc67(76)=abb67(86)
      acc67(77)=abb67(87)
      acc67(78)=abb67(88)
      acc67(79)=abb67(89)
      acc67(80)=abb67(90)
      acc67(81)=abb67(91)
      acc67(82)=abb67(93)
      acc67(83)=abb67(94)
      acc67(84)=abb67(95)
      acc67(85)=abb67(96)
      acc67(86)=abb67(97)
      acc67(87)=abb67(98)
      acc67(88)=abb67(100)
      acc67(89)=abb67(101)
      acc67(90)=abb67(102)
      acc67(91)=abb67(103)
      acc67(92)=abb67(104)
      acc67(93)=abb67(105)
      acc67(94)=abb67(110)
      acc67(95)=abb67(112)
      acc67(96)=abb67(113)
      acc67(97)=abb67(119)
      acc67(98)=abb67(121)
      acc67(99)=abb67(122)
      acc67(100)=abb67(123)
      acc67(101)=abb67(124)
      acc67(102)=abb67(127)
      acc67(103)=abb67(130)
      acc67(104)=abb67(131)
      acc67(105)=abb67(132)
      acc67(106)=abb67(134)
      acc67(107)=abb67(135)
      acc67(108)=abb67(137)
      acc67(109)=abb67(139)
      acc67(110)=abb67(140)
      acc67(111)=abb67(141)
      acc67(112)=abb67(142)
      acc67(113)=abb67(143)
      acc67(114)=abb67(144)
      acc67(115)=abb67(145)
      acc67(116)=abb67(146)
      acc67(117)=abb67(147)
      acc67(118)=abb67(148)
      acc67(119)=abb67(150)
      acc67(120)=abb67(152)
      acc67(121)=abb67(153)
      acc67(122)=abb67(155)
      acc67(123)=abb67(157)
      acc67(124)=abb67(159)
      acc67(125)=abb67(161)
      acc67(126)=abb67(162)
      acc67(127)=abb67(166)
      acc67(128)=abb67(169)
      acc67(129)=abb67(170)
      acc67(130)=abb67(180)
      acc67(131)=Qspk1*acc67(119)
      acc67(132)=QspQ*acc67(31)
      acc67(131)=acc67(132)+acc67(107)+acc67(131)
      acc67(131)=Qspval6l5*acc67(131)
      acc67(132)=Qspk1*acc67(126)
      acc67(133)=QspQ*acc67(73)
      acc67(132)=acc67(133)+acc67(115)+acc67(132)
      acc67(132)=Qspk2*acc67(132)
      acc67(133)=Qspk4+Qspk3
      acc67(134)=acc67(117)*acc67(133)
      acc67(135)=Qspl6+Qspl5
      acc67(136)=-acc67(79)*acc67(135)
      acc67(137)=Qspvak7k2*acc67(86)
      acc67(138)=Qspk7*acc67(105)
      acc67(139)=Qspval5k2*acc67(16)
      acc67(140)=Qspvak1k2*acc67(29)
      acc67(141)=Qspval6k2*acc67(37)
      acc67(142)=Qspk1*acc67(112)
      acc67(143)=acc67(133)-Qspk1
      acc67(144)=acc67(92)*acc67(143)
      acc67(144)=acc67(88)+acc67(144)
      acc67(144)=Qspvak4k2*acc67(144)
      acc67(145)=Qspvak4k2*acc67(75)
      acc67(145)=acc67(54)+acc67(145)
      acc67(145)=QspQ*acc67(145)
      acc67(131)=acc67(132)+acc67(131)+acc67(145)+acc67(144)+acc67(142)+acc67(1&
      &41)+acc67(140)+acc67(139)+acc67(138)+acc67(21)+acc67(137)+acc67(136)+acc&
      &67(134)
      acc67(131)=Qspk2*acc67(131)
      acc67(132)=acc67(65)*acc67(133)
      acc67(134)=Qspvak1k3*acc67(25)
      acc67(136)=Qspvak1k2*acc67(51)
      acc67(137)=Qspk1*acc67(71)
      acc67(138)=QspQ*acc67(74)
      acc67(132)=acc67(138)+acc67(137)+acc67(136)+acc67(55)+acc67(134)+acc67(13&
      &2)
      acc67(132)=Qspval6l5*acc67(132)
      acc67(134)=-acc67(97)*acc67(133)
      acc67(136)=Qspvak1k3*acc67(43)
      acc67(137)=Qspvak1k2*acc67(46)
      acc67(138)=Qspk1*acc67(129)
      acc67(139)=QspQ*acc67(68)
      acc67(134)=acc67(139)+acc67(138)+acc67(137)+acc67(50)+acc67(136)+acc67(13&
      &4)
      acc67(134)=Qspk2*acc67(134)
      acc67(136)=Qspval6k2*acc67(58)
      acc67(137)=Qspvak4k2*acc67(72)
      acc67(136)=acc67(137)+acc67(59)+acc67(136)
      acc67(136)=QspQ*acc67(136)
      acc67(137)=-acc67(130)*acc67(133)
      acc67(138)=acc67(135)-Qspk7
      acc67(139)=-acc67(113)*acc67(138)
      acc67(140)=Qspvak1k3*acc67(10)
      acc67(141)=Qspvak7k2*acc67(24)
      acc67(142)=Qspval5k2*acc67(17)
      acc67(144)=Qspvak1k2*acc67(39)
      acc67(145)=Qspval6k2*acc67(13)
      acc67(146)=Qspval6k2*acc67(22)
      acc67(146)=acc67(128)+acc67(146)
      acc67(146)=Qspk1*acc67(146)
      acc67(147)=acc67(81)*acc67(143)
      acc67(147)=acc67(77)+acc67(147)
      acc67(147)=Qspvak4k2*acc67(147)
      acc67(132)=acc67(134)+acc67(132)+acc67(136)+acc67(147)+acc67(146)+acc67(1&
      &45)+acc67(144)+acc67(142)+acc67(141)+acc67(49)+acc67(140)+acc67(139)+acc&
      &67(137)
      acc67(132)=Qspvak2k7*acc67(132)
      acc67(134)=acc67(18)*acc67(138)
      acc67(136)=-Qspvak3k2*acc67(72)
      acc67(137)=Qspvak7k2*acc67(47)
      acc67(138)=Qspval5k2*acc67(76)
      acc67(139)=Qspvak1k2*acc67(6)
      acc67(140)=Qspval6k2*acc67(35)
      acc67(141)=Qspvak4k2*acc67(15)
      acc67(142)=QspQ*acc67(23)
      acc67(144)=Qspvak1k2*acc67(2)
      acc67(144)=acc67(62)+acc67(144)
      acc67(144)=Qspval6l5*acc67(144)
      acc67(145)=Qspvak1k2*acc67(52)
      acc67(145)=acc67(20)+acc67(145)
      acc67(145)=Qspk2*acc67(145)
      acc67(134)=acc67(145)+acc67(144)+acc67(142)+acc67(141)+acc67(140)+acc67(1&
      &39)+acc67(138)+acc67(137)+acc67(1)+acc67(136)+acc67(134)
      acc67(134)=Qspvak2k7*acc67(134)
      acc67(136)=-acc67(67)*acc67(135)
      acc67(137)=-Qspvak3k2*acc67(75)
      acc67(138)=Qspk7*acc67(45)
      acc67(139)=Qspval5k2*acc67(109)
      acc67(140)=Qspvak1k2*acc67(60)
      acc67(141)=Qspval6k2*acc67(106)
      acc67(142)=Qspvak4k2*acc67(127)
      acc67(144)=QspQ*acc67(94)
      acc67(145)=Qspval6l5*acc67(98)
      acc67(136)=acc67(145)+acc67(144)+acc67(142)+acc67(141)+acc67(140)+acc67(1&
      &39)+acc67(138)+acc67(14)+acc67(137)+acc67(136)
      acc67(136)=Qspk2*acc67(136)
      acc67(137)=-acc67(96)*acc67(135)
      acc67(138)=-Qspvak3k2*acc67(3)
      acc67(139)=Qspk7*acc67(56)
      acc67(140)=Qspval5k2*acc67(120)
      acc67(141)=Qspvak1k2*acc67(4)
      acc67(142)=Qspval6k2*acc67(116)
      acc67(144)=Qspvak4k2*acc67(103)
      acc67(145)=QspQ*acc67(53)
      acc67(137)=acc67(145)+acc67(144)+acc67(142)+acc67(141)+acc67(140)+acc67(1&
      &39)+acc67(36)+acc67(138)+acc67(137)
      acc67(137)=Qspval6l5*acc67(137)
      acc67(138)=-acc67(38)*acc67(135)
      acc67(139)=Qspvak3k2*acc67(61)
      acc67(140)=Qspk7*acc67(30)
      acc67(141)=Qspval5k2*acc67(70)
      acc67(142)=Qspvak1k2*acc67(48)
      acc67(144)=acc67(100)*acc67(135)
      acc67(144)=acc67(69)+acc67(144)
      acc67(144)=Qspval6k2*acc67(144)
      acc67(145)=Qspvak4k2*acc67(83)
      acc67(146)=Qspval6k2*acc67(111)
      acc67(146)=acc67(32)+acc67(146)
      acc67(146)=QspQ*acc67(146)
      acc67(134)=acc67(134)+acc67(136)+acc67(137)+acc67(146)+acc67(145)+acc67(1&
      &44)+acc67(142)+acc67(141)+acc67(140)+acc67(28)+acc67(139)+acc67(138)
      acc67(134)=Qspvak4k3*acc67(134)
      acc67(136)=-acc67(63)*acc67(133)
      acc67(137)=-acc67(57)*acc67(135)
      acc67(138)=Qspvak7k2*acc67(89)
      acc67(139)=Qspk7*acc67(41)
      acc67(140)=Qspval5k2*acc67(108)
      acc67(141)=Qspvak1k2*acc67(27)
      acc67(142)=Qspval6k2*acc67(102)
      acc67(144)=Qspk1*acc67(82)
      acc67(145)=Qspvak4k2*acc67(121)
      acc67(146)=QspQ*acc67(78)
      acc67(136)=acc67(146)+acc67(145)+acc67(144)+acc67(142)+acc67(141)+acc67(1&
      &40)+acc67(139)+acc67(19)+acc67(138)+acc67(137)+acc67(136)
      acc67(136)=QspQ*acc67(136)
      acc67(137)=acc67(114)*acc67(133)
      acc67(138)=acc67(99)*acc67(135)
      acc67(139)=Qspvak7k2*acc67(5)
      acc67(140)=Qspk7*acc67(91)
      acc67(141)=Qspval5k2*acc67(34)
      acc67(142)=Qspvak1k2*acc67(9)
      acc67(144)=Qspval6k2*acc67(87)
      acc67(145)=Qspk1*acc67(110)
      acc67(143)=acc67(125)*acc67(143)
      acc67(143)=acc67(93)+acc67(143)
      acc67(143)=Qspvak4k2*acc67(143)
      acc67(146)=Qspvak4k2*acc67(3)
      acc67(146)=acc67(8)+acc67(146)
      acc67(146)=QspQ*acc67(146)
      acc67(137)=acc67(146)+acc67(143)+acc67(145)+acc67(144)+acc67(142)+acc67(1&
      &41)+acc67(140)+acc67(64)+acc67(139)+acc67(138)+acc67(137)
      acc67(137)=Qspval6l5*acc67(137)
      acc67(138)=acc67(124)*acc67(135)
      acc67(139)=Qspvak7k2*acc67(26)
      acc67(140)=Qspk7*acc67(123)
      acc67(141)=Qspval5k2*acc67(84)
      acc67(142)=Qspvak1k2*acc67(44)
      acc67(143)=Qspval6k2*acc67(118)
      acc67(138)=acc67(143)+acc67(142)+acc67(141)+acc67(140)+acc67(104)+acc67(1&
      &39)+acc67(138)
      acc67(138)=Qspk1*acc67(138)
      acc67(139)=acc67(101)*acc67(133)
      acc67(139)=acc67(139)-acc67(80)
      acc67(139)=acc67(139)*acc67(135)
      acc67(140)=-acc67(85)*acc67(133)
      acc67(141)=Qspk1*acc67(122)
      acc67(140)=acc67(141)+acc67(40)+acc67(140)
      acc67(140)=Qspvak4k2*acc67(140)
      acc67(133)=acc67(95)*acc67(133)
      acc67(141)=Qspvak7k2*acc67(7)
      acc67(142)=Qspk7*acc67(90)
      acc67(143)=Qspval5k2*acc67(42)
      acc67(144)=Qspvak1k2*acc67(11)
      acc67(135)=acc67(66)*acc67(135)
      acc67(135)=acc67(33)+acc67(135)
      acc67(135)=Qspval6k2*acc67(135)
      brack=acc67(12)+acc67(131)+acc67(132)+acc67(133)+acc67(134)+acc67(135)+ac&
      &c67(136)+acc67(137)+acc67(138)+acc67(139)+acc67(140)+acc67(141)+acc67(14&
      &2)+acc67(143)+acc67(144)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h1
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d67
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d67 = 0.0_ki
      d67 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d67, ki), aimag(d67), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_dbaru_epnebbbarg_d67h1l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd67h1
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d67
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k7-k6-k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d67 = 0.0_ki
      d67 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d67, ki), aimag(d67), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_dbaru_epnebbbarg_d67h1l1
