module p0_gg_hhg_d45h4l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d45h4l1.f90
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
      use p0_gg_hhg_abbrevd45h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc45(97)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspk5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k1
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspl3 = dotproduct(Q,l3)
      Qspk5 = dotproduct(Q,k5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      QspQ = dotproduct(Q,Q)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc45(1)=abb45(7)
      acc45(2)=abb45(8)
      acc45(3)=abb45(9)
      acc45(4)=abb45(10)
      acc45(5)=abb45(11)
      acc45(6)=abb45(12)
      acc45(7)=abb45(13)
      acc45(8)=abb45(14)
      acc45(9)=abb45(15)
      acc45(10)=abb45(16)
      acc45(11)=abb45(17)
      acc45(12)=abb45(18)
      acc45(13)=abb45(19)
      acc45(14)=abb45(20)
      acc45(15)=abb45(21)
      acc45(16)=abb45(22)
      acc45(17)=abb45(23)
      acc45(18)=abb45(24)
      acc45(19)=abb45(25)
      acc45(20)=abb45(26)
      acc45(21)=abb45(28)
      acc45(22)=abb45(29)
      acc45(23)=abb45(30)
      acc45(24)=abb45(31)
      acc45(25)=abb45(32)
      acc45(26)=abb45(33)
      acc45(27)=abb45(34)
      acc45(28)=abb45(35)
      acc45(29)=abb45(36)
      acc45(30)=abb45(37)
      acc45(31)=abb45(38)
      acc45(32)=abb45(39)
      acc45(33)=abb45(40)
      acc45(34)=abb45(41)
      acc45(35)=abb45(42)
      acc45(36)=abb45(43)
      acc45(37)=abb45(44)
      acc45(38)=abb45(45)
      acc45(39)=abb45(46)
      acc45(40)=abb45(47)
      acc45(41)=abb45(48)
      acc45(42)=abb45(49)
      acc45(43)=abb45(50)
      acc45(44)=abb45(51)
      acc45(45)=abb45(53)
      acc45(46)=abb45(54)
      acc45(47)=abb45(55)
      acc45(48)=abb45(56)
      acc45(49)=abb45(58)
      acc45(50)=abb45(59)
      acc45(51)=abb45(60)
      acc45(52)=abb45(61)
      acc45(53)=abb45(62)
      acc45(54)=abb45(63)
      acc45(55)=abb45(64)
      acc45(56)=abb45(65)
      acc45(57)=abb45(66)
      acc45(58)=abb45(67)
      acc45(59)=abb45(68)
      acc45(60)=abb45(69)
      acc45(61)=abb45(70)
      acc45(62)=abb45(75)
      acc45(63)=abb45(78)
      acc45(64)=abb45(79)
      acc45(65)=abb45(80)
      acc45(66)=abb45(81)
      acc45(67)=abb45(82)
      acc45(68)=abb45(83)
      acc45(69)=abb45(84)
      acc45(70)=abb45(85)
      acc45(71)=abb45(86)
      acc45(72)=abb45(88)
      acc45(73)=abb45(89)
      acc45(74)=abb45(92)
      acc45(75)=abb45(94)
      acc45(76)=abb45(95)
      acc45(77)=abb45(96)
      acc45(78)=abb45(100)
      acc45(79)=abb45(101)
      acc45(80)=abb45(102)
      acc45(81)=abb45(103)
      acc45(82)=abb45(104)
      acc45(83)=abb45(105)
      acc45(84)=abb45(106)
      acc45(85)=abb45(107)
      acc45(86)=abb45(108)
      acc45(87)=Qspvak1k5*acc45(85)
      acc45(88)=Qspl3*acc45(65)
      acc45(89)=Qspk5*acc45(35)
      acc45(90)=Qspk1*acc45(70)
      acc45(91)=Qspk2*acc45(67)
      acc45(92)=Qspvak2k5*acc45(7)
      acc45(87)=acc45(92)+acc45(91)+acc45(90)+acc45(89)+acc45(88)+acc45(52)+acc&
      &45(87)
      acc45(87)=Qspvak5k2*acc45(87)
      acc45(88)=Qspvak5l3*acc45(28)
      acc45(89)=Qspval3k2*acc45(72)
      acc45(90)=Qspvak1k5*acc45(82)
      acc45(91)=Qspl3*acc45(66)
      acc45(92)=Qspk5*acc45(63)
      acc45(93)=Qspk1*acc45(57)
      acc45(94)=Qspk2*acc45(59)
      acc45(95)=-Qspval3k2*acc45(78)
      acc45(95)=acc45(74)+acc45(95)
      acc45(95)=Qspvak2k5*acc45(95)
      acc45(96)=Qspvak5k2*acc45(8)
      acc45(96)=acc45(19)+acc45(96)
      acc45(96)=QspQ*acc45(96)
      acc45(87)=acc45(96)+acc45(87)+acc45(95)+acc45(94)+acc45(93)+acc45(92)+acc&
      &45(91)+acc45(90)+acc45(89)+acc45(11)+acc45(88)
      acc45(87)=QspQ*acc45(87)
      acc45(88)=acc45(27)*Qspvak5k1
      acc45(89)=Qspvak5l3*acc45(38)
      acc45(90)=Qspval3k2*acc45(6)
      acc45(91)=Qspl3*acc45(47)
      acc45(92)=Qspk5*acc45(45)
      acc45(93)=Qspk1*acc45(49)
      acc45(94)=Qspk2*acc45(9)
      acc45(95)=Qspvak1k2*acc45(3)
      acc45(88)=acc45(95)+acc45(94)+acc45(93)+acc45(92)+acc45(91)+acc45(90)+acc&
      &45(89)+acc45(88)+acc45(2)
      acc45(88)=Qspvak2k5*acc45(88)
      acc45(89)=Qspvak5k2*acc45(21)
      acc45(89)=acc45(89)+acc45(18)
      acc45(89)=Qspvak2k5*acc45(89)
      acc45(90)=Qspvak2k1*acc45(5)
      acc45(91)=Qspl3*acc45(23)
      acc45(92)=Qspk5*acc45(16)
      acc45(93)=Qspk1*acc45(43)
      acc45(94)=Qspk2*acc45(24)
      acc45(95)=QspQ*acc45(26)
      acc45(89)=acc45(95)+acc45(94)+acc45(93)+acc45(92)+acc45(91)+acc45(4)+acc4&
      &5(90)+acc45(89)
      acc45(89)=QspQ*acc45(89)
      acc45(90)=Qspvak2k1*acc45(41)
      acc45(91)=Qspvak1k5*acc45(51)
      acc45(90)=acc45(90)-acc45(91)
      acc45(91)=Qspl3*acc45(55)
      acc45(92)=Qspk5*acc45(54)
      acc45(93)=Qspk1*acc45(62)
      acc45(94)=Qspk2*acc45(86)
      acc45(91)=acc45(94)+acc45(93)+acc45(92)+acc45(91)+acc45(10)-acc45(90)
      acc45(91)=Qspk2*acc45(91)
      acc45(92)=Qspk1-Qspl3
      acc45(92)=acc45(25)*acc45(92)
      acc45(93)=Qspk2*acc45(56)
      acc45(92)=acc45(93)+acc45(22)+acc45(92)
      acc45(92)=Qspvak2k5*acc45(92)
      acc45(93)=Qspk2-Qspk5
      acc45(93)=acc45(17)*acc45(93)
      acc45(94)=Qspvak2k1*acc45(33)
      acc45(95)=Qspvak1k5*acc45(58)
      acc45(92)=acc45(92)+acc45(95)+acc45(32)+acc45(94)+acc45(93)
      acc45(92)=Qspvak5k2*acc45(92)
      acc45(93)=Qspk5*acc45(46)
      acc45(90)=acc45(93)+acc45(44)+acc45(90)
      acc45(90)=Qspk5*acc45(90)
      acc45(93)=Qspvak2k1*acc45(36)
      acc45(94)=Qspval3k2*acc45(50)
      acc45(95)=Qspvak1k5*acc45(20)
      acc45(96)=Qspl3*acc45(61)
      acc45(97)=Qspk5*acc45(31)
      acc45(97)=acc45(29)+acc45(97)
      acc45(97)=Qspk1*acc45(97)
      acc45(88)=acc45(89)+acc45(92)+acc45(91)+acc45(97)+acc45(90)+acc45(96)+acc&
      &45(95)+acc45(94)+acc45(13)+acc45(93)+acc45(88)
      acc45(88)=Qspvak1k2*acc45(88)
      acc45(89)=Qspval3k2*acc45(79)
      acc45(90)=-Qspl3*acc45(1)
      acc45(91)=Qspk5*acc45(75)
      acc45(92)=Qspval3k2*acc45(80)
      acc45(92)=acc45(77)+acc45(92)
      acc45(92)=Qspk1*acc45(92)
      acc45(93)=Qspk2*acc45(76)
      acc45(89)=acc45(93)+acc45(92)+acc45(91)+acc45(90)+acc45(39)+acc45(89)
      acc45(89)=Qspvak2k5*acc45(89)
      acc45(90)=Qspvak1k5*acc45(84)
      acc45(91)=Qspk5*acc45(71)
      acc45(90)=acc45(91)+acc45(53)+acc45(90)
      acc45(90)=Qspk1*acc45(90)
      acc45(91)=Qspvak1k5*acc45(83)
      acc45(92)=-Qspl3*acc45(68)
      acc45(93)=Qspk2*acc45(69)
      acc45(94)=Qspk1*acc45(37)
      acc45(94)=acc45(15)+acc45(94)
      acc45(94)=Qspvak2k5*acc45(94)
      acc45(90)=acc45(94)+acc45(93)+acc45(90)+acc45(92)+acc45(14)+acc45(91)
      acc45(90)=Qspvak5k2*acc45(90)
      acc45(91)=Qspvak5l3*acc45(64)
      acc45(92)=Qspval3k2*acc45(73)
      acc45(93)=Qspvak1k5*acc45(81)
      acc45(94)=Qspl3*acc45(42)
      acc45(95)=Qspk5*acc45(30)
      acc45(96)=Qspval3k2*acc45(40)
      acc45(96)=acc45(48)+acc45(96)
      acc45(96)=Qspk1*acc45(96)
      acc45(97)=Qspk1*acc45(60)
      acc45(97)=acc45(34)+acc45(97)
      acc45(97)=Qspk2*acc45(97)
      brack=acc45(12)+acc45(87)+acc45(88)+acc45(89)+acc45(90)+acc45(91)+acc45(9&
      &2)+acc45(93)+acc45(94)+acc45(95)+acc45(96)+acc45(97)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h4_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d45
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d45 = 0.0_ki
      d45 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d45, ki), aimag(d45), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d45h4l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d45
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d45 = 0.0_ki
      d45 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d45, ki), aimag(d45), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d45h4l1_qp
