module     p0_gg_hhg_d27h3l1
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d27h3l1.f90
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
      use p0_gg_hhg_abbrevd27h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc27(57)
      complex(ki) :: Qspk2
      complex(ki) :: Qspk5
      complex(ki) :: Qspl3
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak5l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak5k1
      Qspk2 = dotproduct(Q,k2)
      Qspk5 = dotproduct(Q,k5)
      Qspl3 = dotproduct(Q,l3)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk1 = dotproduct(Q,k1)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      acc27(1)=abb27(10)
      acc27(2)=abb27(11)
      acc27(3)=abb27(12)
      acc27(4)=abb27(13)
      acc27(5)=abb27(14)
      acc27(6)=abb27(15)
      acc27(7)=abb27(16)
      acc27(8)=abb27(18)
      acc27(9)=abb27(19)
      acc27(10)=abb27(20)
      acc27(11)=abb27(21)
      acc27(12)=abb27(22)
      acc27(13)=abb27(23)
      acc27(14)=abb27(24)
      acc27(15)=abb27(25)
      acc27(16)=abb27(26)
      acc27(17)=abb27(27)
      acc27(18)=abb27(28)
      acc27(19)=abb27(29)
      acc27(20)=abb27(30)
      acc27(21)=abb27(31)
      acc27(22)=abb27(32)
      acc27(23)=abb27(33)
      acc27(24)=abb27(35)
      acc27(25)=abb27(36)
      acc27(26)=abb27(37)
      acc27(27)=abb27(38)
      acc27(28)=abb27(39)
      acc27(29)=abb27(40)
      acc27(30)=abb27(41)
      acc27(31)=abb27(45)
      acc27(32)=abb27(48)
      acc27(33)=abb27(50)
      acc27(34)=abb27(56)
      acc27(35)=abb27(57)
      acc27(36)=abb27(59)
      acc27(37)=abb27(62)
      acc27(38)=abb27(63)
      acc27(39)=abb27(64)
      acc27(40)=abb27(66)
      acc27(41)=abb27(67)
      acc27(42)=abb27(69)
      acc27(43)=Qspk2+Qspk5
      acc27(44)=acc27(11)*acc27(43)
      acc27(45)=-Qspl3*acc27(27)
      acc27(44)=acc27(45)+acc27(10)+acc27(44)
      acc27(44)=Qspk2*acc27(44)
      acc27(45)=acc27(24)*Qspval4k2
      acc27(46)=acc27(23)*Qspval3k2
      acc27(47)=acc27(19)*Qspval3k5
      acc27(48)=Qspvak2l3*acc27(4)
      acc27(49)=Qspvak5k2*acc27(14)
      acc27(50)=Qspvak5l3*acc27(30)
      acc27(51)=Qspl4*acc27(13)
      acc27(52)=Qspvak2l4*acc27(22)
      acc27(53)=Qspvak2k5*acc27(15)
      acc27(54)=Qspval4k5*acc27(12)
      acc27(55)=Qspvak5l4*acc27(28)
      acc27(56)=Qspk5*acc27(9)
      acc27(57)=-Qspk5*acc27(27)
      acc27(57)=acc27(26)+acc27(57)
      acc27(57)=Qspl3*acc27(57)
      acc27(43)=-acc27(16)*acc27(43)
      acc27(43)=acc27(2)+acc27(43)
      acc27(43)=QspQ*acc27(43)
      acc27(43)=acc27(43)+acc27(44)+acc27(57)+acc27(56)+acc27(55)+acc27(54)+acc&
      &27(53)+acc27(52)+acc27(51)+acc27(50)+acc27(49)+acc27(48)+acc27(1)+acc27(&
      &47)+acc27(45)+acc27(46)
      acc27(43)=Qspvak2k1*acc27(43)
      acc27(44)=-QspQ-Qspk1-Qspl4
      acc27(44)=acc27(7)*acc27(44)
      acc27(45)=Qspvak5k1*acc27(21)
      acc27(46)=-Qspvak2l4*acc27(34)
      acc27(47)=Qspvak2k5*acc27(42)
      acc27(48)=Qspval4k5*acc27(6)
      acc27(49)=Qspvak5l4*acc27(39)
      acc27(50)=-Qspl3*acc27(35)
      acc27(51)=Qspk2*acc27(18)
      acc27(44)=acc27(51)+acc27(50)+acc27(49)+acc27(48)+acc27(47)+acc27(46)+acc&
      &27(3)+acc27(45)+acc27(44)
      acc27(44)=QspQ*acc27(44)
      acc27(45)=Qspvak2l3*acc27(29)
      acc27(46)=Qspvak5k1*acc27(5)
      acc27(47)=Qspvak5k2*acc27(31)
      acc27(48)=Qspvak5l3*acc27(40)
      acc27(49)=Qspl4*acc27(17)
      acc27(50)=Qspvak2l4*acc27(25)
      acc27(51)=Qspvak2k5*acc27(41)
      acc27(52)=Qspval4k5*acc27(36)
      acc27(53)=Qspvak5l4*acc27(38)
      acc27(54)=Qspk1*acc27(20)
      acc27(55)=-Qspk1*acc27(35)
      acc27(55)=acc27(33)+acc27(55)
      acc27(55)=Qspl3*acc27(55)
      acc27(56)=Qspk1*acc27(37)
      acc27(56)=acc27(32)+acc27(56)
      acc27(56)=Qspk2*acc27(56)
      brack=acc27(8)+acc27(43)+acc27(44)+acc27(45)+acc27(46)+acc27(47)+acc27(48&
      &)+acc27(49)+acc27(50)+acc27(51)+acc27(52)+acc27(53)+acc27(54)+acc27(55)+&
      &acc27(56)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use precision_golem, only: ki_gol => ki
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd27h3
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k3+k4
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d27h3l1_ninja")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd27h3
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d27
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k3+k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d27 = 0.0_ki
      d27 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d27, ki), aimag(d27), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d27h3l1
