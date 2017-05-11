module     p0_gg_hhg_d15h3l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d15h3l1.f90
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
      use p0_gg_hhg_abbrevd15h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(76)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspl4
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
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspl3 = dotproduct(Q,l3)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      acc15(1)=abb15(10)
      acc15(2)=abb15(11)
      acc15(3)=abb15(12)
      acc15(4)=abb15(13)
      acc15(5)=abb15(14)
      acc15(6)=abb15(16)
      acc15(7)=abb15(17)
      acc15(8)=abb15(18)
      acc15(9)=abb15(19)
      acc15(10)=abb15(20)
      acc15(11)=abb15(21)
      acc15(12)=abb15(22)
      acc15(13)=abb15(23)
      acc15(14)=abb15(24)
      acc15(15)=abb15(25)
      acc15(16)=abb15(26)
      acc15(17)=abb15(27)
      acc15(18)=abb15(28)
      acc15(19)=abb15(29)
      acc15(20)=abb15(30)
      acc15(21)=abb15(31)
      acc15(22)=abb15(32)
      acc15(23)=abb15(33)
      acc15(24)=abb15(34)
      acc15(25)=abb15(35)
      acc15(26)=abb15(36)
      acc15(27)=abb15(38)
      acc15(28)=abb15(39)
      acc15(29)=abb15(40)
      acc15(30)=abb15(41)
      acc15(31)=abb15(42)
      acc15(32)=abb15(43)
      acc15(33)=abb15(44)
      acc15(34)=abb15(45)
      acc15(35)=abb15(46)
      acc15(36)=abb15(48)
      acc15(37)=abb15(49)
      acc15(38)=abb15(50)
      acc15(39)=abb15(51)
      acc15(40)=abb15(52)
      acc15(41)=abb15(56)
      acc15(42)=abb15(57)
      acc15(43)=abb15(60)
      acc15(44)=abb15(61)
      acc15(45)=abb15(63)
      acc15(46)=abb15(68)
      acc15(47)=abb15(69)
      acc15(48)=abb15(73)
      acc15(49)=abb15(75)
      acc15(50)=abb15(76)
      acc15(51)=abb15(78)
      acc15(52)=abb15(80)
      acc15(53)=abb15(81)
      acc15(54)=abb15(84)
      acc15(55)=abb15(95)
      acc15(56)=abb15(96)
      acc15(57)=abb15(98)
      acc15(58)=abb15(103)
      acc15(59)=abb15(106)
      acc15(60)=-Qspk2+Qspk1
      acc15(60)=acc15(52)*acc15(60)
      acc15(61)=Qspvak2k1*acc15(24)
      acc15(60)=acc15(61)+acc15(29)+acc15(60)
      acc15(60)=QspQ*acc15(60)
      acc15(61)=Qspk1*acc15(55)
      acc15(62)=Qspvak1k2*acc15(18)
      acc15(63)=Qspval3k2*acc15(57)
      acc15(64)=Qspval4k2*acc15(56)
      acc15(65)=Qspvak1l4*acc15(8)
      acc15(66)=Qspvak2l4*acc15(59)
      acc15(67)=Qspval4k1*acc15(49)
      acc15(68)=Qspl3*acc15(38)
      acc15(69)=Qspvak1l3*acc15(32)
      acc15(70)=Qspvak2l3*acc15(20)
      acc15(71)=Qspval3k1*acc15(4)
      acc15(72)=Qspvak2k1*acc15(12)
      acc15(73)=Qspl4*acc15(17)
      acc15(74)=Qspk2*acc15(47)
      acc15(60)=acc15(60)+acc15(74)+acc15(73)+acc15(72)+acc15(71)+acc15(70)+acc&
      &15(69)+acc15(68)+acc15(67)+acc15(66)+acc15(65)+acc15(64)+acc15(63)+acc15&
      &(62)+acc15(13)+acc15(61)
      acc15(60)=Qspvak2k5*acc15(60)
      acc15(61)=QspQ-Qspl3+Qspk5
      acc15(61)=acc15(5)*acc15(61)
      acc15(62)=Qspvak1l4*acc15(39)
      acc15(63)=Qspvak2l4*acc15(58)
      acc15(64)=Qspval4k1*acc15(31)
      acc15(65)=Qspvak1k5*acc15(7)
      acc15(66)=Qspvak1l3*acc15(21)
      acc15(67)=-Qspvak2l3*acc15(46)
      acc15(68)=Qspval3k1*acc15(37)
      acc15(69)=Qspvak2k1*acc15(9)
      acc15(70)=Qspl4*acc15(50)
      acc15(71)=Qspk2*acc15(30)
      acc15(61)=acc15(71)+acc15(70)+acc15(69)+acc15(68)+acc15(67)+acc15(66)+acc&
      &15(65)+acc15(64)+acc15(63)+acc15(26)+acc15(62)+acc15(61)
      acc15(61)=QspQ*acc15(61)
      acc15(62)=Qspvak1k5*acc15(27)
      acc15(63)=Qspl3*acc15(53)
      acc15(64)=Qspvak1l3*acc15(23)
      acc15(65)=Qspvak2l3*acc15(6)
      acc15(66)=Qspval3k1*acc15(51)
      acc15(67)=Qspvak2k1*acc15(45)
      acc15(68)=Qspl4*acc15(41)
      acc15(69)=Qspk2*acc15(54)
      acc15(62)=acc15(69)+acc15(68)+acc15(67)+acc15(66)+acc15(65)+acc15(64)+acc&
      &15(63)+acc15(33)+acc15(62)
      acc15(62)=Qspk2*acc15(62)
      acc15(63)=Qspvak1k5*acc15(16)
      acc15(64)=-Qspl3*acc15(50)
      acc15(65)=Qspvak1l3*acc15(22)
      acc15(66)=Qspvak2l3*acc15(3)
      acc15(67)=Qspval3k1*acc15(42)
      acc15(68)=Qspvak2k1*acc15(28)
      acc15(63)=acc15(68)+acc15(67)+acc15(66)+acc15(65)+acc15(64)+acc15(34)+acc&
      &15(63)
      acc15(63)=Qspl4*acc15(63)
      acc15(64)=Qspk5*acc15(44)
      acc15(65)=Qspvak1k2*acc15(11)
      acc15(66)=Qspval3k2*acc15(48)
      acc15(67)=Qspval4k2*acc15(40)
      acc15(68)=Qspvak1l4*acc15(36)
      acc15(69)=Qspvak2l4*acc15(43)
      acc15(70)=Qspval4k1*acc15(35)
      acc15(71)=Qspvak1k5*acc15(1)
      acc15(72)=Qspl3*acc15(15)
      acc15(73)=Qspvak1l3*acc15(19)
      acc15(74)=Qspvak2l3*acc15(2)
      acc15(75)=Qspval3k1*acc15(10)
      acc15(76)=Qspvak2k1*acc15(25)
      brack=acc15(14)+acc15(60)+acc15(61)+acc15(62)+acc15(63)+acc15(64)+acc15(6&
      &5)+acc15(66)+acc15(67)+acc15(68)+acc15(69)+acc15(70)+acc15(71)+acc15(72)&
      &+acc15(73)+acc15(74)+acc15(75)+acc15(76)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd15h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = -k3
      Q(:)  =cmplx(real(-Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d15h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd15h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d15h3l1
