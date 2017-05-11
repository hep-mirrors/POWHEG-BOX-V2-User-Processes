module p0_gg_hhg_d61h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d61h3l1.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd61h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(133)
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk5
      complex(ki) :: Qspl4
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspl3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2k1
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk5 = dotproduct(Q,k5)
      Qspl4 = dotproduct(Q,l4)
      Qspk1 = dotproduct(Q,k1)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspl3 = dotproduct(Q,l3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc61(1)=abb61(9)
      acc61(2)=abb61(10)
      acc61(3)=abb61(11)
      acc61(4)=abb61(12)
      acc61(5)=abb61(13)
      acc61(6)=abb61(14)
      acc61(7)=abb61(15)
      acc61(8)=abb61(16)
      acc61(9)=abb61(17)
      acc61(10)=abb61(18)
      acc61(11)=abb61(19)
      acc61(12)=abb61(20)
      acc61(13)=abb61(21)
      acc61(14)=abb61(22)
      acc61(15)=abb61(23)
      acc61(16)=abb61(24)
      acc61(17)=abb61(25)
      acc61(18)=abb61(26)
      acc61(19)=abb61(27)
      acc61(20)=abb61(28)
      acc61(21)=abb61(29)
      acc61(22)=abb61(30)
      acc61(23)=abb61(31)
      acc61(24)=abb61(32)
      acc61(25)=abb61(33)
      acc61(26)=abb61(34)
      acc61(27)=abb61(35)
      acc61(28)=abb61(36)
      acc61(29)=abb61(37)
      acc61(30)=abb61(38)
      acc61(31)=abb61(39)
      acc61(32)=abb61(40)
      acc61(33)=abb61(41)
      acc61(34)=abb61(42)
      acc61(35)=abb61(43)
      acc61(36)=abb61(44)
      acc61(37)=abb61(45)
      acc61(38)=abb61(46)
      acc61(39)=abb61(47)
      acc61(40)=abb61(48)
      acc61(41)=abb61(50)
      acc61(42)=abb61(51)
      acc61(43)=abb61(54)
      acc61(44)=abb61(55)
      acc61(45)=abb61(56)
      acc61(46)=abb61(57)
      acc61(47)=abb61(59)
      acc61(48)=abb61(60)
      acc61(49)=abb61(61)
      acc61(50)=abb61(62)
      acc61(51)=abb61(63)
      acc61(52)=abb61(64)
      acc61(53)=abb61(65)
      acc61(54)=abb61(66)
      acc61(55)=abb61(67)
      acc61(56)=abb61(68)
      acc61(57)=abb61(69)
      acc61(58)=abb61(70)
      acc61(59)=abb61(71)
      acc61(60)=abb61(72)
      acc61(61)=abb61(73)
      acc61(62)=abb61(74)
      acc61(63)=abb61(75)
      acc61(64)=abb61(76)
      acc61(65)=abb61(77)
      acc61(66)=abb61(78)
      acc61(67)=abb61(80)
      acc61(68)=abb61(81)
      acc61(69)=abb61(82)
      acc61(70)=abb61(83)
      acc61(71)=abb61(84)
      acc61(72)=abb61(85)
      acc61(73)=abb61(87)
      acc61(74)=abb61(88)
      acc61(75)=abb61(89)
      acc61(76)=abb61(92)
      acc61(77)=abb61(93)
      acc61(78)=abb61(94)
      acc61(79)=abb61(96)
      acc61(80)=abb61(97)
      acc61(81)=abb61(102)
      acc61(82)=abb61(103)
      acc61(83)=abb61(107)
      acc61(84)=abb61(108)
      acc61(85)=abb61(113)
      acc61(86)=abb61(114)
      acc61(87)=abb61(116)
      acc61(88)=abb61(119)
      acc61(89)=abb61(120)
      acc61(90)=abb61(122)
      acc61(91)=abb61(124)
      acc61(92)=abb61(125)
      acc61(93)=abb61(126)
      acc61(94)=abb61(127)
      acc61(95)=abb61(131)
      acc61(96)=abb61(135)
      acc61(97)=abb61(137)
      acc61(98)=abb61(139)
      acc61(99)=abb61(142)
      acc61(100)=abb61(143)
      acc61(101)=abb61(144)
      acc61(102)=abb61(145)
      acc61(103)=abb61(146)
      acc61(104)=abb61(147)
      acc61(105)=abb61(148)
      acc61(106)=abb61(149)
      acc61(107)=abb61(152)
      acc61(108)=abb61(154)
      acc61(109)=abb61(155)
      acc61(110)=abb61(157)
      acc61(111)=abb61(158)
      acc61(112)=abb61(159)
      acc61(113)=abb61(160)
      acc61(114)=Qspval3k5*acc61(34)
      acc61(115)=Qspval4k5*acc61(69)
      acc61(116)=Qspvak1k2*acc61(21)
      acc61(117)=Qspvak2l3*acc61(72)
      acc61(118)=Qspvak2l4*acc61(70)
      acc61(119)=Qspk5*acc61(28)
      acc61(120)=Qspl4*acc61(35)
      acc61(121)=Qspk1*acc61(39)
      acc61(122)=Qspvak5k2*acc61(25)
      acc61(123)=Qspl3*acc61(12)
      acc61(124)=Qspk2*acc61(38)
      acc61(125)=Qspvak5k2*acc61(22)
      acc61(125)=acc61(64)+acc61(125)
      acc61(125)=Qspvak2k5*acc61(125)
      acc61(126)=QspQ*acc61(41)
      acc61(114)=acc61(126)+acc61(125)+acc61(124)+acc61(123)+acc61(122)+acc61(1&
      &21)+acc61(120)+acc61(119)+acc61(118)+acc61(117)+acc61(116)+acc61(115)+ac&
      &c61(10)+acc61(114)
      acc61(114)=QspQ*acc61(114)
      acc61(115)=Qspval3k2*acc61(40)
      acc61(116)=Qspvak5l4*acc61(65)
      acc61(117)=Qspval4k2*acc61(17)
      acc61(118)=Qspvak5l3*acc61(30)
      acc61(119)=Qspl4*acc61(31)
      acc61(120)=Qspvak5k2*acc61(4)
      acc61(121)=Qspvak5k2*acc61(62)
      acc61(121)=acc61(47)+acc61(121)
      acc61(121)=Qspl3*acc61(121)
      acc61(122)=Qspvak5k2*acc61(50)
      acc61(122)=acc61(63)+acc61(122)
      acc61(122)=Qspk2*acc61(122)
      acc61(115)=acc61(122)+acc61(121)+acc61(120)+acc61(119)+acc61(118)+acc61(1&
      &17)+acc61(116)+acc61(18)+acc61(115)
      acc61(115)=Qspvak2k5*acc61(115)
      acc61(116)=Qspvak1k2*acc61(2)
      acc61(117)=Qspk5*acc61(59)
      acc61(118)=Qspvak5k1*acc61(53)
      acc61(119)=Qspk1*acc61(107)
      acc61(120)=Qspl3*acc61(68)
      acc61(121)=Qspk2*acc61(58)
      acc61(116)=acc61(121)+acc61(120)+acc61(119)+acc61(118)+acc61(117)+acc61(1&
      &)+acc61(116)
      acc61(116)=Qspk2*acc61(116)
      acc61(117)=Qspvak1k2*acc61(16)
      acc61(118)=Qspk5*acc61(75)
      acc61(119)=Qspvak5k1*acc61(51)
      acc61(120)=Qspk1*acc61(94)
      acc61(117)=acc61(120)+acc61(119)+acc61(118)+acc61(19)+acc61(117)
      acc61(117)=Qspl3*acc61(117)
      acc61(118)=acc61(78)*Qspvak1k5
      acc61(119)=Qspval3k5*acc61(33)
      acc61(120)=Qspval4k5*acc61(57)
      acc61(121)=Qspvak1k2*acc61(13)
      acc61(122)=Qspvak2l3*acc61(67)
      acc61(123)=Qspvak2l4*acc61(71)
      acc61(124)=Qspval3k2*acc61(54)
      acc61(125)=Qspvak5l4*acc61(43)
      acc61(126)=Qspk5*acc61(3)
      acc61(127)=Qspval4k2*acc61(27)
      acc61(128)=Qspvak5l3*acc61(48)
      acc61(129)=Qspl4*acc61(11)
      acc61(130)=Qspvak5k1*acc61(8)
      acc61(131)=Qspk1*acc61(42)
      acc61(132)=Qspvak5k2*acc61(6)
      acc61(133)=-QspQ*acc61(24)
      acc61(133)=acc61(14)+acc61(133)
      acc61(133)=Qspvak2k1*acc61(133)
      acc61(114)=acc61(133)+acc61(114)+acc61(115)+acc61(116)+acc61(117)+acc61(1&
      &32)+acc61(131)+acc61(130)+acc61(129)+acc61(128)+acc61(127)+acc61(126)+ac&
      &c61(125)+acc61(124)+acc61(123)+acc61(122)+acc61(121)+acc61(120)+acc61(11&
      &9)+acc61(118)+acc61(7)
      acc61(114)=Qspvak2k1*acc61(114)
      acc61(115)=Qspval4k2*acc61(110)
      acc61(116)=Qspvak5l3*acc61(100)
      acc61(117)=Qspl4*acc61(91)
      acc61(118)=Qspvak5k1*acc61(109)
      acc61(119)=Qspk1*acc61(101)
      acc61(120)=Qspvak5k2*acc61(84)
      acc61(121)=Qspl3*acc61(92)
      acc61(122)=Qspk2*acc61(93)
      acc61(115)=acc61(122)+acc61(121)+acc61(120)+acc61(119)+acc61(118)+acc61(1&
      &17)+acc61(116)+acc61(52)+acc61(115)
      acc61(115)=Qspvak2k5*acc61(115)
      acc61(116)=Qspvak2l3*acc61(83)
      acc61(117)=Qspvak2l4*acc61(113)
      acc61(116)=acc61(117)+acc61(85)+acc61(116)
      acc61(116)=Qspvak5k2*acc61(116)
      acc61(117)=Qspk5*acc61(76)
      acc61(118)=Qspval4k2*acc61(90)
      acc61(119)=Qspvak5l3*acc61(81)
      acc61(120)=Qspl4*acc61(45)
      acc61(121)=Qspvak5k1*acc61(88)
      acc61(122)=Qspk1*acc61(61)
      acc61(123)=Qspl3*acc61(20)
      acc61(124)=Qspk2*acc61(55)
      acc61(125)=Qspvak2k5*acc61(104)
      acc61(125)=acc61(60)+acc61(125)
      acc61(125)=QspQ*acc61(125)
      acc61(115)=acc61(125)+acc61(115)+acc61(124)+acc61(123)+acc61(116)+acc61(1&
      &22)+acc61(121)+acc61(120)+acc61(119)+acc61(118)+acc61(15)+acc61(117)
      acc61(115)=QspQ*acc61(115)
      acc61(116)=Qspvak5k1*acc61(108)
      acc61(117)=Qspk1*acc61(102)
      acc61(116)=acc61(117)+acc61(96)+acc61(116)
      acc61(116)=Qspl3*acc61(116)
      acc61(117)=Qspvak5k1*acc61(103)
      acc61(118)=Qspk1*acc61(66)
      acc61(117)=acc61(118)+acc61(99)+acc61(117)
      acc61(117)=Qspk2*acc61(117)
      acc61(118)=Qspval3k2*acc61(111)
      acc61(119)=Qspvak5l4*acc61(105)
      acc61(120)=Qspvak5l3*acc61(23)
      acc61(121)=Qspl4*acc61(95)
      acc61(122)=Qspvak5k1*acc61(86)
      acc61(123)=Qspk1*acc61(97)
      acc61(124)=Qspvak5k2*acc61(98)
      acc61(116)=acc61(117)+acc61(116)+acc61(124)+acc61(123)+acc61(122)+acc61(1&
      &21)+acc61(120)+acc61(119)+acc61(5)+acc61(118)
      acc61(116)=Qspvak2k5*acc61(116)
      acc61(117)=Qspval4k2*acc61(37)
      acc61(118)=Qspl4*acc61(73)
      acc61(117)=acc61(118)+acc61(36)+acc61(117)
      acc61(117)=Qspk1*acc61(117)
      acc61(118)=Qspvak2l3*acc61(106)
      acc61(119)=Qspvak2l4*acc61(112)
      acc61(118)=acc61(119)+acc61(26)+acc61(118)
      acc61(118)=Qspvak5k2*acc61(118)
      acc61(119)=Qspvak5k1*acc61(77)
      acc61(120)=Qspk1*acc61(74)
      acc61(119)=acc61(120)+acc61(49)+acc61(119)
      acc61(119)=Qspl3*acc61(119)
      acc61(120)=Qspvak5k1*acc61(80)
      acc61(121)=Qspk1*acc61(29)
      acc61(120)=acc61(121)+acc61(56)+acc61(120)
      acc61(120)=Qspk2*acc61(120)
      acc61(121)=Qspval3k2*acc61(32)
      acc61(122)=Qspvak5l4*acc61(79)
      acc61(123)=Qspk5*acc61(44)
      acc61(124)=Qspval4k2*acc61(89)
      acc61(125)=Qspvak5l3*acc61(82)
      acc61(126)=Qspl4*acc61(46)
      acc61(127)=Qspvak5k1*acc61(87)
      brack=acc61(9)+acc61(114)+acc61(115)+acc61(116)+acc61(117)+acc61(118)+acc&
      &61(119)+acc61(120)+acc61(121)+acc61(122)+acc61(123)+acc61(124)+acc61(125&
      &)+acc61(126)+acc61(127)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3-k4
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d61h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d61h3l1_qp
