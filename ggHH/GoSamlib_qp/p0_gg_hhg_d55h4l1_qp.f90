module p0_gg_hhg_d55h4l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d55h4l1.f90
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
      use p0_gg_hhg_abbrevd55h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc55(137)
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk5
      complex(ki) :: Qspl4
      complex(ki) :: Qspl3
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak5l4
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk5 = dotproduct(Q,k5)
      Qspl4 = dotproduct(Q,l4)
      Qspl3 = dotproduct(Q,l3)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      acc55(1)=abb55(9)
      acc55(2)=abb55(10)
      acc55(3)=abb55(11)
      acc55(4)=abb55(12)
      acc55(5)=abb55(13)
      acc55(6)=abb55(14)
      acc55(7)=abb55(15)
      acc55(8)=abb55(16)
      acc55(9)=abb55(17)
      acc55(10)=abb55(18)
      acc55(11)=abb55(19)
      acc55(12)=abb55(20)
      acc55(13)=abb55(21)
      acc55(14)=abb55(22)
      acc55(15)=abb55(23)
      acc55(16)=abb55(24)
      acc55(17)=abb55(25)
      acc55(18)=abb55(26)
      acc55(19)=abb55(27)
      acc55(20)=abb55(28)
      acc55(21)=abb55(29)
      acc55(22)=abb55(30)
      acc55(23)=abb55(31)
      acc55(24)=abb55(32)
      acc55(25)=abb55(33)
      acc55(26)=abb55(34)
      acc55(27)=abb55(35)
      acc55(28)=abb55(36)
      acc55(29)=abb55(37)
      acc55(30)=abb55(38)
      acc55(31)=abb55(39)
      acc55(32)=abb55(40)
      acc55(33)=abb55(41)
      acc55(34)=abb55(42)
      acc55(35)=abb55(43)
      acc55(36)=abb55(44)
      acc55(37)=abb55(45)
      acc55(38)=abb55(46)
      acc55(39)=abb55(47)
      acc55(40)=abb55(48)
      acc55(41)=abb55(49)
      acc55(42)=abb55(50)
      acc55(43)=abb55(51)
      acc55(44)=abb55(52)
      acc55(45)=abb55(53)
      acc55(46)=abb55(54)
      acc55(47)=abb55(55)
      acc55(48)=abb55(56)
      acc55(49)=abb55(57)
      acc55(50)=abb55(58)
      acc55(51)=abb55(60)
      acc55(52)=abb55(61)
      acc55(53)=abb55(62)
      acc55(54)=abb55(63)
      acc55(55)=abb55(64)
      acc55(56)=abb55(65)
      acc55(57)=abb55(67)
      acc55(58)=abb55(68)
      acc55(59)=abb55(69)
      acc55(60)=abb55(70)
      acc55(61)=abb55(71)
      acc55(62)=abb55(73)
      acc55(63)=abb55(74)
      acc55(64)=abb55(75)
      acc55(65)=abb55(76)
      acc55(66)=abb55(77)
      acc55(67)=abb55(79)
      acc55(68)=abb55(80)
      acc55(69)=abb55(83)
      acc55(70)=abb55(86)
      acc55(71)=abb55(87)
      acc55(72)=abb55(89)
      acc55(73)=abb55(90)
      acc55(74)=abb55(92)
      acc55(75)=abb55(94)
      acc55(76)=abb55(95)
      acc55(77)=abb55(96)
      acc55(78)=abb55(98)
      acc55(79)=abb55(100)
      acc55(80)=abb55(101)
      acc55(81)=abb55(102)
      acc55(82)=abb55(103)
      acc55(83)=abb55(104)
      acc55(84)=abb55(105)
      acc55(85)=abb55(106)
      acc55(86)=abb55(108)
      acc55(87)=abb55(110)
      acc55(88)=abb55(111)
      acc55(89)=abb55(112)
      acc55(90)=abb55(113)
      acc55(91)=abb55(114)
      acc55(92)=abb55(122)
      acc55(93)=abb55(123)
      acc55(94)=abb55(124)
      acc55(95)=abb55(125)
      acc55(96)=abb55(126)
      acc55(97)=abb55(127)
      acc55(98)=abb55(128)
      acc55(99)=abb55(129)
      acc55(100)=abb55(130)
      acc55(101)=abb55(132)
      acc55(102)=abb55(133)
      acc55(103)=abb55(136)
      acc55(104)=abb55(137)
      acc55(105)=abb55(142)
      acc55(106)=abb55(143)
      acc55(107)=abb55(147)
      acc55(108)=abb55(150)
      acc55(109)=abb55(151)
      acc55(110)=abb55(156)
      acc55(111)=abb55(157)
      acc55(112)=abb55(158)
      acc55(113)=abb55(159)
      acc55(114)=abb55(160)
      acc55(115)=abb55(161)
      acc55(116)=abb55(168)
      acc55(117)=abb55(169)
      acc55(118)=Qspvak5k1*acc55(43)
      acc55(119)=Qspk5*acc55(60)
      acc55(120)=Qspl4*acc55(83)
      acc55(121)=Qspl3*acc55(100)
      acc55(122)=Qspk1*acc55(80)
      acc55(123)=Qspvak2k5*acc55(13)
      acc55(124)=Qspk2*acc55(76)
      acc55(118)=acc55(124)+acc55(123)+acc55(122)+acc55(121)+acc55(120)+acc55(1&
      &19)+acc55(20)+acc55(118)
      acc55(118)=Qspk2*acc55(118)
      acc55(119)=Qspk5*acc55(57)
      acc55(120)=Qspl4*acc55(67)
      acc55(121)=Qspl3*acc55(51)
      acc55(122)=Qspk1*acc55(56)
      acc55(123)=Qspvak2k5*acc55(26)
      acc55(124)=Qspk2*acc55(52)
      acc55(125)=QspQ*acc55(66)
      acc55(119)=acc55(125)+acc55(124)+acc55(123)+acc55(122)+acc55(121)+acc55(1&
      &20)+acc55(19)+acc55(119)
      acc55(119)=QspQ*acc55(119)
      acc55(120)=Qspvak2k1*acc55(3)
      acc55(121)=Qspvak2l4*acc55(37)
      acc55(122)=-Qspval4k5*acc55(91)
      acc55(123)=Qspvak1k5*acc55(41)
      acc55(124)=Qspvak2k5*acc55(32)
      acc55(125)=Qspk2*acc55(70)
      acc55(120)=acc55(125)+acc55(124)+acc55(123)+acc55(122)+acc55(121)+acc55(7&
      &8)+acc55(120)
      acc55(120)=Qspvak5k2*acc55(120)
      acc55(121)=Qspvak5k1*acc55(35)
      acc55(122)=Qspvak5l3*acc55(18)
      acc55(123)=Qspval3k2*acc55(17)
      acc55(124)=Qspk1*acc55(15)
      acc55(121)=acc55(124)+acc55(123)+acc55(122)+acc55(2)+acc55(121)
      acc55(121)=Qspvak2k5*acc55(121)
      acc55(122)=Qspl3*acc55(46)
      acc55(123)=Qspvak2k5*acc55(5)
      acc55(124)=Qspk2*acc55(47)
      acc55(122)=acc55(124)+acc55(123)+acc55(25)+acc55(122)
      acc55(122)=Qspvak1k2*acc55(122)
      acc55(123)=-Qspvak5k1*acc55(59)
      acc55(124)=Qspk5*acc55(54)
      acc55(123)=acc55(124)+acc55(36)+acc55(123)
      acc55(123)=Qspl3*acc55(123)
      acc55(124)=Qspk5*acc55(71)
      acc55(125)=Qspl3*acc55(117)
      acc55(125)=acc55(125)+acc55(116)+acc55(124)
      acc55(125)=Qspk1*acc55(125)
      acc55(126)=Qspvak2k1*acc55(24)
      acc55(127)=Qspval4k2*acc55(89)
      acc55(128)=Qspvak2l3*acc55(6)
      acc55(129)=Qspval3k5*acc55(10)
      acc55(130)=Qspvak2l4*acc55(7)
      acc55(131)=Qspval4k5*acc55(84)
      acc55(132)=Qspvak5k1*acc55(30)
      acc55(133)=Qspvak1k5*acc55(39)
      acc55(134)=Qspvak5l3*acc55(40)
      acc55(135)=Qspvak5l4*acc55(69)
      acc55(136)=Qspval3k2*acc55(22)
      acc55(137)=Qspk5*acc55(8)
      acc55(124)=acc55(44)-acc55(124)
      acc55(124)=Qspl4*acc55(124)
      acc55(118)=acc55(122)+acc55(119)+acc55(120)+acc55(118)+acc55(121)+acc55(1&
      &25)+acc55(123)+acc55(124)+acc55(137)+acc55(136)+acc55(135)+acc55(134)+ac&
      &c55(133)+acc55(132)+acc55(131)+acc55(130)+acc55(129)+acc55(128)+acc55(12&
      &7)+acc55(14)+acc55(126)
      acc55(118)=Qspvak1k2*acc55(118)
      acc55(119)=Qspvak2l4*acc55(115)
      acc55(120)=Qspval4k5*acc55(99)
      acc55(121)=Qspvak1k5*acc55(96)
      acc55(122)=Qspl4*acc55(59)
      acc55(123)=Qspl3*acc55(1)
      acc55(124)=Qspk1*acc55(97)
      acc55(125)=Qspvak2k5*acc55(111)
      acc55(126)=Qspk2*acc55(94)
      acc55(119)=acc55(126)+acc55(125)+acc55(124)+acc55(123)+acc55(122)+acc55(1&
      &21)+acc55(120)+acc55(53)+acc55(119)
      acc55(119)=Qspvak5k2*acc55(119)
      acc55(120)=Qspk1-Qspl4
      acc55(120)=acc55(55)*acc55(120)
      acc55(121)=Qspvak2l3*acc55(28)
      acc55(122)=Qspval3k5*acc55(104)
      acc55(123)=Qspvak5l3*acc55(11)
      acc55(124)=Qspval3k2*acc55(50)
      acc55(125)=Qspk5*acc55(34)
      acc55(126)=Qspl3*acc55(81)
      acc55(127)=Qspval3k2*acc55(103)
      acc55(127)=acc55(65)+acc55(127)
      acc55(127)=Qspvak2k5*acc55(127)
      acc55(128)=Qspk2*acc55(85)
      acc55(129)=Qspvak5k2*acc55(92)
      acc55(129)=acc55(29)+acc55(129)
      acc55(129)=QspQ*acc55(129)
      acc55(119)=acc55(129)+acc55(119)+acc55(128)+acc55(127)+acc55(126)+acc55(1&
      &25)+acc55(124)+acc55(123)+acc55(122)+acc55(4)+acc55(121)+acc55(120)
      acc55(119)=QspQ*acc55(119)
      acc55(120)=Qspvak2l4*acc55(114)
      acc55(121)=Qspval4k5*acc55(98)
      acc55(122)=Qspvak1k5*acc55(49)
      acc55(123)=Qspl4*acc55(33)
      acc55(124)=Qspl3*acc55(75)
      acc55(125)=Qspl3*acc55(93)
      acc55(125)=acc55(63)+acc55(125)
      acc55(125)=Qspk1*acc55(125)
      acc55(126)=Qspk1*acc55(110)
      acc55(126)=acc55(74)+acc55(126)
      acc55(126)=Qspvak2k5*acc55(126)
      acc55(127)=Qspk1*acc55(95)
      acc55(127)=acc55(38)+acc55(127)
      acc55(127)=Qspk2*acc55(127)
      acc55(120)=acc55(127)+acc55(126)+acc55(125)+acc55(124)+acc55(123)+acc55(1&
      &22)+acc55(121)+acc55(23)+acc55(120)
      acc55(120)=Qspvak5k2*acc55(120)
      acc55(121)=Qspvak5l4*acc55(88)
      acc55(122)=Qspk5*acc55(12)
      acc55(123)=Qspl4*acc55(73)
      acc55(124)=Qspl3*acc55(68)
      acc55(125)=Qspk1*acc55(82)
      acc55(126)=Qspvak2k5*acc55(108)
      acc55(127)=Qspk2*acc55(42)
      acc55(121)=acc55(127)+acc55(126)+acc55(125)+acc55(124)+acc55(123)+acc55(1&
      &22)+acc55(9)+acc55(121)
      acc55(121)=Qspk2*acc55(121)
      acc55(122)=Qspvak5l3*acc55(61)
      acc55(123)=Qspvak5l4*acc55(72)
      acc55(124)=Qspval3k2*acc55(112)
      acc55(125)=Qspl4*acc55(107)
      acc55(126)=Qspval3k2*acc55(113)
      acc55(126)=acc55(109)+acc55(126)
      acc55(126)=Qspk1*acc55(126)
      acc55(122)=acc55(126)+acc55(125)+acc55(124)+acc55(123)+acc55(48)+acc55(12&
      &2)
      acc55(122)=Qspvak2k5*acc55(122)
      acc55(123)=Qspvak5l4*acc55(87)
      acc55(124)=Qspk5*acc55(62)
      acc55(125)=Qspl4*acc55(64)
      acc55(123)=acc55(125)+acc55(124)+acc55(58)+acc55(123)
      acc55(123)=Qspl3*acc55(123)
      acc55(124)=Qspval3k2*acc55(106)
      acc55(125)=Qspl3*acc55(79)
      acc55(124)=acc55(125)+acc55(77)+acc55(124)
      acc55(124)=Qspk1*acc55(124)
      acc55(125)=Qspval4k2*acc55(101)
      acc55(126)=Qspvak2l3*acc55(27)
      acc55(127)=Qspval3k5*acc55(102)
      acc55(128)=Qspvak1k5*acc55(31)
      acc55(129)=Qspvak5l3*acc55(90)
      acc55(130)=Qspvak5l4*acc55(86)
      acc55(131)=Qspval3k2*acc55(105)
      acc55(132)=Qspk5*acc55(21)
      acc55(133)=Qspl4*acc55(45)
      brack=acc55(16)+acc55(118)+acc55(119)+acc55(120)+acc55(121)+acc55(122)+ac&
      &c55(123)+acc55(124)+acc55(125)+acc55(126)+acc55(127)+acc55(128)+acc55(12&
      &9)+acc55(130)+acc55(131)+acc55(132)+acc55(133)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h4_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d55
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d55 = 0.0_ki
      d55 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d55, ki), aimag(d55), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d55h4l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d55
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d55 = 0.0_ki
      d55 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d55, ki), aimag(d55), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d55h4l1_qp
