module     p0_gg_hhg_d65h3l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d65h3l1.f90
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
      use p0_gg_hhg_abbrevd65h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(133)
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk5
      complex(ki) :: Qspl3
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspl4
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2k1
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk5 = dotproduct(Q,k5)
      Qspl3 = dotproduct(Q,l3)
      Qspk1 = dotproduct(Q,k1)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspl4 = dotproduct(Q,l4)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc65(1)=abb65(9)
      acc65(2)=abb65(10)
      acc65(3)=abb65(11)
      acc65(4)=abb65(12)
      acc65(5)=abb65(13)
      acc65(6)=abb65(14)
      acc65(7)=abb65(15)
      acc65(8)=abb65(16)
      acc65(9)=abb65(17)
      acc65(10)=abb65(18)
      acc65(11)=abb65(19)
      acc65(12)=abb65(20)
      acc65(13)=abb65(21)
      acc65(14)=abb65(22)
      acc65(15)=abb65(23)
      acc65(16)=abb65(24)
      acc65(17)=abb65(25)
      acc65(18)=abb65(26)
      acc65(19)=abb65(27)
      acc65(20)=abb65(28)
      acc65(21)=abb65(29)
      acc65(22)=abb65(30)
      acc65(23)=abb65(31)
      acc65(24)=abb65(32)
      acc65(25)=abb65(33)
      acc65(26)=abb65(34)
      acc65(27)=abb65(35)
      acc65(28)=abb65(36)
      acc65(29)=abb65(37)
      acc65(30)=abb65(38)
      acc65(31)=abb65(39)
      acc65(32)=abb65(40)
      acc65(33)=abb65(41)
      acc65(34)=abb65(42)
      acc65(35)=abb65(43)
      acc65(36)=abb65(44)
      acc65(37)=abb65(45)
      acc65(38)=abb65(46)
      acc65(39)=abb65(47)
      acc65(40)=abb65(48)
      acc65(41)=abb65(50)
      acc65(42)=abb65(51)
      acc65(43)=abb65(54)
      acc65(44)=abb65(55)
      acc65(45)=abb65(56)
      acc65(46)=abb65(58)
      acc65(47)=abb65(59)
      acc65(48)=abb65(60)
      acc65(49)=abb65(61)
      acc65(50)=abb65(62)
      acc65(51)=abb65(63)
      acc65(52)=abb65(64)
      acc65(53)=abb65(65)
      acc65(54)=abb65(66)
      acc65(55)=abb65(67)
      acc65(56)=abb65(68)
      acc65(57)=abb65(69)
      acc65(58)=abb65(70)
      acc65(59)=abb65(71)
      acc65(60)=abb65(72)
      acc65(61)=abb65(73)
      acc65(62)=abb65(74)
      acc65(63)=abb65(75)
      acc65(64)=abb65(76)
      acc65(65)=abb65(77)
      acc65(66)=abb65(78)
      acc65(67)=abb65(80)
      acc65(68)=abb65(81)
      acc65(69)=abb65(82)
      acc65(70)=abb65(83)
      acc65(71)=abb65(87)
      acc65(72)=abb65(88)
      acc65(73)=abb65(89)
      acc65(74)=abb65(92)
      acc65(75)=abb65(93)
      acc65(76)=abb65(94)
      acc65(77)=abb65(95)
      acc65(78)=abb65(98)
      acc65(79)=abb65(101)
      acc65(80)=abb65(104)
      acc65(81)=abb65(105)
      acc65(82)=abb65(108)
      acc65(83)=abb65(113)
      acc65(84)=abb65(114)
      acc65(85)=abb65(116)
      acc65(86)=abb65(119)
      acc65(87)=abb65(120)
      acc65(88)=abb65(121)
      acc65(89)=abb65(122)
      acc65(90)=abb65(124)
      acc65(91)=abb65(125)
      acc65(92)=abb65(126)
      acc65(93)=abb65(127)
      acc65(94)=abb65(131)
      acc65(95)=abb65(134)
      acc65(96)=abb65(135)
      acc65(97)=abb65(138)
      acc65(98)=abb65(139)
      acc65(99)=abb65(142)
      acc65(100)=abb65(143)
      acc65(101)=abb65(144)
      acc65(102)=abb65(145)
      acc65(103)=abb65(146)
      acc65(104)=abb65(147)
      acc65(105)=abb65(148)
      acc65(106)=abb65(149)
      acc65(107)=abb65(152)
      acc65(108)=abb65(154)
      acc65(109)=abb65(155)
      acc65(110)=abb65(157)
      acc65(111)=abb65(158)
      acc65(112)=abb65(159)
      acc65(113)=abb65(160)
      acc65(114)=Qspval3k5*acc65(57)
      acc65(115)=Qspval4k5*acc65(64)
      acc65(116)=Qspvak1k2*acc65(21)
      acc65(117)=Qspvak2l3*acc65(69)
      acc65(118)=Qspvak2l4*acc65(67)
      acc65(119)=Qspk5*acc65(24)
      acc65(120)=Qspl3*acc65(11)
      acc65(121)=Qspk1*acc65(39)
      acc65(122)=Qspvak5k2*acc65(25)
      acc65(123)=Qspl4*acc65(35)
      acc65(124)=Qspk2*acc65(38)
      acc65(125)=Qspvak5k2*acc65(22)
      acc65(125)=acc65(23)+acc65(125)
      acc65(125)=Qspvak2k5*acc65(125)
      acc65(126)=QspQ*acc65(41)
      acc65(114)=acc65(126)+acc65(125)+acc65(124)+acc65(123)+acc65(122)+acc65(1&
      &21)+acc65(120)+acc65(119)+acc65(118)+acc65(117)+acc65(116)+acc65(115)+ac&
      &c65(12)+acc65(114)
      acc65(114)=QspQ*acc65(114)
      acc65(115)=Qspval4k2*acc65(40)
      acc65(116)=Qspvak5l3*acc65(34)
      acc65(117)=Qspval3k2*acc65(17)
      acc65(118)=Qspvak5l4*acc65(30)
      acc65(119)=Qspl3*acc65(62)
      acc65(120)=Qspvak5k2*acc65(4)
      acc65(121)=Qspvak5k2*acc65(73)
      acc65(121)=acc65(31)+acc65(121)
      acc65(121)=Qspl4*acc65(121)
      acc65(122)=Qspvak5k2*acc65(51)
      acc65(122)=acc65(33)+acc65(122)
      acc65(122)=Qspk2*acc65(122)
      acc65(115)=acc65(122)+acc65(121)+acc65(120)+acc65(119)+acc65(118)+acc65(1&
      &17)+acc65(116)+acc65(18)+acc65(115)
      acc65(115)=Qspvak2k5*acc65(115)
      acc65(116)=Qspvak1k2*acc65(2)
      acc65(117)=Qspk5*acc65(59)
      acc65(118)=Qspvak5k1*acc65(52)
      acc65(119)=Qspk1*acc65(107)
      acc65(120)=Qspl4*acc65(68)
      acc65(121)=Qspk2*acc65(58)
      acc65(116)=acc65(121)+acc65(120)+acc65(119)+acc65(118)+acc65(117)+acc65(1&
      &)+acc65(116)
      acc65(116)=Qspk2*acc65(116)
      acc65(117)=Qspvak1k2*acc65(16)
      acc65(118)=Qspk5*acc65(78)
      acc65(119)=Qspvak5k1*acc65(47)
      acc65(120)=Qspk1*acc65(93)
      acc65(117)=acc65(120)+acc65(119)+acc65(118)+acc65(19)+acc65(117)
      acc65(117)=Qspl4*acc65(117)
      acc65(118)=acc65(70)*Qspvak1k5
      acc65(119)=Qspval3k5*acc65(53)
      acc65(120)=Qspval4k5*acc65(54)
      acc65(121)=Qspvak1k2*acc65(13)
      acc65(122)=Qspvak2l3*acc65(63)
      acc65(123)=Qspvak2l4*acc65(65)
      acc65(124)=Qspval4k2*acc65(32)
      acc65(125)=Qspvak5l3*acc65(46)
      acc65(126)=Qspk5*acc65(3)
      acc65(127)=Qspval3k2*acc65(27)
      acc65(128)=Qspvak5l4*acc65(43)
      acc65(129)=Qspl3*acc65(10)
      acc65(130)=Qspvak5k1*acc65(8)
      acc65(131)=Qspk1*acc65(42)
      acc65(132)=Qspvak5k2*acc65(6)
      acc65(133)=-QspQ*acc65(28)
      acc65(133)=acc65(14)+acc65(133)
      acc65(133)=Qspvak2k1*acc65(133)
      acc65(114)=acc65(133)+acc65(114)+acc65(115)+acc65(116)+acc65(117)+acc65(1&
      &32)+acc65(131)+acc65(130)+acc65(129)+acc65(128)+acc65(127)+acc65(126)+ac&
      &c65(125)+acc65(124)+acc65(123)+acc65(122)+acc65(121)+acc65(120)+acc65(11&
      &9)+acc65(118)+acc65(7)
      acc65(114)=Qspvak2k1*acc65(114)
      acc65(115)=Qspval3k2*acc65(111)
      acc65(116)=Qspvak5l4*acc65(100)
      acc65(117)=Qspl3*acc65(91)
      acc65(118)=Qspvak5k1*acc65(109)
      acc65(119)=Qspk1*acc65(101)
      acc65(120)=Qspvak5k2*acc65(82)
      acc65(121)=Qspl4*acc65(90)
      acc65(122)=Qspk2*acc65(92)
      acc65(115)=acc65(122)+acc65(121)+acc65(120)+acc65(119)+acc65(118)+acc65(1&
      &17)+acc65(116)+acc65(49)+acc65(115)
      acc65(115)=Qspvak2k5*acc65(115)
      acc65(116)=Qspvak2l3*acc65(79)
      acc65(117)=Qspvak2l4*acc65(112)
      acc65(116)=acc65(117)+acc65(83)+acc65(116)
      acc65(116)=Qspvak5k2*acc65(116)
      acc65(117)=Qspk5*acc65(74)
      acc65(118)=Qspval3k2*acc65(89)
      acc65(119)=Qspvak5l4*acc65(75)
      acc65(120)=Qspl3*acc65(50)
      acc65(121)=Qspvak5k1*acc65(86)
      acc65(122)=Qspk1*acc65(61)
      acc65(123)=Qspl4*acc65(20)
      acc65(124)=Qspk2*acc65(55)
      acc65(125)=Qspvak2k5*acc65(104)
      acc65(125)=acc65(60)+acc65(125)
      acc65(125)=QspQ*acc65(125)
      acc65(115)=acc65(125)+acc65(115)+acc65(124)+acc65(123)+acc65(116)+acc65(1&
      &22)+acc65(121)+acc65(120)+acc65(119)+acc65(118)+acc65(15)+acc65(117)
      acc65(115)=QspQ*acc65(115)
      acc65(116)=Qspvak5k1*acc65(108)
      acc65(117)=Qspk1*acc65(102)
      acc65(116)=acc65(117)+acc65(96)+acc65(116)
      acc65(116)=Qspl4*acc65(116)
      acc65(117)=Qspvak5k1*acc65(103)
      acc65(118)=Qspk1*acc65(71)
      acc65(117)=acc65(118)+acc65(99)+acc65(117)
      acc65(117)=Qspk2*acc65(117)
      acc65(118)=Qspval4k2*acc65(110)
      acc65(119)=Qspvak5l3*acc65(98)
      acc65(120)=Qspvak5l4*acc65(105)
      acc65(121)=Qspl3*acc65(97)
      acc65(122)=Qspvak5k1*acc65(84)
      acc65(123)=Qspk1*acc65(94)
      acc65(124)=Qspvak5k2*acc65(95)
      acc65(116)=acc65(117)+acc65(116)+acc65(124)+acc65(123)+acc65(122)+acc65(1&
      &21)+acc65(120)+acc65(119)+acc65(5)+acc65(118)
      acc65(116)=Qspvak2k5*acc65(116)
      acc65(117)=Qspval3k2*acc65(37)
      acc65(118)=Qspl3*acc65(72)
      acc65(117)=acc65(118)+acc65(36)+acc65(117)
      acc65(117)=Qspk1*acc65(117)
      acc65(118)=Qspvak2l3*acc65(113)
      acc65(119)=Qspvak2l4*acc65(106)
      acc65(118)=acc65(119)+acc65(26)+acc65(118)
      acc65(118)=Qspvak5k2*acc65(118)
      acc65(119)=Qspvak5k1*acc65(76)
      acc65(120)=Qspk1*acc65(66)
      acc65(119)=acc65(120)+acc65(45)+acc65(119)
      acc65(119)=Qspl4*acc65(119)
      acc65(120)=Qspvak5k1*acc65(81)
      acc65(121)=Qspk1*acc65(29)
      acc65(120)=acc65(121)+acc65(56)+acc65(120)
      acc65(120)=Qspk2*acc65(120)
      acc65(121)=Qspval4k2*acc65(87)
      acc65(122)=Qspvak5l3*acc65(80)
      acc65(123)=Qspk5*acc65(44)
      acc65(124)=Qspval3k2*acc65(88)
      acc65(125)=Qspvak5l4*acc65(77)
      acc65(126)=Qspl3*acc65(48)
      acc65(127)=Qspvak5k1*acc65(85)
      brack=acc65(9)+acc65(114)+acc65(115)+acc65(116)+acc65(117)+acc65(118)+acc&
      &65(119)+acc65(120)+acc65(121)+acc65(122)+acc65(123)+acc65(124)+acc65(125&
      &)+acc65(126)+acc65(127)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d65h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d65
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d65 = 0.0_ki
      d65 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d65, ki), aimag(d65), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d65h3l1
