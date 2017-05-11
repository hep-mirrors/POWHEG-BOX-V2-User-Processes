module p0_gg_hhg_d55h0l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d55h0l1.f90
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
      use p0_gg_hhg_abbrevd55h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc55(79)
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspk1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspvak2k1
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk2 = dotproduct(Q,k2)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspk1 = dotproduct(Q,k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc55(1)=abb55(10)
      acc55(2)=abb55(11)
      acc55(3)=abb55(12)
      acc55(4)=abb55(13)
      acc55(5)=abb55(14)
      acc55(6)=abb55(15)
      acc55(7)=abb55(16)
      acc55(8)=abb55(17)
      acc55(9)=abb55(18)
      acc55(10)=abb55(19)
      acc55(11)=abb55(20)
      acc55(12)=abb55(21)
      acc55(13)=abb55(22)
      acc55(14)=abb55(23)
      acc55(15)=abb55(25)
      acc55(16)=abb55(26)
      acc55(17)=abb55(27)
      acc55(18)=abb55(28)
      acc55(19)=abb55(30)
      acc55(20)=abb55(31)
      acc55(21)=abb55(32)
      acc55(22)=abb55(33)
      acc55(23)=abb55(34)
      acc55(24)=abb55(36)
      acc55(25)=abb55(37)
      acc55(26)=abb55(40)
      acc55(27)=abb55(41)
      acc55(28)=abb55(42)
      acc55(29)=abb55(43)
      acc55(30)=abb55(44)
      acc55(31)=abb55(47)
      acc55(32)=abb55(48)
      acc55(33)=abb55(49)
      acc55(34)=abb55(51)
      acc55(35)=abb55(52)
      acc55(36)=abb55(53)
      acc55(37)=abb55(54)
      acc55(38)=abb55(58)
      acc55(39)=abb55(59)
      acc55(40)=abb55(60)
      acc55(41)=abb55(61)
      acc55(42)=abb55(62)
      acc55(43)=abb55(63)
      acc55(44)=abb55(64)
      acc55(45)=abb55(65)
      acc55(46)=abb55(66)
      acc55(47)=abb55(67)
      acc55(48)=abb55(68)
      acc55(49)=abb55(69)
      acc55(50)=abb55(70)
      acc55(51)=abb55(71)
      acc55(52)=abb55(73)
      acc55(53)=abb55(75)
      acc55(54)=abb55(76)
      acc55(55)=abb55(77)
      acc55(56)=abb55(79)
      acc55(57)=abb55(80)
      acc55(58)=abb55(82)
      acc55(59)=abb55(83)
      acc55(60)=abb55(84)
      acc55(61)=abb55(85)
      acc55(62)=abb55(86)
      acc55(63)=abb55(89)
      acc55(64)=abb55(90)
      acc55(65)=abb55(97)
      acc55(66)=abb55(102)
      acc55(67)=abb55(103)
      acc55(68)=Qspval4k5*acc55(59)
      acc55(69)=Qspvak2l4*acc55(54)
      acc55(70)=Qspl4*acc55(30)
      acc55(71)=Qspvak1k5*acc55(49)
      acc55(72)=Qspk2*acc55(40)
      acc55(73)=Qspl3*acc55(33)
      acc55(74)=Qspvak2l3*acc55(32)
      acc55(75)=Qspval3k5*acc55(51)
      acc55(76)=Qspk1*acc55(58)
      acc55(77)=QspQ*acc55(55)
      acc55(68)=acc55(77)+acc55(76)+acc55(75)+acc55(74)+acc55(73)+acc55(72)+acc&
      &55(71)+acc55(70)+acc55(69)+acc55(14)+acc55(68)
      acc55(68)=QspQ*acc55(68)
      acc55(69)=Qspk1-Qspl4
      acc55(70)=-acc55(36)*acc55(69)
      acc55(71)=Qspval4k5*acc55(35)
      acc55(72)=Qspvak2l4*acc55(3)
      acc55(73)=Qspk2*acc55(37)
      acc55(74)=Qspl3*acc55(29)
      acc55(75)=Qspvak2l3*acc55(4)
      acc55(76)=Qspval3k5*acc55(42)
      acc55(77)=QspQ*acc55(18)
      acc55(78)=Qspvak2k5*acc55(16)
      acc55(70)=acc55(78)+acc55(77)+acc55(76)+acc55(75)+acc55(74)+acc55(73)+acc&
      &55(72)+acc55(17)+acc55(71)+acc55(70)
      acc55(70)=Qspvak1k2*acc55(70)
      acc55(71)=Qspvak1k5*acc55(50)
      acc55(72)=Qspk2*acc55(61)
      acc55(73)=Qspl3*acc55(64)
      acc55(74)=Qspvak2l3*acc55(34)
      acc55(75)=Qspval3k5*acc55(63)
      acc55(71)=acc55(75)+acc55(74)+acc55(73)+acc55(72)+acc55(56)+acc55(71)
      acc55(71)=Qspk1*acc55(71)
      acc55(72)=Qspval4k5*acc55(60)
      acc55(73)=Qspvak2l4*acc55(7)
      acc55(74)=Qspl4*acc55(57)
      acc55(75)=Qspvak1k5*acc55(22)
      acc55(76)=Qspk2*acc55(31)
      acc55(77)=Qspl3*acc55(38)
      acc55(78)=Qspvak2l3*acc55(28)
      acc55(79)=Qspval3k5*acc55(62)
      acc55(68)=acc55(68)+acc55(71)+acc55(79)+acc55(78)+acc55(77)+acc55(76)+acc&
      &55(75)+acc55(74)+acc55(73)+acc55(53)+acc55(72)+acc55(70)
      acc55(68)=Qspvak2k5*acc55(68)
      acc55(69)=-acc55(21)*acc55(69)
      acc55(70)=acc55(8)*Qspvak2k1
      acc55(71)=Qspvak1k5*acc55(13)
      acc55(72)=Qspk2*acc55(66)
      acc55(73)=Qspl3*acc55(65)
      acc55(74)=Qspvak2l3*acc55(2)
      acc55(75)=Qspval3k5*acc55(67)
      acc55(76)=QspQ*acc55(27)
      acc55(69)=acc55(76)+acc55(75)+acc55(74)+acc55(73)+acc55(72)+acc55(71)+acc&
      &55(70)+acc55(5)+acc55(69)
      acc55(69)=Qspvak1k2*acc55(69)
      acc55(70)=Qspl4*acc55(25)
      acc55(71)=Qspk2*acc55(6)
      acc55(72)=Qspl3*acc55(11)
      acc55(73)=Qspvak2l3*acc55(20)
      acc55(74)=Qspval3k5*acc55(26)
      acc55(75)=Qspk1*acc55(24)
      acc55(76)=QspQ*acc55(12)
      acc55(70)=acc55(76)+acc55(75)+acc55(74)+acc55(73)+acc55(72)+acc55(71)+acc&
      &55(19)+acc55(70)
      acc55(70)=QspQ*acc55(70)
      acc55(71)=Qspvak1k5*acc55(44)
      acc55(72)=Qspk2*acc55(45)
      acc55(73)=Qspl3*acc55(47)
      acc55(74)=Qspvak2l3*acc55(10)
      acc55(75)=Qspval3k5*acc55(52)
      acc55(71)=acc55(75)+acc55(74)+acc55(73)+acc55(72)+acc55(46)+acc55(71)
      acc55(71)=Qspk1*acc55(71)
      acc55(72)=Qspvak2l4*acc55(1)
      acc55(73)=Qspl4*acc55(23)
      acc55(74)=Qspvak1k5*acc55(43)
      acc55(75)=Qspk2*acc55(41)
      acc55(76)=Qspl3*acc55(39)
      acc55(77)=Qspvak2l3*acc55(9)
      acc55(78)=Qspval3k5*acc55(48)
      brack=acc55(15)+acc55(68)+acc55(69)+acc55(70)+acc55(71)+acc55(72)+acc55(7&
      &3)+acc55(74)+acc55(75)+acc55(76)+acc55(77)+acc55(78)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h0_qp
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
   & bind(c, name="p0_gg_hhg_d55h0l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h0_qp
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
end module p0_gg_hhg_d55h0l1_qp
