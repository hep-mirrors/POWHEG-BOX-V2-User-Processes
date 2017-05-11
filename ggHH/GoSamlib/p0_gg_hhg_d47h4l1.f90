module     p0_gg_hhg_d47h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d47h4l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd47h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc47(138)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      acc47(1)=abb47(9)
      acc47(2)=abb47(10)
      acc47(3)=abb47(11)
      acc47(4)=abb47(12)
      acc47(5)=abb47(13)
      acc47(6)=abb47(14)
      acc47(7)=abb47(15)
      acc47(8)=abb47(16)
      acc47(9)=abb47(17)
      acc47(10)=abb47(18)
      acc47(11)=abb47(19)
      acc47(12)=abb47(20)
      acc47(13)=abb47(21)
      acc47(14)=abb47(22)
      acc47(15)=abb47(23)
      acc47(16)=abb47(24)
      acc47(17)=abb47(25)
      acc47(18)=abb47(26)
      acc47(19)=abb47(27)
      acc47(20)=abb47(28)
      acc47(21)=abb47(29)
      acc47(22)=abb47(30)
      acc47(23)=abb47(31)
      acc47(24)=abb47(32)
      acc47(25)=abb47(33)
      acc47(26)=abb47(34)
      acc47(27)=abb47(35)
      acc47(28)=abb47(36)
      acc47(29)=abb47(37)
      acc47(30)=abb47(38)
      acc47(31)=abb47(39)
      acc47(32)=abb47(40)
      acc47(33)=abb47(41)
      acc47(34)=abb47(42)
      acc47(35)=abb47(43)
      acc47(36)=abb47(44)
      acc47(37)=abb47(45)
      acc47(38)=abb47(46)
      acc47(39)=abb47(47)
      acc47(40)=abb47(48)
      acc47(41)=abb47(49)
      acc47(42)=abb47(50)
      acc47(43)=abb47(51)
      acc47(44)=abb47(52)
      acc47(45)=abb47(53)
      acc47(46)=abb47(54)
      acc47(47)=abb47(55)
      acc47(48)=abb47(56)
      acc47(49)=abb47(57)
      acc47(50)=abb47(58)
      acc47(51)=abb47(59)
      acc47(52)=abb47(60)
      acc47(53)=abb47(61)
      acc47(54)=abb47(62)
      acc47(55)=abb47(63)
      acc47(56)=abb47(64)
      acc47(57)=abb47(65)
      acc47(58)=abb47(66)
      acc47(59)=abb47(67)
      acc47(60)=abb47(68)
      acc47(61)=abb47(69)
      acc47(62)=abb47(70)
      acc47(63)=abb47(71)
      acc47(64)=abb47(72)
      acc47(65)=abb47(73)
      acc47(66)=abb47(74)
      acc47(67)=abb47(75)
      acc47(68)=abb47(76)
      acc47(69)=abb47(77)
      acc47(70)=abb47(78)
      acc47(71)=abb47(79)
      acc47(72)=abb47(80)
      acc47(73)=abb47(81)
      acc47(74)=abb47(82)
      acc47(75)=abb47(83)
      acc47(76)=abb47(85)
      acc47(77)=abb47(86)
      acc47(78)=abb47(87)
      acc47(79)=abb47(88)
      acc47(80)=abb47(90)
      acc47(81)=abb47(92)
      acc47(82)=abb47(93)
      acc47(83)=abb47(94)
      acc47(84)=abb47(95)
      acc47(85)=abb47(96)
      acc47(86)=abb47(97)
      acc47(87)=abb47(98)
      acc47(88)=abb47(99)
      acc47(89)=abb47(100)
      acc47(90)=abb47(101)
      acc47(91)=abb47(102)
      acc47(92)=abb47(103)
      acc47(93)=abb47(105)
      acc47(94)=abb47(106)
      acc47(95)=abb47(110)
      acc47(96)=abb47(111)
      acc47(97)=abb47(112)
      acc47(98)=abb47(113)
      acc47(99)=abb47(114)
      acc47(100)=abb47(115)
      acc47(101)=abb47(116)
      acc47(102)=abb47(117)
      acc47(103)=abb47(118)
      acc47(104)=abb47(122)
      acc47(105)=abb47(123)
      acc47(106)=abb47(124)
      acc47(107)=abb47(125)
      acc47(108)=abb47(127)
      acc47(109)=abb47(128)
      acc47(110)=abb47(129)
      acc47(111)=abb47(130)
      acc47(112)=abb47(131)
      acc47(113)=abb47(134)
      acc47(114)=abb47(136)
      acc47(115)=abb47(137)
      acc47(116)=abb47(139)
      acc47(117)=abb47(141)
      acc47(118)=abb47(142)
      acc47(119)=abb47(144)
      acc47(120)=abb47(145)
      acc47(121)=abb47(146)
      acc47(122)=abb47(149)
      acc47(123)=abb47(150)
      acc47(124)=abb47(153)
      acc47(125)=Qspvak2k1*acc47(56)
      acc47(126)=Qspvak2l4*acc47(24)
      acc47(127)=Qspval4k5*acc47(122)
      acc47(128)=Qspk5*acc47(34)
      acc47(129)=Qspvak2l3*acc47(42)
      acc47(130)=Qspval3k5*acc47(94)
      acc47(131)=Qspl4*acc47(37)
      acc47(132)=Qspvak1k5*acc47(64)
      acc47(133)=Qspl3*acc47(75)
      acc47(134)=Qspvak2k5*acc47(71)
      acc47(135)=Qspk1*acc47(12)
      acc47(136)=QspQ*acc47(14)
      acc47(137)=Qspk2*acc47(18)
      acc47(125)=acc47(137)+acc47(136)+acc47(135)+acc47(134)+acc47(133)+acc47(1&
      &32)+acc47(131)+acc47(130)+acc47(129)+acc47(128)+acc47(127)+acc47(126)+ac&
      &c47(25)+acc47(125)
      acc47(125)=Qspk2*acc47(125)
      acc47(126)=Qspvak2l4*acc47(60)
      acc47(127)=Qspval4k5*acc47(61)
      acc47(128)=Qspk5*acc47(117)
      acc47(129)=Qspl4*acc47(19)
      acc47(130)=Qspl3*acc47(21)
      acc47(131)=Qspvak2k5*acc47(47)
      acc47(132)=Qspk1*acc47(22)
      acc47(133)=QspQ*acc47(16)
      acc47(126)=acc47(133)+acc47(132)+acc47(131)+acc47(130)+acc47(129)+acc47(1&
      &28)+acc47(127)+acc47(15)+acc47(126)
      acc47(126)=QspQ*acc47(126)
      acc47(127)=Qspvak2k1*acc47(36)
      acc47(128)=Qspvak2l4*acc47(78)
      acc47(129)=Qspval4k5*acc47(123)
      acc47(130)=Qspvak2l3*acc47(32)
      acc47(131)=Qspval3k5*acc47(98)
      acc47(132)=Qspvak1k5*acc47(69)
      acc47(133)=Qspvak2k5*acc47(9)
      acc47(134)=Qspk2*acc47(54)
      acc47(127)=acc47(134)+acc47(133)+acc47(132)+acc47(131)+acc47(130)+acc47(1&
      &29)+acc47(128)+acc47(55)+acc47(127)
      acc47(127)=Qspvak5k2*acc47(127)
      acc47(128)=Qspvak2k1*acc47(51)
      acc47(129)=-Qspvak2l4*acc47(70)
      acc47(130)=Qspval4k5*acc47(90)
      acc47(131)=Qspk5*acc47(48)
      acc47(132)=Qspvak1k5*acc47(57)
      acc47(128)=acc47(132)+acc47(131)+acc47(130)+acc47(129)+acc47(89)+acc47(12&
      &8)
      acc47(128)=Qspl3*acc47(128)
      acc47(129)=Qspk5*acc47(46)
      acc47(130)=Qspvak2l3*acc47(17)
      acc47(131)=Qspval3k5*acc47(76)
      acc47(129)=acc47(131)+acc47(130)+acc47(116)+acc47(129)
      acc47(129)=Qspl4*acc47(129)
      acc47(130)=Qspl3*acc47(124)
      acc47(131)=Qspvak2k5*acc47(99)
      acc47(130)=acc47(131)+acc47(50)+acc47(130)
      acc47(130)=Qspk1*acc47(130)
      acc47(131)=Qspvak2k1*acc47(4)
      acc47(132)=Qspvak2l4*acc47(3)
      acc47(133)=Qspval4k5*acc47(38)
      acc47(134)=Qspk5*acc47(29)
      acc47(135)=Qspvak2l3*acc47(13)
      acc47(136)=Qspval3k5*acc47(59)
      acc47(137)=Qspvak1k5*acc47(27)
      acc47(138)=Qspl3*acc47(77)
      acc47(138)=acc47(33)+acc47(138)
      acc47(138)=Qspvak2k5*acc47(138)
      acc47(125)=acc47(127)+acc47(125)+acc47(126)+acc47(130)+acc47(138)+acc47(1&
      &28)+acc47(137)+acc47(129)+acc47(136)+acc47(135)+acc47(134)+acc47(133)+ac&
      &c47(132)+acc47(20)+acc47(131)
      acc47(125)=Qspvak1k2*acc47(125)
      acc47(126)=Qspvak1l4*acc47(121)
      acc47(127)=Qspval4k2*acc47(96)
      acc47(128)=-Qspl4*acc47(91)
      acc47(129)=Qspvak1k5*acc47(119)
      acc47(130)=Qspvak2k5*acc47(93)
      acc47(131)=Qspk1*acc47(63)
      acc47(132)=QspQ*acc47(84)
      acc47(133)=Qspk2*acc47(92)
      acc47(126)=acc47(133)+acc47(132)+acc47(131)+acc47(130)+acc47(129)+acc47(1&
      &28)+acc47(127)+acc47(86)+acc47(126)
      acc47(126)=Qspk2*acc47(126)
      acc47(127)=Qspl4*acc47(82)
      acc47(128)=Qspvak1k5*acc47(120)
      acc47(129)=Qspl3*acc47(83)
      acc47(130)=Qspvak2k5*acc47(104)
      acc47(131)=Qspk1*acc47(85)
      acc47(132)=QspQ*acc47(88)
      acc47(127)=acc47(132)+acc47(131)+acc47(130)+acc47(129)+acc47(128)+acc47(4&
      &4)+acc47(127)
      acc47(127)=QspQ*acc47(127)
      acc47(128)=Qspvak2l3*acc47(112)
      acc47(129)=Qspval3k5*acc47(80)
      acc47(130)=Qspvak1k5*acc47(117)
      acc47(131)=Qspl3*acc47(91)
      acc47(128)=acc47(131)+acc47(130)+acc47(129)+acc47(81)+acc47(128)
      acc47(128)=Qspk1*acc47(128)
      acc47(129)=acc47(111)*Qspvak1l3
      acc47(130)=Qspval4k2*acc47(1)
      acc47(129)=acc47(130)+acc47(129)+acc47(31)
      acc47(129)=Qspvak2k5*acc47(129)
      acc47(130)=Qspvak1l4*acc47(35)
      acc47(131)=Qspval4k2*acc47(95)
      acc47(132)=Qspvak2l3*acc47(107)
      acc47(133)=Qspval3k5*acc47(72)
      acc47(134)=Qspl4*acc47(79)
      acc47(135)=Qspvak1k5*acc47(41)
      acc47(136)=Qspl3*acc47(87)
      acc47(126)=acc47(126)+acc47(127)+acc47(128)+acc47(129)+acc47(136)+acc47(1&
      &35)+acc47(134)+acc47(133)+acc47(132)+acc47(131)+acc47(26)+acc47(130)
      acc47(126)=Qspvak5k2*acc47(126)
      acc47(127)=Qspval4k2*acc47(28)
      acc47(128)=Qspvak2l3*acc47(110)
      acc47(129)=Qspval3k5*acc47(74)
      acc47(130)=Qspl4*acc47(73)
      acc47(131)=Qspvak1k5*acc47(113)
      acc47(132)=Qspl3*acc47(30)
      acc47(133)=Qspval3k2*acc47(102)
      acc47(133)=acc47(103)+acc47(133)
      acc47(133)=Qspvak2k5*acc47(133)
      acc47(134)=Qspk1*acc47(11)
      acc47(135)=QspQ*acc47(5)
      acc47(127)=acc47(135)+acc47(134)+acc47(133)+acc47(132)+acc47(131)+acc47(1&
      &30)+acc47(129)+acc47(128)+acc47(10)+acc47(127)
      acc47(127)=QspQ*acc47(127)
      acc47(128)=Qspk5*acc47(62)
      acc47(129)=Qspval3k5*acc47(100)
      acc47(130)=Qspl4*acc47(65)
      acc47(131)=Qspvak1k5*acc47(52)
      acc47(132)=Qspk1*acc47(67)
      acc47(133)=QspQ*acc47(23)
      acc47(134)=Qspk2*acc47(66)
      acc47(128)=acc47(134)+acc47(133)+acc47(132)+acc47(131)+acc47(130)+acc47(1&
      &29)+acc47(53)+acc47(128)
      acc47(128)=Qspk2*acc47(128)
      acc47(129)=Qspvak2l3*acc47(109)
      acc47(130)=Qspval3k5*acc47(2)
      acc47(131)=Qspvak1k5*acc47(118)
      acc47(132)=Qspvak2k5*Qspval3k2*acc47(106)
      acc47(129)=acc47(132)+acc47(131)+acc47(130)+acc47(58)+acc47(129)
      acc47(129)=Qspk1*acc47(129)
      acc47(130)=Qspk5*acc47(49)
      acc47(131)=Qspvak1k5*acc47(115)
      acc47(130)=acc47(131)+acc47(43)+acc47(130)
      acc47(130)=Qspl3*acc47(130)
      acc47(131)=Qspval3k2*acc47(39)
      acc47(132)=Qspval4k2*acc47(105)
      acc47(131)=acc47(132)+acc47(101)+acc47(131)
      acc47(131)=Qspvak2k5*acc47(131)
      acc47(132)=Qspval4k2*acc47(45)
      acc47(133)=Qspk5*acc47(40)
      acc47(134)=Qspvak2l3*acc47(108)
      acc47(135)=Qspval3k5*acc47(97)
      acc47(136)=Qspval3k5*acc47(6)
      acc47(136)=acc47(7)+acc47(136)
      acc47(136)=Qspl4*acc47(136)
      acc47(137)=Qspl4*acc47(114)
      acc47(137)=acc47(68)+acc47(137)
      acc47(137)=Qspvak1k5*acc47(137)
      brack=acc47(8)+acc47(125)+acc47(126)+acc47(127)+acc47(128)+acc47(129)+acc&
      &47(130)+acc47(131)+acc47(132)+acc47(133)+acc47(134)+acc47(135)+acc47(136&
      &)+acc47(137)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd47h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d47h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd47h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d47h4l1
