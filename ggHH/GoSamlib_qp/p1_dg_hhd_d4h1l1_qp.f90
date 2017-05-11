module p1_dg_hhd_d4h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity1d4h1l1.f90
   ! generator: buildfortran.py
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_golem95
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc4(58)
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k2
      complex(ki) :: QspQ
      complex(ki) :: Qspl3
      complex(ki) :: Qspl4
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak5l4
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      QspQ = dotproduct(Q,Q)
      Qspl3 = dotproduct(Q,l3)
      Qspl4 = dotproduct(Q,l4)
      Qspk1 = dotproduct(Q,k1)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      acc4(1)=abb4(9)
      acc4(2)=abb4(10)
      acc4(3)=abb4(11)
      acc4(4)=abb4(13)
      acc4(5)=abb4(14)
      acc4(6)=abb4(15)
      acc4(7)=abb4(16)
      acc4(8)=abb4(17)
      acc4(9)=abb4(18)
      acc4(10)=abb4(19)
      acc4(11)=abb4(20)
      acc4(12)=abb4(21)
      acc4(13)=abb4(22)
      acc4(14)=abb4(23)
      acc4(15)=abb4(24)
      acc4(16)=abb4(25)
      acc4(17)=abb4(26)
      acc4(18)=abb4(27)
      acc4(19)=abb4(28)
      acc4(20)=abb4(29)
      acc4(21)=abb4(32)
      acc4(22)=abb4(33)
      acc4(23)=abb4(34)
      acc4(24)=abb4(35)
      acc4(25)=abb4(36)
      acc4(26)=abb4(37)
      acc4(27)=abb4(38)
      acc4(28)=abb4(39)
      acc4(29)=abb4(40)
      acc4(30)=abb4(41)
      acc4(31)=abb4(42)
      acc4(32)=abb4(43)
      acc4(33)=abb4(44)
      acc4(34)=abb4(45)
      acc4(35)=abb4(46)
      acc4(36)=abb4(47)
      acc4(37)=abb4(48)
      acc4(38)=abb4(49)
      acc4(39)=abb4(50)
      acc4(40)=abb4(51)
      acc4(41)=abb4(52)
      acc4(42)=abb4(53)
      acc4(43)=abb4(54)
      acc4(44)=acc4(22)*Qspval4l3
      acc4(45)=acc4(17)*Qspvak2l4
      acc4(46)=acc4(16)*Qspval3l4
      acc4(47)=acc4(10)*Qspvak2l3
      acc4(48)=Qspval3k1*acc4(29)
      acc4(49)=Qspval4k2*acc4(30)
      acc4(50)=Qspvak5l3*acc4(1)
      acc4(51)=Qspval3k2*acc4(38)
      acc4(52)=Qspvak5k1*acc4(15)
      acc4(53)=Qspk2*acc4(4)
      acc4(44)=acc4(53)+acc4(52)+acc4(51)+acc4(50)+acc4(49)+acc4(48)+acc4(8)+ac&
      &c4(47)+acc4(46)+acc4(44)+acc4(45)
      acc4(44)=Qspvak1k2*acc4(44)
      acc4(45)=-QspQ+Qspl3-Qspl4
      acc4(45)=acc4(3)*acc4(45)
      acc4(46)=Qspk1*acc4(24)
      acc4(47)=Qspvak1l4*acc4(41)
      acc4(48)=Qspvak1l3*acc4(43)
      acc4(49)=Qspval4k2*acc4(36)
      acc4(50)=Qspvak5k2*acc4(5)
      acc4(51)=Qspval3k2*acc4(35)
      acc4(52)=Qspvak5k1*acc4(12)
      acc4(53)=Qspk2*acc4(20)
      acc4(54)=Qspvak1k2*acc4(11)
      acc4(45)=acc4(54)+acc4(53)+acc4(52)+acc4(51)+acc4(50)+acc4(49)+acc4(48)+a&
      &cc4(47)+acc4(7)+acc4(46)+acc4(45)
      acc4(45)=QspQ*acc4(45)
      acc4(46)=-Qspvak1l3*acc4(42)
      acc4(47)=Qspval3k1*acc4(23)
      acc4(48)=Qspvak5k2*acc4(18)
      acc4(49)=Qspvak5l3*acc4(28)
      acc4(50)=Qspval3k2*acc4(40)
      acc4(51)=Qspvak5k1*acc4(2)
      acc4(52)=Qspk2*acc4(21)
      acc4(46)=acc4(52)+acc4(51)+acc4(50)+acc4(49)+acc4(48)+acc4(47)+acc4(19)+a&
      &cc4(46)
      acc4(46)=Qspk2*acc4(46)
      acc4(47)=acc4(37)*Qspval4k1
      acc4(48)=acc4(27)*Qspvak5l4
      acc4(49)=Qspk1*acc4(25)
      acc4(50)=Qspl4*acc4(9)
      acc4(51)=Qspvak1l4*acc4(39)
      acc4(52)=Qspvak1l3*acc4(33)
      acc4(53)=Qspval3k1*acc4(6)
      acc4(54)=Qspval4k2*acc4(34)
      acc4(55)=Qspvak5k2*acc4(14)
      acc4(56)=Qspvak5l3*acc4(26)
      acc4(57)=Qspval3k2*acc4(31)
      acc4(58)=Qspvak5k1*acc4(32)
      brack=acc4(13)+acc4(44)+acc4(45)+acc4(46)+acc4(47)+acc4(48)+acc4(49)+acc4&
      &(50)+acc4(51)+acc4(52)+acc4(53)+acc4(54)+acc4(55)+acc4(56)+acc4(57)+acc4&
      &(58)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d4
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d4 = 0.0_ki
      d4 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d4, ki), aimag(d4), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d4h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d4
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d4 = 0.0_ki
      d4 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d4, ki), aimag(d4), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d4h1l1_qp
