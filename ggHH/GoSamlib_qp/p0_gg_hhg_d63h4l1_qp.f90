module p0_gg_hhg_d63h4l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d63h4l1.f90
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
      use p0_gg_hhg_abbrevd63h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc63(120)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspk1
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspvak5k1
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspk1 = dotproduct(Q,k1)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      acc63(1)=abb63(7)
      acc63(2)=abb63(8)
      acc63(3)=abb63(9)
      acc63(4)=abb63(10)
      acc63(5)=abb63(11)
      acc63(6)=abb63(12)
      acc63(7)=abb63(13)
      acc63(8)=abb63(14)
      acc63(9)=abb63(15)
      acc63(10)=abb63(16)
      acc63(11)=abb63(17)
      acc63(12)=abb63(18)
      acc63(13)=abb63(19)
      acc63(14)=abb63(20)
      acc63(15)=abb63(21)
      acc63(16)=abb63(22)
      acc63(17)=abb63(23)
      acc63(18)=abb63(24)
      acc63(19)=abb63(25)
      acc63(20)=abb63(26)
      acc63(21)=abb63(27)
      acc63(22)=abb63(28)
      acc63(23)=abb63(29)
      acc63(24)=abb63(30)
      acc63(25)=abb63(31)
      acc63(26)=abb63(32)
      acc63(27)=abb63(33)
      acc63(28)=abb63(34)
      acc63(29)=abb63(36)
      acc63(30)=abb63(37)
      acc63(31)=abb63(38)
      acc63(32)=abb63(39)
      acc63(33)=abb63(40)
      acc63(34)=abb63(41)
      acc63(35)=abb63(42)
      acc63(36)=abb63(43)
      acc63(37)=abb63(44)
      acc63(38)=abb63(45)
      acc63(39)=abb63(46)
      acc63(40)=abb63(47)
      acc63(41)=abb63(48)
      acc63(42)=abb63(49)
      acc63(43)=abb63(50)
      acc63(44)=abb63(51)
      acc63(45)=abb63(52)
      acc63(46)=abb63(53)
      acc63(47)=abb63(54)
      acc63(48)=abb63(55)
      acc63(49)=abb63(56)
      acc63(50)=abb63(58)
      acc63(51)=abb63(59)
      acc63(52)=abb63(60)
      acc63(53)=abb63(61)
      acc63(54)=abb63(63)
      acc63(55)=abb63(64)
      acc63(56)=abb63(65)
      acc63(57)=abb63(66)
      acc63(58)=abb63(67)
      acc63(59)=abb63(68)
      acc63(60)=abb63(69)
      acc63(61)=abb63(70)
      acc63(62)=abb63(71)
      acc63(63)=abb63(72)
      acc63(64)=abb63(74)
      acc63(65)=abb63(75)
      acc63(66)=abb63(77)
      acc63(67)=abb63(78)
      acc63(68)=abb63(79)
      acc63(69)=abb63(80)
      acc63(70)=abb63(83)
      acc63(71)=abb63(85)
      acc63(72)=abb63(88)
      acc63(73)=abb63(90)
      acc63(74)=abb63(91)
      acc63(75)=abb63(92)
      acc63(76)=abb63(93)
      acc63(77)=abb63(96)
      acc63(78)=abb63(98)
      acc63(79)=abb63(100)
      acc63(80)=abb63(101)
      acc63(81)=abb63(102)
      acc63(82)=abb63(103)
      acc63(83)=abb63(106)
      acc63(84)=abb63(107)
      acc63(85)=abb63(109)
      acc63(86)=abb63(110)
      acc63(87)=abb63(111)
      acc63(88)=abb63(112)
      acc63(89)=abb63(115)
      acc63(90)=abb63(116)
      acc63(91)=abb63(117)
      acc63(92)=abb63(118)
      acc63(93)=abb63(120)
      acc63(94)=abb63(121)
      acc63(95)=abb63(122)
      acc63(96)=abb63(124)
      acc63(97)=abb63(129)
      acc63(98)=abb63(130)
      acc63(99)=abb63(131)
      acc63(100)=abb63(133)
      acc63(101)=abb63(135)
      acc63(102)=abb63(137)
      acc63(103)=abb63(140)
      acc63(104)=abb63(142)
      acc63(105)=abb63(143)
      acc63(106)=abb63(144)
      acc63(107)=abb63(145)
      acc63(108)=abb63(147)
      acc63(109)=Qspvak1k5*acc63(103)
      acc63(110)=Qspvak1l4*acc63(108)
      acc63(111)=Qspk1*acc63(80)
      acc63(112)=Qspk5*acc63(81)
      acc63(113)=Qspval4k2*acc63(92)
      acc63(114)=Qspl4*acc63(84)
      acc63(115)=Qspvak2k5*acc63(98)
      acc63(116)=QspQ*acc63(79)
      acc63(117)=Qspk2*acc63(83)
      acc63(109)=acc63(117)+acc63(116)+acc63(115)+acc63(114)+acc63(113)+acc63(1&
      &12)+acc63(111)+acc63(110)+acc63(57)+acc63(109)
      acc63(109)=Qspk2*acc63(109)
      acc63(110)=Qspvak1k5*acc63(104)
      acc63(111)=Qspvak1l4*acc63(66)
      acc63(112)=Qspk5*acc63(86)
      acc63(113)=Qspval4k2*acc63(94)
      acc63(114)=Qspl4*acc63(88)
      acc63(115)=Qspvak2k5*acc63(61)
      acc63(116)=QspQ*acc63(87)
      acc63(110)=acc63(116)+acc63(115)+acc63(114)+acc63(113)+acc63(112)+acc63(1&
      &11)+acc63(14)+acc63(110)
      acc63(110)=QspQ*acc63(110)
      acc63(111)=Qspvak1k5*acc63(102)
      acc63(112)=Qspvak1l4*acc63(85)
      acc63(113)=Qspk1*acc63(41)
      acc63(114)=Qspk5*acc63(77)
      acc63(115)=Qspval4k2*acc63(71)
      acc63(111)=acc63(115)+acc63(114)+acc63(113)+acc63(112)+acc63(76)+acc63(11&
      &1)
      acc63(111)=Qspl4*acc63(111)
      acc63(112)=Qspvak1k5*acc63(105)
      acc63(113)=Qspvak1l4*acc63(107)
      acc63(114)=Qspk5*acc63(97)
      acc63(115)=Qspval4k2*acc63(90)
      acc63(112)=acc63(115)+acc63(114)+acc63(113)+acc63(19)+acc63(112)
      acc63(112)=Qspvak2k5*acc63(112)
      acc63(113)=Qspl4*acc63(56)
      acc63(114)=Qspvak2k5*acc63(2)
      acc63(115)=-QspQ*acc63(50)
      acc63(116)=Qspk2*acc63(54)
      acc63(113)=acc63(116)+acc63(115)+acc63(114)+acc63(53)+acc63(113)
      acc63(113)=Qspvak1k2*acc63(113)
      acc63(114)=Qspvak1k5*acc63(48)
      acc63(115)=Qspvak1l4*acc63(30)
      acc63(116)=Qspk1*acc63(73)
      acc63(117)=Qspk5*acc63(70)
      acc63(118)=Qspval4k2*acc63(67)
      acc63(119)=Qspvak2k5*acc63(72)
      acc63(119)=acc63(69)+acc63(119)
      acc63(119)=Qspvak5k2*acc63(119)
      acc63(109)=acc63(119)+acc63(113)+acc63(109)+acc63(110)+acc63(112)+acc63(1&
      &11)+acc63(118)+acc63(117)+acc63(116)+acc63(115)+acc63(22)+acc63(114)
      acc63(109)=Qspvak5k2*acc63(109)
      acc63(110)=Qspvak5l4*acc63(24)
      acc63(111)=Qspk1*acc63(18)
      acc63(112)=Qspk5*acc63(21)
      acc63(113)=Qspval4k2*acc63(52)
      acc63(114)=Qspl4*acc63(37)
      acc63(115)=Qspvak2k5*acc63(59)
      acc63(116)=QspQ*acc63(25)
      acc63(117)=Qspk2*acc63(43)
      acc63(110)=acc63(117)+acc63(116)+acc63(115)+acc63(114)+acc63(113)+acc63(1&
      &12)+acc63(111)+acc63(5)+acc63(110)
      acc63(110)=Qspk2*acc63(110)
      acc63(111)=Qspvak5l4*acc63(40)
      acc63(112)=Qspk1*acc63(27)
      acc63(113)=Qspk5*acc63(7)
      acc63(114)=Qspval4k2*acc63(32)
      acc63(115)=Qspl4*acc63(23)
      acc63(116)=Qspvak2k5*acc63(16)
      acc63(117)=QspQ*acc63(44)
      acc63(111)=acc63(117)+acc63(116)+acc63(115)+acc63(114)+acc63(113)+acc63(1&
      &12)+acc63(4)+acc63(111)
      acc63(111)=QspQ*acc63(111)
      acc63(112)=Qspvak5l4*acc63(39)
      acc63(113)=Qspk1*acc63(45)
      acc63(114)=Qspk5*acc63(74)
      acc63(115)=Qspval4k2*acc63(68)
      acc63(112)=acc63(115)+acc63(114)+acc63(113)+acc63(20)+acc63(112)
      acc63(112)=Qspl4*acc63(112)
      acc63(113)=Qspk5-Qspk1
      acc63(114)=acc63(62)*acc63(113)
      acc63(115)=Qspval4k2*acc63(11)
      acc63(114)=acc63(115)+acc63(55)+acc63(114)
      acc63(114)=Qspvak2k5*acc63(114)
      acc63(115)=acc63(9)*Qspvak5k1
      acc63(116)=Qspvak5l4*acc63(46)
      acc63(117)=Qspk1*acc63(6)
      acc63(118)=Qspk5*acc63(3)
      acc63(119)=Qspval4k2*acc63(63)
      acc63(120)=Qspvak1k2*acc63(1)
      acc63(110)=acc63(120)+acc63(110)+acc63(111)+acc63(114)+acc63(112)+acc63(1&
      &19)+acc63(118)+acc63(117)+acc63(116)+acc63(13)+acc63(115)
      acc63(110)=Qspvak1k2*acc63(110)
      acc63(111)=Qspvak1k5*acc63(95)
      acc63(112)=Qspvak1l4*acc63(26)
      acc63(114)=Qspk1*acc63(34)
      acc63(115)=Qspk5*acc63(58)
      acc63(116)=Qspval4k2*acc63(51)
      acc63(117)=Qspl4*acc63(60)
      acc63(118)=Qspvak2k5*acc63(101)
      acc63(119)=QspQ*acc63(47)
      acc63(120)=Qspk2*acc63(31)
      acc63(111)=acc63(120)+acc63(119)+acc63(118)+acc63(117)+acc63(116)+acc63(1&
      &15)+acc63(114)+acc63(112)+acc63(38)+acc63(111)
      acc63(111)=Qspk2*acc63(111)
      acc63(112)=Qspk1*acc63(49)
      acc63(114)=Qspk5*acc63(64)
      acc63(115)=Qspval4k2*acc63(89)
      acc63(116)=Qspl4*acc63(65)
      acc63(117)=Qspvak2k5*acc63(96)
      acc63(118)=QspQ*acc63(8)
      acc63(112)=acc63(118)+acc63(117)+acc63(116)+acc63(115)+acc63(114)+acc63(1&
      &0)+acc63(112)
      acc63(112)=QspQ*acc63(112)
      acc63(114)=-acc63(42)*acc63(113)
      acc63(115)=Qspvak1k5*acc63(93)
      acc63(116)=Qspvak1l4*acc63(99)
      acc63(117)=Qspval4k2*acc63(35)
      acc63(114)=acc63(117)+acc63(116)+acc63(12)+acc63(115)+acc63(114)
      acc63(114)=Qspl4*acc63(114)
      acc63(115)=acc63(100)*acc63(113)
      acc63(116)=Qspvak1l4*acc63(17)
      acc63(117)=-acc63(78)*acc63(113)
      acc63(117)=acc63(75)+acc63(117)
      acc63(117)=Qspval4k2*acc63(117)
      acc63(115)=acc63(117)+acc63(29)+acc63(116)+acc63(115)
      acc63(115)=Qspvak2k5*acc63(115)
      acc63(116)=Qspvak1k5*acc63(82)
      acc63(117)=Qspvak1l4*acc63(106)
      acc63(118)=Qspk1*acc63(33)
      acc63(119)=Qspk5*acc63(36)
      acc63(113)=-acc63(91)*acc63(113)
      acc63(113)=acc63(28)+acc63(113)
      acc63(113)=Qspval4k2*acc63(113)
      brack=acc63(15)+acc63(109)+acc63(110)+acc63(111)+acc63(112)+acc63(113)+ac&
      &c63(114)+acc63(115)+acc63(116)+acc63(117)+acc63(118)+acc63(119)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h4_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2-k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d63h4l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d63h4l1_qp
