module     p0_gg_hhg_d61h0l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d61h0l1.f90
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
      use p0_gg_hhg_abbrevd61h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(82)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspl4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl3
      complex(ki) :: QspQ
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2k1
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspl4 = dotproduct(Q,l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      Qspl3 = dotproduct(Q,l3)
      QspQ = dotproduct(Q,Q)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc61(1)=abb61(10)
      acc61(2)=abb61(11)
      acc61(3)=abb61(12)
      acc61(4)=abb61(13)
      acc61(5)=abb61(14)
      acc61(6)=abb61(15)
      acc61(7)=abb61(16)
      acc61(8)=abb61(17)
      acc61(9)=abb61(18)
      acc61(10)=abb61(19)
      acc61(11)=abb61(20)
      acc61(12)=abb61(21)
      acc61(13)=abb61(22)
      acc61(14)=abb61(24)
      acc61(15)=abb61(25)
      acc61(16)=abb61(26)
      acc61(17)=abb61(27)
      acc61(18)=abb61(29)
      acc61(19)=abb61(30)
      acc61(20)=abb61(31)
      acc61(21)=abb61(35)
      acc61(22)=abb61(36)
      acc61(23)=abb61(37)
      acc61(24)=abb61(38)
      acc61(25)=abb61(39)
      acc61(26)=abb61(40)
      acc61(27)=abb61(42)
      acc61(28)=abb61(43)
      acc61(29)=abb61(45)
      acc61(30)=abb61(46)
      acc61(31)=abb61(47)
      acc61(32)=abb61(48)
      acc61(33)=abb61(49)
      acc61(34)=abb61(50)
      acc61(35)=abb61(51)
      acc61(36)=abb61(52)
      acc61(37)=abb61(53)
      acc61(38)=abb61(54)
      acc61(39)=abb61(55)
      acc61(40)=abb61(56)
      acc61(41)=abb61(57)
      acc61(42)=abb61(58)
      acc61(43)=abb61(59)
      acc61(44)=abb61(60)
      acc61(45)=abb61(61)
      acc61(46)=abb61(62)
      acc61(47)=abb61(63)
      acc61(48)=abb61(64)
      acc61(49)=abb61(65)
      acc61(50)=abb61(66)
      acc61(51)=abb61(67)
      acc61(52)=abb61(68)
      acc61(53)=abb61(70)
      acc61(54)=abb61(71)
      acc61(55)=abb61(72)
      acc61(56)=abb61(73)
      acc61(57)=abb61(74)
      acc61(58)=abb61(75)
      acc61(59)=abb61(76)
      acc61(60)=abb61(80)
      acc61(61)=abb61(82)
      acc61(62)=abb61(83)
      acc61(63)=abb61(84)
      acc61(64)=abb61(86)
      acc61(65)=abb61(88)
      acc61(66)=abb61(89)
      acc61(67)=abb61(90)
      acc61(68)=abb61(93)
      acc61(69)=abb61(94)
      acc61(70)=abb61(96)
      acc61(71)=Qspvak2l4*acc61(60)
      acc61(72)=Qspl4*acc61(11)
      acc61(73)=Qspval4k5*acc61(68)
      acc61(74)=Qspk1*acc61(66)
      acc61(75)=Qspvak1k5*acc61(28)
      acc61(76)=Qspk2*acc61(65)
      acc61(77)=Qspl3*acc61(52)
      acc61(78)=QspQ*acc61(67)
      acc61(71)=acc61(78)+acc61(77)+acc61(76)+acc61(75)+acc61(74)+acc61(73)+acc&
      &61(72)+acc61(9)+acc61(71)
      acc61(71)=QspQ*acc61(71)
      acc61(72)=Qspval3k5*acc61(45)
      acc61(73)=Qspvak2l3*acc61(2)
      acc61(74)=Qspvak2l4*acc61(13)
      acc61(75)=Qspl4*acc61(24)
      acc61(76)=Qspval4k5*acc61(36)
      acc61(77)=Qspk2*acc61(29)
      acc61(78)=Qspl3*acc61(37)
      acc61(79)=QspQ*acc61(31)
      acc61(72)=acc61(79)+acc61(78)+acc61(77)+acc61(76)+acc61(75)+acc61(74)+acc&
      &61(73)+acc61(6)+acc61(72)
      acc61(72)=Qspvak1k2*acc61(72)
      acc61(73)=Qspk2*acc61(18)
      acc61(74)=-Qspl3*acc61(17)
      acc61(75)=QspQ*acc61(20)
      acc61(73)=acc61(75)+acc61(74)+acc61(3)+acc61(73)
      acc61(73)=Qspvak1k2*acc61(73)
      acc61(73)=acc61(55)+acc61(73)
      acc61(73)=Qspvak2k5*acc61(73)
      acc61(74)=Qspk1*acc61(64)
      acc61(75)=Qspvak1k5*acc61(35)
      acc61(74)=acc61(75)+acc61(58)+acc61(74)
      acc61(74)=Qspk2*acc61(74)
      acc61(75)=-Qspk1*acc61(63)
      acc61(76)=Qspvak1k5*acc61(59)
      acc61(75)=acc61(76)+acc61(57)+acc61(75)
      acc61(75)=Qspl3*acc61(75)
      acc61(76)=Qspval3k5*acc61(56)
      acc61(77)=Qspvak2l4*acc61(42)
      acc61(78)=Qspl4*acc61(39)
      acc61(79)=Qspval4k5*acc61(22)
      acc61(80)=Qspk1*acc61(27)
      acc61(81)=Qspvak1k5*acc61(1)
      acc61(71)=acc61(73)+acc61(72)+acc61(71)+acc61(75)+acc61(74)+acc61(81)+acc&
      &61(80)+acc61(79)+acc61(78)+acc61(77)+acc61(33)+acc61(76)
      acc61(71)=Qspvak2k5*acc61(71)
      acc61(72)=Qspvak2k1*acc61(8)
      acc61(73)=Qspvak2l3*acc61(61)
      acc61(74)=Qspl4*acc61(49)
      acc61(75)=Qspval4k5*acc61(53)
      acc61(76)=Qspk1*acc61(47)
      acc61(77)=Qspvak1k5*acc61(21)
      acc61(78)=Qspk2*acc61(32)
      acc61(79)=Qspl3*acc61(50)
      acc61(80)=QspQ*acc61(51)
      acc61(72)=acc61(80)+acc61(79)+acc61(78)+acc61(77)+acc61(76)+acc61(75)+acc&
      &61(74)+acc61(73)+acc61(26)+acc61(72)
      acc61(72)=QspQ*acc61(72)
      acc61(73)=Qspvak2k1*acc61(4)
      acc61(74)=Qspvak2l3*acc61(19)
      acc61(75)=Qspvak2l4*acc61(10)
      acc61(76)=Qspl4*acc61(15)
      acc61(77)=Qspval4k5*acc61(70)
      acc61(78)=Qspvak1k5*acc61(5)
      acc61(79)=Qspk2*acc61(30)
      acc61(80)=Qspl3*acc61(44)
      acc61(81)=QspQ*acc61(23)
      acc61(73)=acc61(81)+acc61(80)+acc61(79)+acc61(78)+acc61(77)+acc61(76)+acc&
      &61(75)+acc61(74)+acc61(7)+acc61(73)
      acc61(73)=Qspvak1k2*acc61(73)
      acc61(74)=Qspk1*acc61(48)
      acc61(75)=Qspvak1k5*acc61(14)
      acc61(74)=acc61(75)+acc61(41)+acc61(74)
      acc61(74)=Qspk2*acc61(74)
      acc61(75)=Qspk1*acc61(46)
      acc61(76)=Qspvak1k5*acc61(34)
      acc61(75)=acc61(76)+acc61(40)+acc61(75)
      acc61(75)=Qspl3*acc61(75)
      acc61(76)=Qspvak2k1*acc61(69)
      acc61(77)=Qspval3k5*acc61(25)
      acc61(78)=Qspvak2l3*acc61(62)
      acc61(79)=Qspl4*acc61(38)
      acc61(80)=Qspval4k5*acc61(54)
      acc61(81)=Qspk1*acc61(43)
      acc61(82)=Qspvak1k5*acc61(16)
      brack=acc61(12)+acc61(71)+acc61(72)+acc61(73)+acc61(74)+acc61(75)+acc61(7&
      &6)+acc61(77)+acc61(78)+acc61(79)+acc61(80)+acc61(81)+acc61(82)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd61h0
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
   & bind(c, name="p0_gg_hhg_d61h0l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd61h0
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
end module p0_gg_hhg_d61h0l1
