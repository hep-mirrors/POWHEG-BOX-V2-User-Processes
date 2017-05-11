module p0_gg_hhg_d13h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d13h3l1.f90
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
      use p0_gg_hhg_abbrevd13h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc13(76)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak1k5
      Qspk2 = dotproduct(Q,k2)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      QspQ = dotproduct(Q,Q)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc13(1)=abb13(10)
      acc13(2)=abb13(11)
      acc13(3)=abb13(12)
      acc13(4)=abb13(13)
      acc13(5)=abb13(14)
      acc13(6)=abb13(16)
      acc13(7)=abb13(17)
      acc13(8)=abb13(18)
      acc13(9)=abb13(19)
      acc13(10)=abb13(20)
      acc13(11)=abb13(21)
      acc13(12)=abb13(22)
      acc13(13)=abb13(23)
      acc13(14)=abb13(24)
      acc13(15)=abb13(25)
      acc13(16)=abb13(26)
      acc13(17)=abb13(27)
      acc13(18)=abb13(28)
      acc13(19)=abb13(30)
      acc13(20)=abb13(31)
      acc13(21)=abb13(32)
      acc13(22)=abb13(33)
      acc13(23)=abb13(34)
      acc13(24)=abb13(35)
      acc13(25)=abb13(36)
      acc13(26)=abb13(38)
      acc13(27)=abb13(39)
      acc13(28)=abb13(40)
      acc13(29)=abb13(41)
      acc13(30)=abb13(42)
      acc13(31)=abb13(44)
      acc13(32)=abb13(45)
      acc13(33)=abb13(46)
      acc13(34)=abb13(47)
      acc13(35)=abb13(48)
      acc13(36)=abb13(49)
      acc13(37)=abb13(50)
      acc13(38)=abb13(51)
      acc13(39)=abb13(52)
      acc13(40)=abb13(53)
      acc13(41)=abb13(54)
      acc13(42)=abb13(56)
      acc13(43)=abb13(57)
      acc13(44)=abb13(59)
      acc13(45)=abb13(60)
      acc13(46)=abb13(61)
      acc13(47)=abb13(65)
      acc13(48)=abb13(66)
      acc13(49)=abb13(68)
      acc13(50)=abb13(69)
      acc13(51)=abb13(70)
      acc13(52)=abb13(73)
      acc13(53)=abb13(80)
      acc13(54)=abb13(81)
      acc13(55)=abb13(83)
      acc13(56)=abb13(84)
      acc13(57)=abb13(95)
      acc13(58)=abb13(96)
      acc13(59)=abb13(98)
      acc13(60)=-Qspk2+Qspk1
      acc13(60)=acc13(55)*acc13(60)
      acc13(61)=Qspvak2k1*acc13(23)
      acc13(60)=acc13(61)+acc13(17)+acc13(60)
      acc13(60)=QspQ*acc13(60)
      acc13(61)=Qspk1*acc13(57)
      acc13(62)=Qspvak1k2*acc13(18)
      acc13(63)=-Qspval3k2*acc13(59)
      acc13(64)=Qspval4k2*acc13(58)
      acc13(65)=Qspvak1l3*acc13(8)
      acc13(66)=Qspvak2l3*acc13(19)
      acc13(67)=Qspval3k1*acc13(56)
      acc13(68)=Qspl4*acc13(37)
      acc13(69)=Qspvak1l4*acc13(34)
      acc13(70)=Qspvak2l4*acc13(24)
      acc13(71)=Qspval4k1*acc13(4)
      acc13(72)=Qspvak2k1*acc13(12)
      acc13(73)=Qspl3*acc13(28)
      acc13(74)=Qspk2*acc13(50)
      acc13(60)=acc13(60)+acc13(74)+acc13(73)+acc13(72)+acc13(71)+acc13(70)+acc&
      &13(69)+acc13(68)+acc13(67)+acc13(66)+acc13(65)+acc13(64)+acc13(63)+acc13&
      &(62)+acc13(13)+acc13(61)
      acc13(60)=Qspvak2k5*acc13(60)
      acc13(61)=QspQ-Qspl4+Qspk5
      acc13(61)=acc13(5)*acc13(61)
      acc13(62)=Qspvak1l3*acc13(41)
      acc13(63)=Qspvak2l3*acc13(48)
      acc13(64)=Qspval3k1*acc13(30)
      acc13(65)=Qspvak1k5*acc13(7)
      acc13(66)=Qspvak1l4*acc13(20)
      acc13(67)=-Qspvak2l4*acc13(49)
      acc13(68)=Qspval4k1*acc13(36)
      acc13(69)=Qspvak2k1*acc13(9)
      acc13(70)=Qspl3*acc13(32)
      acc13(71)=Qspk2*acc13(29)
      acc13(61)=acc13(71)+acc13(70)+acc13(69)+acc13(68)+acc13(67)+acc13(66)+acc&
      &13(65)+acc13(64)+acc13(63)+acc13(25)+acc13(62)+acc13(61)
      acc13(61)=QspQ*acc13(61)
      acc13(62)=Qspvak1k5*acc13(26)
      acc13(63)=Qspl4*acc13(42)
      acc13(64)=Qspvak1l4*acc13(22)
      acc13(65)=Qspvak2l4*acc13(44)
      acc13(66)=Qspval4k1*acc13(40)
      acc13(67)=Qspvak2k1*acc13(47)
      acc13(68)=Qspl3*acc13(53)
      acc13(69)=Qspk2*acc13(54)
      acc13(62)=acc13(69)+acc13(68)+acc13(67)+acc13(66)+acc13(65)+acc13(64)+acc&
      &13(63)+acc13(31)+acc13(62)
      acc13(62)=Qspk2*acc13(62)
      acc13(63)=Qspvak1k5*acc13(16)
      acc13(64)=-Qspl4*acc13(32)
      acc13(65)=Qspvak1l4*acc13(21)
      acc13(66)=Qspvak2l4*acc13(6)
      acc13(67)=Qspval4k1*acc13(39)
      acc13(68)=Qspvak2k1*acc13(27)
      acc13(63)=acc13(68)+acc13(67)+acc13(66)+acc13(65)+acc13(64)+acc13(15)+acc&
      &13(63)
      acc13(63)=Qspl3*acc13(63)
      acc13(64)=Qspk5*acc13(46)
      acc13(65)=Qspvak1k2*acc13(11)
      acc13(66)=Qspval3k2*acc13(52)
      acc13(67)=Qspval4k2*acc13(33)
      acc13(68)=Qspvak1l3*acc13(38)
      acc13(69)=Qspvak2l3*acc13(45)
      acc13(70)=Qspval3k1*acc13(43)
      acc13(71)=Qspvak1k5*acc13(1)
      acc13(72)=Qspl4*acc13(51)
      acc13(73)=Qspvak1l4*acc13(2)
      acc13(74)=Qspvak2l4*acc13(3)
      acc13(75)=Qspval4k1*acc13(10)
      acc13(76)=Qspvak2k1*acc13(35)
      brack=acc13(14)+acc13(60)+acc13(61)+acc13(62)+acc13(63)+acc13(64)+acc13(6&
      &5)+acc13(66)+acc13(67)+acc13(68)+acc13(69)+acc13(70)+acc13(71)+acc13(72)&
      &+acc13(73)+acc13(74)+acc13(75)+acc13(76)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k5
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d13h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d13
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k5
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d13 = 0.0_ki
      d13 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d13, ki), aimag(d13), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d13h3l1_qp
