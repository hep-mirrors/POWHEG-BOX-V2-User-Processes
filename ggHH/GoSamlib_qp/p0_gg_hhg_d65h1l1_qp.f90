module p0_gg_hhg_d65h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d65h1l1.f90
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
      use p0_gg_hhg_abbrevd65h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc65(53)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspk2
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk1
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspl3 = dotproduct(Q,l3)
      Qspk2 = dotproduct(Q,k2)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk1 = dotproduct(Q,k1)
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
      acc65(19)=abb65(28)
      acc65(20)=abb65(29)
      acc65(21)=abb65(30)
      acc65(22)=abb65(31)
      acc65(23)=abb65(32)
      acc65(24)=abb65(33)
      acc65(25)=abb65(35)
      acc65(26)=abb65(36)
      acc65(27)=abb65(37)
      acc65(28)=abb65(38)
      acc65(29)=abb65(39)
      acc65(30)=abb65(41)
      acc65(31)=abb65(43)
      acc65(32)=abb65(44)
      acc65(33)=abb65(46)
      acc65(34)=abb65(47)
      acc65(35)=abb65(48)
      acc65(36)=abb65(49)
      acc65(37)=abb65(50)
      acc65(38)=abb65(51)
      acc65(39)=abb65(52)
      acc65(40)=abb65(53)
      acc65(41)=abb65(58)
      acc65(42)=abb65(63)
      acc65(43)=abb65(65)
      acc65(44)=acc65(3)*Qspvak1k5
      acc65(45)=Qspval3k5*acc65(23)
      acc65(46)=Qspl3*acc65(41)
      acc65(47)=Qspk2*acc65(42)
      acc65(48)=Qspl4*acc65(7)
      acc65(49)=Qspvak2l3*acc65(26)
      acc65(50)=Qspvak2l4*acc65(40)
      acc65(51)=QspQ*acc65(8)
      acc65(52)=Qspvak2k1*acc65(2)
      acc65(44)=acc65(52)+acc65(51)+acc65(50)+acc65(49)+acc65(48)+acc65(47)+acc&
      &65(46)+acc65(45)+acc65(6)+acc65(44)
      acc65(44)=Qspvak2k1*acc65(44)
      acc65(45)=acc65(35)*Qspval4k5
      acc65(46)=Qspval3k5*acc65(14)
      acc65(47)=Qspl3*acc65(31)
      acc65(48)=Qspk2*acc65(27)
      acc65(49)=Qspl4*acc65(29)
      acc65(50)=Qspvak2l3*acc65(1)
      acc65(51)=Qspvak2l4*acc65(22)
      acc65(52)=QspQ*acc65(4)
      acc65(45)=acc65(52)+acc65(51)+acc65(50)+acc65(49)+acc65(48)+acc65(47)+acc&
      &65(46)+acc65(45)+acc65(28)
      acc65(45)=Qspvak2k1*acc65(45)
      acc65(46)=Qspk2*acc65(24)
      acc65(47)=-Qspl4*acc65(21)
      acc65(48)=QspQ*acc65(43)
      acc65(46)=acc65(48)+acc65(47)+acc65(10)+acc65(46)
      acc65(46)=Qspvak2k1*acc65(46)
      acc65(47)=-QspQ*acc65(36)
      acc65(46)=acc65(46)+acc65(37)+acc65(47)
      acc65(46)=Qspvak2k5*acc65(46)
      acc65(47)=Qspk1*acc65(34)
      acc65(48)=Qspl3*acc65(33)
      acc65(49)=Qspk2*acc65(25)
      acc65(50)=Qspl4*acc65(30)
      acc65(51)=Qspvak2l3*acc65(20)
      acc65(52)=Qspvak2l4*acc65(39)
      acc65(53)=Qspvak2l3*acc65(32)
      acc65(53)=acc65(9)+acc65(53)
      acc65(53)=QspQ*acc65(53)
      acc65(45)=acc65(46)+acc65(45)+acc65(53)+acc65(52)+acc65(51)+acc65(50)+acc&
      &65(49)+acc65(48)+acc65(13)+acc65(47)
      acc65(45)=Qspvak2k5*acc65(45)
      acc65(46)=Qspk1*acc65(15)
      acc65(47)=Qspl3*acc65(18)
      acc65(48)=Qspk2*acc65(17)
      acc65(49)=Qspl4*acc65(19)
      acc65(50)=Qspvak2l3*acc65(5)
      acc65(51)=Qspvak2l4*acc65(12)
      acc65(52)=Qspvak2l4*acc65(38)
      acc65(52)=acc65(16)+acc65(52)
      acc65(52)=QspQ*acc65(52)
      brack=acc65(11)+acc65(44)+acc65(45)+acc65(46)+acc65(47)+acc65(48)+acc65(4&
      &9)+acc65(50)+acc65(51)+acc65(52)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd65h1_qp
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
   & bind(c, name="p0_gg_hhg_d65h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd65h1_qp
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
end module p0_gg_hhg_d65h1l1_qp
