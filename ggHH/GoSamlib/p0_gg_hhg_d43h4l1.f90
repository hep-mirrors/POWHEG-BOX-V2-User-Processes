module     p0_gg_hhg_d43h4l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d43h4l1.f90
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
      use p0_gg_hhg_abbrevd43h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc43(137)
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspk1
      complex(ki) :: Qspl4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval4k2
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspl3 = dotproduct(Q,l3)
      Qspk1 = dotproduct(Q,k1)
      Qspl4 = dotproduct(Q,l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      acc43(1)=abb43(9)
      acc43(2)=abb43(10)
      acc43(3)=abb43(11)
      acc43(4)=abb43(12)
      acc43(5)=abb43(13)
      acc43(6)=abb43(14)
      acc43(7)=abb43(15)
      acc43(8)=abb43(16)
      acc43(9)=abb43(17)
      acc43(10)=abb43(18)
      acc43(11)=abb43(19)
      acc43(12)=abb43(20)
      acc43(13)=abb43(21)
      acc43(14)=abb43(22)
      acc43(15)=abb43(23)
      acc43(16)=abb43(24)
      acc43(17)=abb43(25)
      acc43(18)=abb43(26)
      acc43(19)=abb43(27)
      acc43(20)=abb43(28)
      acc43(21)=abb43(29)
      acc43(22)=abb43(30)
      acc43(23)=abb43(31)
      acc43(24)=abb43(32)
      acc43(25)=abb43(33)
      acc43(26)=abb43(34)
      acc43(27)=abb43(35)
      acc43(28)=abb43(36)
      acc43(29)=abb43(37)
      acc43(30)=abb43(38)
      acc43(31)=abb43(39)
      acc43(32)=abb43(40)
      acc43(33)=abb43(41)
      acc43(34)=abb43(42)
      acc43(35)=abb43(43)
      acc43(36)=abb43(44)
      acc43(37)=abb43(45)
      acc43(38)=abb43(46)
      acc43(39)=abb43(47)
      acc43(40)=abb43(48)
      acc43(41)=abb43(49)
      acc43(42)=abb43(50)
      acc43(43)=abb43(51)
      acc43(44)=abb43(52)
      acc43(45)=abb43(53)
      acc43(46)=abb43(54)
      acc43(47)=abb43(55)
      acc43(48)=abb43(56)
      acc43(49)=abb43(57)
      acc43(50)=abb43(58)
      acc43(51)=abb43(59)
      acc43(52)=abb43(61)
      acc43(53)=abb43(62)
      acc43(54)=abb43(63)
      acc43(55)=abb43(64)
      acc43(56)=abb43(65)
      acc43(57)=abb43(66)
      acc43(58)=abb43(67)
      acc43(59)=abb43(68)
      acc43(60)=abb43(70)
      acc43(61)=abb43(71)
      acc43(62)=abb43(72)
      acc43(63)=abb43(74)
      acc43(64)=abb43(75)
      acc43(65)=abb43(77)
      acc43(66)=abb43(78)
      acc43(67)=abb43(80)
      acc43(68)=abb43(82)
      acc43(69)=abb43(83)
      acc43(70)=abb43(84)
      acc43(71)=abb43(85)
      acc43(72)=abb43(86)
      acc43(73)=abb43(87)
      acc43(74)=abb43(88)
      acc43(75)=abb43(89)
      acc43(76)=abb43(90)
      acc43(77)=abb43(91)
      acc43(78)=abb43(92)
      acc43(79)=abb43(93)
      acc43(80)=abb43(94)
      acc43(81)=abb43(95)
      acc43(82)=abb43(97)
      acc43(83)=abb43(100)
      acc43(84)=abb43(101)
      acc43(85)=abb43(102)
      acc43(86)=abb43(103)
      acc43(87)=abb43(104)
      acc43(88)=abb43(105)
      acc43(89)=abb43(106)
      acc43(90)=abb43(108)
      acc43(91)=abb43(109)
      acc43(92)=abb43(111)
      acc43(93)=abb43(112)
      acc43(94)=abb43(114)
      acc43(95)=abb43(115)
      acc43(96)=abb43(116)
      acc43(97)=abb43(118)
      acc43(98)=abb43(122)
      acc43(99)=abb43(123)
      acc43(100)=abb43(126)
      acc43(101)=abb43(127)
      acc43(102)=abb43(129)
      acc43(103)=abb43(130)
      acc43(104)=abb43(131)
      acc43(105)=abb43(132)
      acc43(106)=abb43(133)
      acc43(107)=abb43(134)
      acc43(108)=abb43(135)
      acc43(109)=abb43(137)
      acc43(110)=abb43(139)
      acc43(111)=abb43(141)
      acc43(112)=abb43(144)
      acc43(113)=abb43(146)
      acc43(114)=abb43(147)
      acc43(115)=abb43(149)
      acc43(116)=abb43(150)
      acc43(117)=abb43(151)
      acc43(118)=abb43(152)
      acc43(119)=abb43(153)
      acc43(120)=abb43(154)
      acc43(121)=abb43(155)
      acc43(122)=abb43(156)
      acc43(123)=abb43(158)
      acc43(124)=Qspval3k5*acc43(64)
      acc43(125)=Qspvak2k1*acc43(16)
      acc43(126)=Qspvak2l3*acc43(77)
      acc43(127)=Qspk5*acc43(25)
      acc43(128)=Qspvak1k5*acc43(48)
      acc43(129)=Qspl3*acc43(75)
      acc43(130)=Qspk1*acc43(112)
      acc43(131)=Qspl4*acc43(32)
      acc43(132)=QspQ*acc43(15)
      acc43(133)=Qspvak2k5*acc43(21)
      acc43(134)=Qspk2*acc43(102)
      acc43(124)=acc43(134)+acc43(133)+acc43(132)+acc43(131)+acc43(130)+acc43(1&
      &29)+acc43(128)+acc43(127)+acc43(126)+acc43(125)+acc43(20)+acc43(124)
      acc43(124)=Qspk2*acc43(124)
      acc43(125)=Qspval3k5*acc43(71)
      acc43(126)=Qspvak2l3*acc43(78)
      acc43(127)=Qspk5*acc43(116)
      acc43(128)=Qspl3*acc43(38)
      acc43(129)=Qspk1*acc43(26)
      acc43(130)=Qspl4*acc43(27)
      acc43(131)=QspQ*acc43(8)
      acc43(125)=acc43(131)+acc43(130)+acc43(129)+acc43(128)+acc43(127)+acc43(1&
      &26)+acc43(23)+acc43(125)
      acc43(125)=QspQ*acc43(125)
      acc43(126)=Qspvak2k1*acc43(17)
      acc43(127)=Qspvak2l3*acc43(67)
      acc43(128)=Qspvak2l4*acc43(72)
      acc43(129)=Qspval4k5*acc43(55)
      acc43(130)=Qspvak1k5*acc43(42)
      acc43(131)=Qspvak2k5*acc43(54)
      acc43(132)=Qspk2*acc43(4)
      acc43(126)=acc43(132)+acc43(131)+acc43(130)+acc43(129)+acc43(128)+acc43(1&
      &27)+acc43(33)+acc43(126)
      acc43(126)=Qspvak5k2*acc43(126)
      acc43(127)=Qspvak2k1*acc43(6)
      acc43(128)=Qspk5*acc43(110)
      acc43(129)=Qspvak1k5*acc43(3)
      acc43(130)=Qspk1*acc43(111)
      acc43(127)=acc43(130)+acc43(129)+acc43(128)+acc43(93)+acc43(127)
      acc43(127)=Qspl4*acc43(127)
      acc43(128)=Qspk1-Qspl3
      acc43(128)=acc43(57)*acc43(128)
      acc43(129)=Qspl4*acc43(49)
      acc43(130)=QspQ*acc43(66)
      acc43(128)=acc43(130)+acc43(129)+acc43(1)+acc43(128)
      acc43(128)=Qspvak2k5*acc43(128)
      acc43(129)=Qspval3k5*acc43(63)
      acc43(130)=Qspvak2k1*acc43(7)
      acc43(131)=Qspvak2l3*acc43(9)
      acc43(132)=Qspvak2l4*acc43(2)
      acc43(133)=Qspk5*acc43(14)
      acc43(134)=Qspval4k5*acc43(52)
      acc43(135)=Qspvak1k5*acc43(39)
      acc43(136)=Qspl3*acc43(51)
      acc43(137)=Qspk1*acc43(10)
      acc43(124)=acc43(126)+acc43(124)+acc43(128)+acc43(125)+acc43(127)+acc43(1&
      &37)+acc43(136)+acc43(135)+acc43(134)+acc43(133)+acc43(132)+acc43(131)+ac&
      &c43(130)+acc43(11)+acc43(129)
      acc43(124)=Qspvak1k2*acc43(124)
      acc43(125)=Qspvak1l3*acc43(122)
      acc43(126)=Qspval3k2*acc43(92)
      acc43(127)=Qspvak1k5*acc43(115)
      acc43(128)=-Qspl3*acc43(53)
      acc43(129)=Qspk1*acc43(84)
      acc43(130)=QspQ*acc43(59)
      acc43(131)=Qspvak2k5*acc43(22)
      acc43(132)=Qspk2*acc43(80)
      acc43(125)=acc43(132)+acc43(131)+acc43(130)+acc43(129)+acc43(128)+acc43(1&
      &27)+acc43(126)+acc43(45)+acc43(125)
      acc43(125)=Qspk2*acc43(125)
      acc43(126)=Qspvak1l4*acc43(119)
      acc43(127)=Qspvak1l3*acc43(123)
      acc43(128)=Qspval4k2*acc43(85)
      acc43(129)=Qspval3k2*acc43(88)
      acc43(130)=Qspl3*acc43(73)
      acc43(131)=-Qspl4*acc43(22)
      acc43(132)=QspQ*acc43(97)
      acc43(126)=acc43(132)+acc43(131)+acc43(130)+acc43(129)+acc43(128)+acc43(1&
      &27)+acc43(5)+acc43(126)
      acc43(126)=Qspvak2k5*acc43(126)
      acc43(127)=Qspvak1k5*acc43(117)
      acc43(128)=Qspl3*acc43(56)
      acc43(129)=Qspk1*acc43(61)
      acc43(130)=Qspl4*acc43(35)
      acc43(131)=QspQ*acc43(74)
      acc43(127)=acc43(131)+acc43(130)+acc43(129)+acc43(128)+acc43(19)+acc43(12&
      &7)
      acc43(127)=QspQ*acc43(127)
      acc43(128)=Qspvak2l4*acc43(30)
      acc43(129)=Qspval4k5*acc43(87)
      acc43(130)=Qspvak1k5*acc43(116)
      acc43(128)=acc43(130)+acc43(129)+acc43(76)+acc43(128)
      acc43(128)=Qspk1*acc43(128)
      acc43(129)=Qspvak2l4*acc43(109)
      acc43(130)=Qspvak1l3*acc43(62)
      acc43(131)=Qspval4k5*acc43(86)
      acc43(132)=Qspval3k2*acc43(79)
      acc43(133)=Qspvak1k5*acc43(114)
      acc43(134)=Qspl3*acc43(43)
      acc43(135)=Qspk1*acc43(53)
      acc43(135)=acc43(31)+acc43(135)
      acc43(135)=Qspl4*acc43(135)
      acc43(125)=acc43(125)+acc43(126)+acc43(127)+acc43(135)+acc43(128)+acc43(1&
      &34)+acc43(133)+acc43(132)+acc43(131)+acc43(130)+acc43(13)+acc43(129)
      acc43(125)=Qspvak5k2*acc43(125)
      acc43(126)=Qspval4k2*acc43(106)
      acc43(127)=Qspval3k2*acc43(108)
      acc43(126)=acc43(127)+acc43(98)+acc43(126)
      acc43(126)=Qspvak2k5*acc43(126)
      acc43(127)=Qspk5*acc43(40)
      acc43(128)=Qspvak1l3*acc43(121)
      acc43(129)=Qspval3k2*acc43(91)
      acc43(130)=Qspvak1k5*acc43(113)
      acc43(131)=Qspl3*acc43(44)
      acc43(132)=Qspk1*acc43(65)
      acc43(133)=Qspl4*acc43(58)
      acc43(134)=QspQ*acc43(18)
      acc43(135)=Qspk2*acc43(60)
      acc43(126)=acc43(135)+acc43(126)+acc43(134)+acc43(133)+acc43(132)+acc43(1&
      &31)+acc43(130)+acc43(129)+acc43(128)+acc43(37)+acc43(127)
      acc43(126)=Qspk2*acc43(126)
      acc43(127)=Qspvak1l3*acc43(69)
      acc43(128)=Qspval4k5*acc43(83)
      acc43(129)=Qspval3k2*acc43(28)
      acc43(130)=Qspvak1k5*acc43(68)
      acc43(131)=Qspl3*acc43(70)
      acc43(132)=Qspk1*acc43(36)
      acc43(133)=Qspl4*acc43(34)
      acc43(134)=QspQ*acc43(47)
      acc43(127)=acc43(134)+acc43(133)+acc43(132)+acc43(131)+acc43(130)+acc43(1&
      &29)+acc43(128)+acc43(24)+acc43(127)
      acc43(127)=QspQ*acc43(127)
      acc43(128)=Qspvak1l4*acc43(118)
      acc43(129)=Qspval4k2*acc43(105)
      acc43(130)=Qspval3k2*acc43(101)
      acc43(131)=Qspval4k2*acc43(104)
      acc43(132)=acc43(100)+acc43(131)
      acc43(132)=Qspl3*acc43(132)
      acc43(131)=acc43(103)-acc43(131)
      acc43(131)=Qspk1*acc43(131)
      acc43(133)=-Qspval3k2*acc43(107)
      acc43(133)=acc43(99)+acc43(133)
      acc43(133)=Qspl4*acc43(133)
      acc43(134)=Qspval4k2*acc43(81)
      acc43(134)=acc43(94)+acc43(134)
      acc43(134)=QspQ*acc43(134)
      acc43(128)=acc43(134)+acc43(133)+acc43(131)+acc43(132)+acc43(130)+acc43(1&
      &29)+acc43(95)+acc43(128)
      acc43(128)=Qspvak2k5*acc43(128)
      acc43(129)=Qspk5*acc43(29)
      acc43(130)=Qspvak1l3*acc43(120)
      acc43(131)=Qspval4k5*acc43(82)
      acc43(132)=Qspval3k2*acc43(89)
      acc43(133)=Qspvak1k5*acc43(96)
      acc43(134)=Qspl3*acc43(46)
      acc43(135)=Qspk1*acc43(50)
      acc43(136)=Qspval3k2*acc43(90)
      acc43(136)=acc43(41)+acc43(136)
      acc43(136)=Qspl4*acc43(136)
      brack=acc43(12)+acc43(124)+acc43(125)+acc43(126)+acc43(127)+acc43(128)+ac&
      &c43(129)+acc43(130)+acc43(131)+acc43(132)+acc43(133)+acc43(134)+acc43(13&
      &5)+acc43(136)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h4
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d43
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d43 = 0.0_ki
      d43 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d43, ki), aimag(d43), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d43h4l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h4
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d43
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d43 = 0.0_ki
      d43 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d43, ki), aimag(d43), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d43h4l1
