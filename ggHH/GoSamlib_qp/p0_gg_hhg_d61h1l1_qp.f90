module p0_gg_hhg_d61h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d61h1l1.f90
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
      use p0_gg_hhg_abbrevd61h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(53)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspl4
      complex(ki) :: Qspk2
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk1
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspl4 = dotproduct(Q,l4)
      Qspk2 = dotproduct(Q,k2)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk1 = dotproduct(Q,k1)
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
      acc61(14)=abb61(23)
      acc61(15)=abb61(24)
      acc61(16)=abb61(25)
      acc61(17)=abb61(26)
      acc61(18)=abb61(27)
      acc61(19)=abb61(28)
      acc61(20)=abb61(29)
      acc61(21)=abb61(30)
      acc61(22)=abb61(31)
      acc61(23)=abb61(32)
      acc61(24)=abb61(33)
      acc61(25)=abb61(35)
      acc61(26)=abb61(36)
      acc61(27)=abb61(37)
      acc61(28)=abb61(38)
      acc61(29)=abb61(39)
      acc61(30)=abb61(41)
      acc61(31)=abb61(43)
      acc61(32)=abb61(44)
      acc61(33)=abb61(45)
      acc61(34)=abb61(46)
      acc61(35)=abb61(47)
      acc61(36)=abb61(48)
      acc61(37)=abb61(49)
      acc61(38)=abb61(50)
      acc61(39)=abb61(52)
      acc61(40)=abb61(53)
      acc61(41)=abb61(58)
      acc61(42)=abb61(63)
      acc61(43)=abb61(65)
      acc61(44)=acc61(22)*Qspvak1k5
      acc61(45)=Qspval4k5*acc61(8)
      acc61(46)=Qspl4*acc61(23)
      acc61(47)=Qspk2*acc61(42)
      acc61(48)=Qspl3*acc61(41)
      acc61(49)=Qspvak2l3*acc61(32)
      acc61(50)=Qspvak2l4*acc61(26)
      acc61(51)=QspQ*acc61(7)
      acc61(52)=Qspvak2k1*acc61(2)
      acc61(44)=acc61(52)+acc61(51)+acc61(50)+acc61(49)+acc61(48)+acc61(47)+acc&
      &61(46)+acc61(45)+acc61(44)+acc61(6)
      acc61(44)=Qspvak2k1*acc61(44)
      acc61(45)=acc61(36)*Qspval3k5
      acc61(46)=Qspval4k5*acc61(14)
      acc61(47)=Qspl4*acc61(29)
      acc61(48)=Qspk2*acc61(27)
      acc61(49)=Qspl3*acc61(31)
      acc61(50)=Qspvak2l3*acc61(1)
      acc61(51)=Qspvak2l4*acc61(3)
      acc61(52)=QspQ*acc61(4)
      acc61(45)=acc61(52)+acc61(51)+acc61(50)+acc61(49)+acc61(48)+acc61(47)+acc&
      &61(46)+acc61(45)+acc61(28)
      acc61(45)=Qspvak2k1*acc61(45)
      acc61(46)=Qspk2*acc61(24)
      acc61(47)=-Qspl3*acc61(21)
      acc61(48)=QspQ*acc61(43)
      acc61(46)=acc61(48)+acc61(47)+acc61(10)+acc61(46)
      acc61(46)=Qspvak2k1*acc61(46)
      acc61(47)=-QspQ*acc61(37)
      acc61(46)=acc61(46)+acc61(38)+acc61(47)
      acc61(46)=Qspvak2k5*acc61(46)
      acc61(47)=Qspk1*acc61(35)
      acc61(48)=Qspl4*acc61(33)
      acc61(49)=Qspk2*acc61(25)
      acc61(50)=Qspl3*acc61(34)
      acc61(51)=Qspvak2l3*acc61(40)
      acc61(52)=Qspvak2l4*acc61(30)
      acc61(53)=Qspvak2l4*acc61(39)
      acc61(53)=acc61(9)+acc61(53)
      acc61(53)=QspQ*acc61(53)
      acc61(45)=acc61(46)+acc61(45)+acc61(53)+acc61(52)+acc61(51)+acc61(50)+acc&
      &61(49)+acc61(48)+acc61(13)+acc61(47)
      acc61(45)=Qspvak2k5*acc61(45)
      acc61(46)=Qspk1*acc61(15)
      acc61(47)=Qspl4*acc61(19)
      acc61(48)=Qspk2*acc61(17)
      acc61(49)=Qspl3*acc61(18)
      acc61(50)=Qspvak2l3*acc61(12)
      acc61(51)=Qspvak2l4*acc61(20)
      acc61(52)=Qspvak2l3*acc61(5)
      acc61(52)=acc61(16)+acc61(52)
      acc61(52)=QspQ*acc61(52)
      brack=acc61(11)+acc61(44)+acc61(45)+acc61(46)+acc61(47)+acc61(48)+acc61(4&
      &9)+acc61(50)+acc61(51)+acc61(52)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h1_qp
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
   & bind(c, name="p0_gg_hhg_d61h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h1_qp
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
end module p0_gg_hhg_d61h1l1_qp
