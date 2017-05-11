module p0_gg_hhg_d49h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d49h3l1.f90
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
      use p0_gg_hhg_abbrevd49h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc49(95)
      complex(ki) :: Qspk5
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspval4k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k2
      Qspk5 = dotproduct(Q,k5)
      Qspl4 = dotproduct(Q,l4)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      QspQ = dotproduct(Q,Q)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc49(1)=abb49(7)
      acc49(2)=abb49(8)
      acc49(3)=abb49(9)
      acc49(4)=abb49(10)
      acc49(5)=abb49(11)
      acc49(6)=abb49(12)
      acc49(7)=abb49(13)
      acc49(8)=abb49(14)
      acc49(9)=abb49(15)
      acc49(10)=abb49(16)
      acc49(11)=abb49(17)
      acc49(12)=abb49(18)
      acc49(13)=abb49(19)
      acc49(14)=abb49(20)
      acc49(15)=abb49(21)
      acc49(16)=abb49(22)
      acc49(17)=abb49(23)
      acc49(18)=abb49(24)
      acc49(19)=abb49(25)
      acc49(20)=abb49(26)
      acc49(21)=abb49(27)
      acc49(22)=abb49(28)
      acc49(23)=abb49(29)
      acc49(24)=abb49(30)
      acc49(25)=abb49(31)
      acc49(26)=abb49(32)
      acc49(27)=abb49(33)
      acc49(28)=abb49(34)
      acc49(29)=abb49(35)
      acc49(30)=abb49(36)
      acc49(31)=abb49(37)
      acc49(32)=abb49(38)
      acc49(33)=abb49(39)
      acc49(34)=abb49(40)
      acc49(35)=abb49(41)
      acc49(36)=abb49(42)
      acc49(37)=abb49(43)
      acc49(38)=abb49(45)
      acc49(39)=abb49(46)
      acc49(40)=abb49(47)
      acc49(41)=abb49(49)
      acc49(42)=abb49(50)
      acc49(43)=abb49(51)
      acc49(44)=abb49(53)
      acc49(45)=abb49(54)
      acc49(46)=abb49(55)
      acc49(47)=abb49(56)
      acc49(48)=abb49(58)
      acc49(49)=abb49(59)
      acc49(50)=abb49(61)
      acc49(51)=abb49(62)
      acc49(52)=abb49(63)
      acc49(53)=abb49(64)
      acc49(54)=abb49(65)
      acc49(55)=abb49(66)
      acc49(56)=abb49(68)
      acc49(57)=abb49(69)
      acc49(58)=abb49(70)
      acc49(59)=abb49(75)
      acc49(60)=abb49(78)
      acc49(61)=abb49(79)
      acc49(62)=abb49(80)
      acc49(63)=abb49(81)
      acc49(64)=abb49(82)
      acc49(65)=abb49(83)
      acc49(66)=abb49(84)
      acc49(67)=abb49(86)
      acc49(68)=abb49(87)
      acc49(69)=abb49(88)
      acc49(70)=abb49(89)
      acc49(71)=abb49(90)
      acc49(72)=abb49(91)
      acc49(73)=abb49(92)
      acc49(74)=abb49(93)
      acc49(75)=abb49(97)
      acc49(76)=abb49(99)
      acc49(77)=abb49(100)
      acc49(78)=abb49(101)
      acc49(79)=abb49(102)
      acc49(80)=abb49(103)
      acc49(81)=abb49(104)
      acc49(82)=abb49(105)
      acc49(83)=abb49(106)
      acc49(84)=abb49(107)
      acc49(85)=Qspk5+Qspl4
      acc49(85)=acc49(69)*acc49(85)
      acc49(86)=Qspvak5k1*acc49(78)
      acc49(87)=Qspk1*acc49(7)
      acc49(88)=Qspk2*acc49(72)
      acc49(85)=acc49(88)+acc49(87)+acc49(86)+acc49(50)+acc49(85)
      acc49(85)=Qspvak2k5*acc49(85)
      acc49(86)=-Qspvak2l4*acc49(81)
      acc49(87)=Qspvak2k5*acc49(75)
      acc49(86)=acc49(87)+acc49(61)+acc49(86)
      acc49(86)=Qspvak5k2*acc49(86)
      acc49(87)=Qspval4k5*acc49(70)
      acc49(88)=Qspvak2l4*acc49(79)
      acc49(89)=Qspl4*acc49(62)
      acc49(90)=Qspvak5k1*acc49(68)
      acc49(91)=Qspk5*acc49(60)
      acc49(92)=Qspk1*acc49(55)
      acc49(93)=Qspk2*acc49(36)
      acc49(94)=Qspvak2k5*acc49(8)
      acc49(94)=acc49(19)+acc49(94)
      acc49(94)=QspQ*acc49(94)
      acc49(85)=acc49(94)+acc49(86)+acc49(85)+acc49(93)+acc49(92)+acc49(91)+acc&
      &49(90)+acc49(89)+acc49(88)+acc49(11)+acc49(87)
      acc49(85)=QspQ*acc49(85)
      acc49(86)=Qspk1-Qspl4
      acc49(86)=acc49(26)*acc49(86)
      acc49(87)=Qspk2*acc49(49)
      acc49(86)=acc49(87)+acc49(23)+acc49(86)
      acc49(86)=Qspvak2k5*acc49(86)
      acc49(87)=acc49(21)*Qspvak1k5
      acc49(88)=Qspval4k5*acc49(29)
      acc49(89)=Qspvak2l4*acc49(6)
      acc49(90)=Qspl4*acc49(42)
      acc49(91)=Qspk5*acc49(28)
      acc49(92)=Qspk1*acc49(44)
      acc49(93)=Qspk2*acc49(20)
      acc49(94)=Qspvak2k1*acc49(3)
      acc49(86)=acc49(94)+acc49(86)+acc49(93)+acc49(92)+acc49(91)+acc49(90)+acc&
      &49(89)+acc49(88)+acc49(87)+acc49(2)
      acc49(86)=Qspvak5k2*acc49(86)
      acc49(87)=Qspl4*acc49(24)
      acc49(88)=Qspvak5k1*acc49(46)
      acc49(89)=Qspk5*acc49(16)
      acc49(90)=Qspk1*acc49(77)
      acc49(91)=Qspk2*acc49(25)
      acc49(92)=Qspvak2k5*acc49(22)
      acc49(92)=acc49(18)+acc49(92)
      acc49(92)=Qspvak5k2*acc49(92)
      acc49(93)=QspQ*acc49(27)
      acc49(87)=acc49(93)+acc49(92)+acc49(91)+acc49(90)+acc49(89)+acc49(88)+acc&
      &49(4)+acc49(87)
      acc49(87)=QspQ*acc49(87)
      acc49(88)=Qspvak1k2*acc49(5)
      acc49(89)=Qspvak5k1*acc49(48)
      acc49(88)=acc49(88)-acc49(89)
      acc49(89)=Qspl4*acc49(53)
      acc49(90)=Qspk5*acc49(52)
      acc49(91)=Qspk1*acc49(59)
      acc49(92)=Qspk2*acc49(84)
      acc49(89)=acc49(92)+acc49(91)+acc49(90)+acc49(89)+acc49(10)-acc49(88)
      acc49(89)=Qspk2*acc49(89)
      acc49(90)=Qspk2-Qspk5
      acc49(90)=acc49(17)*acc49(90)
      acc49(91)=Qspvak1k2*acc49(34)
      acc49(92)=Qspvak5k1*acc49(54)
      acc49(90)=acc49(92)+acc49(33)+acc49(91)+acc49(90)
      acc49(90)=Qspvak2k5*acc49(90)
      acc49(91)=Qspk5*acc49(45)
      acc49(88)=acc49(91)+acc49(43)+acc49(88)
      acc49(88)=Qspk5*acc49(88)
      acc49(91)=Qspvak1k2*acc49(37)
      acc49(92)=Qspvak2l4*acc49(56)
      acc49(93)=Qspl4*acc49(58)
      acc49(94)=Qspvak5k1*acc49(9)
      acc49(95)=Qspk5*acc49(32)
      acc49(95)=acc49(30)+acc49(95)
      acc49(95)=Qspk1*acc49(95)
      acc49(86)=acc49(87)+acc49(90)+acc49(89)+acc49(95)+acc49(88)+acc49(94)+acc&
      &49(93)+acc49(92)+acc49(13)+acc49(91)+acc49(86)
      acc49(86)=Qspvak2k1*acc49(86)
      acc49(87)=Qspvak2l4*acc49(82)
      acc49(88)=-Qspl4*acc49(1)
      acc49(89)=Qspk5*acc49(64)
      acc49(90)=Qspvak2l4*acc49(83)
      acc49(90)=acc49(66)+acc49(90)
      acc49(90)=Qspk1*acc49(90)
      acc49(91)=Qspk2*acc49(65)
      acc49(92)=Qspk1*acc49(38)
      acc49(92)=acc49(15)+acc49(92)
      acc49(92)=Qspvak2k5*acc49(92)
      acc49(87)=acc49(92)+acc49(91)+acc49(90)+acc49(89)+acc49(88)+acc49(63)+acc&
      &49(87)
      acc49(87)=Qspvak5k2*acc49(87)
      acc49(88)=-Qspvak5k1*acc49(77)
      acc49(89)=Qspk5*acc49(74)
      acc49(88)=acc49(89)+acc49(51)+acc49(88)
      acc49(88)=Qspk1*acc49(88)
      acc49(89)=-Qspl4*acc49(39)
      acc49(90)=Qspvak5k1*acc49(76)
      acc49(91)=Qspk2*acc49(73)
      acc49(88)=acc49(91)+acc49(88)+acc49(90)+acc49(14)+acc49(89)
      acc49(88)=Qspvak2k5*acc49(88)
      acc49(89)=Qspval4k5*acc49(71)
      acc49(90)=Qspvak2l4*acc49(80)
      acc49(91)=Qspl4*acc49(41)
      acc49(92)=Qspvak5k1*acc49(67)
      acc49(93)=Qspk5*acc49(31)
      acc49(94)=Qspvak2l4*acc49(40)
      acc49(94)=acc49(47)+acc49(94)
      acc49(94)=Qspk1*acc49(94)
      acc49(95)=Qspk1*acc49(57)
      acc49(95)=acc49(35)+acc49(95)
      acc49(95)=Qspk2*acc49(95)
      brack=acc49(12)+acc49(85)+acc49(86)+acc49(87)+acc49(88)+acc49(89)+acc49(9&
      &0)+acc49(91)+acc49(92)+acc49(93)+acc49(94)+acc49(95)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd49h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d49h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd49h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d49h3l1_qp
