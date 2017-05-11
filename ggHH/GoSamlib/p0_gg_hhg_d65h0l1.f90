module     p0_gg_hhg_d65h0l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d65h0l1.f90
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
      use p0_gg_hhg_abbrevd65h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(82)
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspl3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl4
      complex(ki) :: QspQ
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k1
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspl3 = dotproduct(Q,l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      Qspl4 = dotproduct(Q,l4)
      QspQ = dotproduct(Q,Q)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc65(1)=abb65(10)
      acc65(2)=abb65(11)
      acc65(3)=abb65(12)
      acc65(4)=abb65(13)
      acc65(5)=abb65(14)
      acc65(6)=abb65(15)
      acc65(7)=abb65(16)
      acc65(8)=abb65(17)
      acc65(9)=abb65(18)
      acc65(10)=abb65(19)
      acc65(11)=abb65(20)
      acc65(12)=abb65(21)
      acc65(13)=abb65(22)
      acc65(14)=abb65(23)
      acc65(15)=abb65(24)
      acc65(16)=abb65(25)
      acc65(17)=abb65(26)
      acc65(18)=abb65(27)
      acc65(19)=abb65(29)
      acc65(20)=abb65(31)
      acc65(21)=abb65(32)
      acc65(22)=abb65(35)
      acc65(23)=abb65(36)
      acc65(24)=abb65(38)
      acc65(25)=abb65(39)
      acc65(26)=abb65(40)
      acc65(27)=abb65(42)
      acc65(28)=abb65(43)
      acc65(29)=abb65(45)
      acc65(30)=abb65(46)
      acc65(31)=abb65(47)
      acc65(32)=abb65(48)
      acc65(33)=abb65(49)
      acc65(34)=abb65(51)
      acc65(35)=abb65(52)
      acc65(36)=abb65(53)
      acc65(37)=abb65(54)
      acc65(38)=abb65(55)
      acc65(39)=abb65(56)
      acc65(40)=abb65(57)
      acc65(41)=abb65(58)
      acc65(42)=abb65(59)
      acc65(43)=abb65(60)
      acc65(44)=abb65(61)
      acc65(45)=abb65(62)
      acc65(46)=abb65(63)
      acc65(47)=abb65(64)
      acc65(48)=abb65(65)
      acc65(49)=abb65(66)
      acc65(50)=abb65(67)
      acc65(51)=abb65(68)
      acc65(52)=abb65(69)
      acc65(53)=abb65(70)
      acc65(54)=abb65(71)
      acc65(55)=abb65(72)
      acc65(56)=abb65(73)
      acc65(57)=abb65(74)
      acc65(58)=abb65(75)
      acc65(59)=abb65(76)
      acc65(60)=abb65(80)
      acc65(61)=abb65(82)
      acc65(62)=abb65(84)
      acc65(63)=abb65(86)
      acc65(64)=abb65(88)
      acc65(65)=abb65(89)
      acc65(66)=abb65(90)
      acc65(67)=abb65(91)
      acc65(68)=abb65(93)
      acc65(69)=abb65(94)
      acc65(70)=abb65(96)
      acc65(71)=Qspvak2l3*acc65(68)
      acc65(72)=Qspl3*acc65(56)
      acc65(73)=Qspval3k5*acc65(67)
      acc65(74)=Qspk1*acc65(65)
      acc65(75)=Qspvak1k5*acc65(28)
      acc65(76)=Qspk2*acc65(64)
      acc65(77)=Qspl4*acc65(11)
      acc65(78)=QspQ*acc65(66)
      acc65(71)=acc65(78)+acc65(77)+acc65(76)+acc65(75)+acc65(74)+acc65(73)+acc&
      &65(72)+acc65(9)+acc65(71)
      acc65(71)=QspQ*acc65(71)
      acc65(72)=-Qspval4k5*acc65(29)
      acc65(73)=Qspvak2l3*acc65(13)
      acc65(74)=Qspvak2l4*acc65(2)
      acc65(75)=Qspl3*acc65(36)
      acc65(76)=Qspval3k5*acc65(44)
      acc65(77)=Qspk2*acc65(21)
      acc65(78)=Qspl4*acc65(31)
      acc65(79)=QspQ*acc65(24)
      acc65(72)=acc65(79)+acc65(78)+acc65(77)+acc65(76)+acc65(75)+acc65(74)+acc&
      &65(73)+acc65(6)+acc65(72)
      acc65(72)=Qspvak1k2*acc65(72)
      acc65(73)=Qspk2*acc65(19)
      acc65(74)=-Qspl4*acc65(18)
      acc65(75)=QspQ*acc65(20)
      acc65(73)=acc65(75)+acc65(74)+acc65(3)+acc65(73)
      acc65(73)=Qspvak1k2*acc65(73)
      acc65(73)=acc65(53)+acc65(73)
      acc65(73)=Qspvak2k5*acc65(73)
      acc65(74)=Qspk1*acc65(63)
      acc65(75)=Qspvak1k5*acc65(35)
      acc65(74)=acc65(75)+acc65(38)+acc65(74)
      acc65(74)=Qspk2*acc65(74)
      acc65(75)=-Qspk1*acc65(62)
      acc65(76)=Qspvak1k5*acc65(58)
      acc65(75)=acc65(76)+acc65(57)+acc65(75)
      acc65(75)=Qspl4*acc65(75)
      acc65(76)=Qspval4k5*acc65(54)
      acc65(77)=Qspvak2l3*acc65(41)
      acc65(78)=Qspl3*acc65(59)
      acc65(79)=Qspval3k5*acc65(23)
      acc65(80)=Qspk1*acc65(27)
      acc65(81)=Qspvak1k5*acc65(1)
      acc65(71)=acc65(73)+acc65(72)+acc65(71)+acc65(75)+acc65(74)+acc65(81)+acc&
      &65(80)+acc65(79)+acc65(78)+acc65(77)+acc65(33)+acc65(76)
      acc65(71)=Qspvak2k5*acc65(71)
      acc65(72)=Qspvak2k1*acc65(8)
      acc65(73)=Qspvak2l4*acc65(61)
      acc65(74)=Qspl3*acc65(49)
      acc65(75)=Qspval3k5*acc65(51)
      acc65(76)=Qspk1*acc65(46)
      acc65(77)=Qspvak1k5*acc65(22)
      acc65(78)=Qspk2*acc65(32)
      acc65(79)=Qspl4*acc65(48)
      acc65(80)=QspQ*acc65(50)
      acc65(72)=acc65(80)+acc65(79)+acc65(78)+acc65(77)+acc65(76)+acc65(75)+acc&
      &65(74)+acc65(73)+acc65(26)+acc65(72)
      acc65(72)=QspQ*acc65(72)
      acc65(73)=Qspvak2k1*acc65(5)
      acc65(74)=Qspvak2l3*acc65(4)
      acc65(75)=Qspvak2l4*acc65(52)
      acc65(76)=Qspl3*acc65(43)
      acc65(77)=Qspval3k5*acc65(70)
      acc65(78)=Qspvak1k5*acc65(16)
      acc65(79)=Qspk2*acc65(30)
      acc65(80)=Qspl4*acc65(14)
      acc65(81)=QspQ*acc65(10)
      acc65(73)=acc65(81)+acc65(80)+acc65(79)+acc65(78)+acc65(77)+acc65(76)+acc&
      &65(75)+acc65(74)+acc65(7)+acc65(73)
      acc65(73)=Qspvak1k2*acc65(73)
      acc65(74)=Qspk1*acc65(47)
      acc65(75)=Qspvak1k5*acc65(15)
      acc65(74)=acc65(75)+acc65(39)+acc65(74)
      acc65(74)=Qspk2*acc65(74)
      acc65(75)=Qspk1*acc65(45)
      acc65(76)=Qspvak1k5*acc65(37)
      acc65(75)=acc65(76)+acc65(34)+acc65(75)
      acc65(75)=Qspl4*acc65(75)
      acc65(76)=Qspvak2k1*acc65(69)
      acc65(77)=Qspval4k5*acc65(25)
      acc65(78)=Qspvak2l4*acc65(60)
      acc65(79)=Qspl3*acc65(40)
      acc65(80)=Qspval3k5*acc65(55)
      acc65(81)=Qspk1*acc65(42)
      acc65(82)=Qspvak1k5*acc65(17)
      brack=acc65(12)+acc65(71)+acc65(72)+acc65(73)+acc65(74)+acc65(75)+acc65(7&
      &6)+acc65(77)+acc65(78)+acc65(79)+acc65(80)+acc65(81)+acc65(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h0
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
   & bind(c, name="p0_gg_hhg_d65h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd65h0
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
end module p0_gg_hhg_d65h0l1
