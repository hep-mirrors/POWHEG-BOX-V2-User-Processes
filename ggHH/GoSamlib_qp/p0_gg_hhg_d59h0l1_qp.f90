module p0_gg_hhg_d59h0l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d59h0l1.f90
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
      use p0_gg_hhg_abbrevd59h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc59(99)
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspk1
      complex(ki) :: Qspl3
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k1
      Qspk5 = dotproduct(Q,k5)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspk1 = dotproduct(Q,k1)
      Qspl3 = dotproduct(Q,l3)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc59(1)=abb59(8)
      acc59(2)=abb59(9)
      acc59(3)=abb59(10)
      acc59(4)=abb59(11)
      acc59(5)=abb59(12)
      acc59(6)=abb59(13)
      acc59(7)=abb59(14)
      acc59(8)=abb59(15)
      acc59(9)=abb59(16)
      acc59(10)=abb59(17)
      acc59(11)=abb59(18)
      acc59(12)=abb59(19)
      acc59(13)=abb59(20)
      acc59(14)=abb59(21)
      acc59(15)=abb59(22)
      acc59(16)=abb59(23)
      acc59(17)=abb59(24)
      acc59(18)=abb59(25)
      acc59(19)=abb59(27)
      acc59(20)=abb59(28)
      acc59(21)=abb59(29)
      acc59(22)=abb59(30)
      acc59(23)=abb59(31)
      acc59(24)=abb59(32)
      acc59(25)=abb59(33)
      acc59(26)=abb59(34)
      acc59(27)=abb59(35)
      acc59(28)=abb59(36)
      acc59(29)=abb59(37)
      acc59(30)=abb59(40)
      acc59(31)=abb59(42)
      acc59(32)=abb59(44)
      acc59(33)=abb59(46)
      acc59(34)=abb59(48)
      acc59(35)=abb59(49)
      acc59(36)=abb59(52)
      acc59(37)=abb59(54)
      acc59(38)=abb59(55)
      acc59(39)=abb59(56)
      acc59(40)=abb59(57)
      acc59(41)=abb59(58)
      acc59(42)=abb59(60)
      acc59(43)=abb59(64)
      acc59(44)=abb59(66)
      acc59(45)=abb59(67)
      acc59(46)=abb59(68)
      acc59(47)=abb59(69)
      acc59(48)=abb59(71)
      acc59(49)=abb59(72)
      acc59(50)=abb59(74)
      acc59(51)=abb59(76)
      acc59(52)=abb59(82)
      acc59(53)=abb59(83)
      acc59(54)=abb59(84)
      acc59(55)=abb59(85)
      acc59(56)=abb59(86)
      acc59(57)=abb59(87)
      acc59(58)=abb59(89)
      acc59(59)=abb59(90)
      acc59(60)=abb59(91)
      acc59(61)=abb59(92)
      acc59(62)=abb59(94)
      acc59(63)=abb59(95)
      acc59(64)=abb59(96)
      acc59(65)=abb59(97)
      acc59(66)=abb59(98)
      acc59(67)=abb59(99)
      acc59(68)=abb59(100)
      acc59(69)=abb59(101)
      acc59(70)=abb59(102)
      acc59(71)=abb59(104)
      acc59(72)=abb59(105)
      acc59(73)=abb59(106)
      acc59(74)=abb59(107)
      acc59(75)=abb59(108)
      acc59(76)=abb59(109)
      acc59(77)=abb59(110)
      acc59(78)=abb59(111)
      acc59(79)=abb59(112)
      acc59(80)=abb59(113)
      acc59(81)=abb59(114)
      acc59(82)=abb59(115)
      acc59(83)=abb59(116)
      acc59(84)=abb59(118)
      acc59(85)=abb59(119)
      acc59(86)=abb59(122)
      acc59(87)=Qspk5*acc59(74)
      acc59(88)=Qspvak1l3*acc59(69)
      acc59(89)=Qspvak1k5*acc59(61)
      acc59(90)=Qspval3k2*acc59(84)
      acc59(91)=Qspvak1k2*acc59(11)
      acc59(92)=Qspk1*acc59(78)
      acc59(93)=-Qspl3*acc59(45)
      acc59(94)=QspQ*acc59(28)
      acc59(95)=Qspk2*acc59(75)
      acc59(87)=acc59(95)+acc59(94)+acc59(93)+acc59(92)+acc59(91)+acc59(90)+acc&
      &59(89)+acc59(88)+acc59(27)+acc59(87)
      acc59(87)=Qspk2*acc59(87)
      acc59(88)=Qspvak5k2*acc59(41)
      acc59(89)=Qspvak1l3*acc59(25)
      acc59(90)=Qspvak1k5*acc59(21)
      acc59(91)=Qspval3k2*acc59(83)
      acc59(92)=Qspvak1k2*acc59(1)
      acc59(93)=Qspk1*acc59(73)
      acc59(94)=Qspk2*acc59(39)
      acc59(88)=acc59(94)+acc59(93)+acc59(92)+acc59(91)+acc59(90)+acc59(89)+acc&
      &59(67)+acc59(88)
      acc59(88)=Qspvak2k5*acc59(88)
      acc59(89)=Qspvak1l3*acc59(79)
      acc59(90)=Qspvak1k5*acc59(7)
      acc59(91)=Qspval3k2*acc59(50)
      acc59(92)=Qspvak1k2*acc59(18)
      acc59(93)=Qspk1*acc59(76)
      acc59(89)=acc59(93)+acc59(92)+acc59(91)+acc59(90)+acc59(62)+acc59(89)
      acc59(89)=QspQ*acc59(89)
      acc59(90)=Qspvak1l3*acc59(66)
      acc59(91)=Qspval3k2*acc59(82)
      acc59(90)=acc59(90)-acc59(91)
      acc59(91)=Qspvak1k5*acc59(63)
      acc59(92)=Qspvak1k2*acc59(14)
      acc59(93)=Qspk1*acc59(77)
      acc59(91)=acc59(93)+acc59(92)+acc59(91)+acc59(71)-acc59(90)
      acc59(91)=Qspl3*acc59(91)
      acc59(92)=Qspvak1k5*acc59(8)
      acc59(90)=acc59(92)+acc59(68)+acc59(90)
      acc59(90)=Qspk1*acc59(90)
      acc59(92)=Qspvak5k2*acc59(80)
      acc59(93)=Qspvak2l3*acc59(85)
      acc59(94)=Qspval3k5*acc59(81)
      acc59(95)=Qspk5*acc59(70)
      acc59(96)=-Qspk5*acc59(66)
      acc59(96)=acc59(48)+acc59(96)
      acc59(96)=Qspvak1l3*acc59(96)
      acc59(97)=-Qspk5*acc59(8)
      acc59(97)=acc59(6)+acc59(97)
      acc59(97)=Qspvak1k5*acc59(97)
      acc59(98)=Qspk5*acc59(82)
      acc59(98)=acc59(19)+acc59(98)
      acc59(98)=Qspval3k2*acc59(98)
      acc59(99)=Qspvak2l3*acc59(9)
      acc59(99)=acc59(5)+acc59(99)
      acc59(99)=Qspvak1k2*acc59(99)
      acc59(87)=acc59(88)+acc59(87)+acc59(89)+acc59(91)+acc59(90)+acc59(99)+acc&
      &59(98)+acc59(97)+acc59(96)+acc59(95)+acc59(94)+acc59(93)+acc59(16)+acc59&
      &(92)
      acc59(87)=Qspvak2k5*acc59(87)
      acc59(88)=Qspval3k5*acc59(53)
      acc59(89)=Qspk5*acc59(44)
      acc59(90)=Qspvak1l3*acc59(36)
      acc59(91)=Qspvak1k5*acc59(55)
      acc59(92)=Qspval3k2*acc59(38)
      acc59(93)=Qspvak1k2*acc59(42)
      acc59(94)=Qspk1*acc59(51)
      acc59(95)=Qspl3*acc59(47)
      acc59(96)=QspQ*acc59(22)
      acc59(97)=Qspk2*acc59(46)
      acc59(88)=acc59(97)+acc59(96)+acc59(95)+acc59(94)+acc59(93)+acc59(92)+acc&
      &59(91)+acc59(90)+acc59(89)+acc59(15)+acc59(88)
      acc59(88)=Qspk2*acc59(88)
      acc59(89)=Qspvak2l3*acc59(32)
      acc59(90)=Qspval3k5*acc59(56)
      acc59(91)=Qspvak1l3*acc59(12)
      acc59(92)=Qspvak1k5*acc59(65)
      acc59(93)=Qspval3k2*acc59(58)
      acc59(94)=Qspvak1k2*acc59(40)
      acc59(95)=Qspk1*acc59(24)
      acc59(96)=-Qspl3*acc59(37)
      acc59(97)=QspQ*acc59(29)
      acc59(89)=acc59(97)+acc59(96)+acc59(95)+acc59(94)+acc59(93)+acc59(92)+acc&
      &59(91)+acc59(90)+acc59(20)+acc59(89)
      acc59(89)=QspQ*acc59(89)
      acc59(90)=Qspval3k5*acc59(54)
      acc59(91)=Qspvak1l3*acc59(64)
      acc59(92)=Qspvak1k5*acc59(72)
      acc59(93)=Qspval3k2*acc59(60)
      acc59(94)=Qspvak1k2*acc59(13)
      acc59(95)=Qspk1*acc59(37)
      acc59(90)=acc59(95)+acc59(94)+acc59(93)+acc59(92)+acc59(91)+acc59(23)+acc&
      &59(90)
      acc59(90)=Qspl3*acc59(90)
      acc59(91)=Qspvak2k1*acc59(10)
      acc59(92)=Qspvak2l3*acc59(2)
      acc59(93)=Qspvak1k5*acc59(17)
      acc59(91)=acc59(93)+acc59(92)+acc59(3)+acc59(91)
      acc59(91)=Qspvak1k2*acc59(91)
      acc59(92)=Qspvak1l3*acc59(43)
      acc59(93)=-Qspval3k2*acc59(59)
      acc59(94)=Qspvak1k2*acc59(31)
      acc59(92)=acc59(94)+acc59(93)+acc59(49)+acc59(92)
      acc59(92)=Qspk1*acc59(92)
      acc59(93)=Qspvak2k1*acc59(35)
      acc59(94)=Qspvak2l3*acc59(30)
      acc59(95)=Qspval3k5*acc59(52)
      acc59(96)=Qspk5*acc59(33)
      acc59(97)=-Qspk5*acc59(43)
      acc59(97)=acc59(34)+acc59(97)
      acc59(97)=Qspvak1l3*acc59(97)
      acc59(98)=Qspk5*acc59(86)
      acc59(98)=acc59(26)+acc59(98)
      acc59(98)=Qspvak1k5*acc59(98)
      acc59(99)=Qspk5*acc59(59)
      acc59(99)=acc59(57)+acc59(99)
      acc59(99)=Qspval3k2*acc59(99)
      brack=acc59(4)+acc59(87)+acc59(88)+acc59(89)+acc59(90)+acc59(91)+acc59(92&
      &)+acc59(93)+acc59(94)+acc59(95)+acc59(96)+acc59(97)+acc59(98)+acc59(99)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd59h0_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d59
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d59 = 0.0_ki
      d59 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d59, ki), aimag(d59), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d59h0l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd59h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d59
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d59 = 0.0_ki
      d59 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d59, ki), aimag(d59), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d59h0l1_qp
