module p0_gg_hhg_d43h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d43h1l1.f90
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
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc43(55)
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspl4
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspk1
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2k5
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspl3 = dotproduct(Q,l3)
      Qspl4 = dotproduct(Q,l4)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspk1 = dotproduct(Q,k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc43(1)=abb43(10)
      acc43(2)=abb43(11)
      acc43(3)=abb43(12)
      acc43(4)=abb43(13)
      acc43(5)=abb43(14)
      acc43(6)=abb43(15)
      acc43(7)=abb43(16)
      acc43(8)=abb43(17)
      acc43(9)=abb43(18)
      acc43(10)=abb43(19)
      acc43(11)=abb43(20)
      acc43(12)=abb43(21)
      acc43(13)=abb43(22)
      acc43(14)=abb43(23)
      acc43(15)=abb43(24)
      acc43(16)=abb43(25)
      acc43(17)=abb43(26)
      acc43(18)=abb43(27)
      acc43(19)=abb43(28)
      acc43(20)=abb43(32)
      acc43(21)=abb43(34)
      acc43(22)=abb43(36)
      acc43(23)=abb43(37)
      acc43(24)=abb43(39)
      acc43(25)=abb43(40)
      acc43(26)=abb43(42)
      acc43(27)=abb43(43)
      acc43(28)=abb43(44)
      acc43(29)=abb43(47)
      acc43(30)=abb43(50)
      acc43(31)=abb43(52)
      acc43(32)=abb43(53)
      acc43(33)=abb43(54)
      acc43(34)=abb43(56)
      acc43(35)=abb43(57)
      acc43(36)=abb43(58)
      acc43(37)=abb43(59)
      acc43(38)=abb43(60)
      acc43(39)=abb43(61)
      acc43(40)=abb43(62)
      acc43(41)=abb43(63)
      acc43(42)=abb43(64)
      acc43(43)=abb43(65)
      acc43(44)=abb43(66)
      acc43(45)=abb43(67)
      acc43(46)=acc43(15)*Qspval4k5
      acc43(47)=-acc43(33)*Qspvak1k5
      acc43(48)=Qspl3*acc43(10)
      acc43(49)=Qspl4*acc43(1)
      acc43(50)=Qspk2*acc43(8)
      acc43(51)=QspQ*acc43(12)
      acc43(52)=Qspvak2l3*acc43(7)
      acc43(53)=Qspvak2l4*acc43(17)
      acc43(54)=Qspvak2k1*acc43(3)
      acc43(46)=acc43(54)+acc43(53)+acc43(52)+acc43(51)+acc43(50)+acc43(49)+acc&
      &43(48)+acc43(47)+acc43(46)+acc43(2)
      acc43(46)=Qspvak2k1*acc43(46)
      acc43(47)=Qspl3+Qspk1
      acc43(47)=acc43(31)*acc43(47)
      acc43(48)=acc43(35)*Qspval3k1
      acc43(49)=Qspval4k1*acc43(34)
      acc43(50)=Qspl4*acc43(29)
      acc43(51)=-QspQ*acc43(33)
      acc43(52)=Qspvak2l3*acc43(27)
      acc43(53)=Qspvak2l4*acc43(30)
      acc43(54)=Qspvak2k1*acc43(11)
      acc43(47)=acc43(54)+acc43(53)+acc43(52)+acc43(51)+acc43(50)+acc43(49)+acc&
      &43(48)+acc43(23)+acc43(47)
      acc43(47)=Qspvak2k5*acc43(47)
      acc43(48)=Qspk1*acc43(41)
      acc43(49)=Qspl3*acc43(39)
      acc43(50)=Qspk2*acc43(40)
      acc43(51)=QspQ*acc43(26)
      acc43(48)=acc43(51)+acc43(50)+acc43(49)+acc43(38)+acc43(48)
      acc43(48)=Qspvak2l4*acc43(48)
      acc43(49)=Qspl4*acc43(45)
      acc43(50)=Qspk2*acc43(44)
      acc43(49)=acc43(50)+acc43(21)+acc43(49)
      acc43(49)=Qspvak2l3*acc43(49)
      acc43(50)=Qspval4k1*acc43(18)
      acc43(51)=Qspk1*acc43(22)
      acc43(52)=Qspl3*acc43(28)
      acc43(53)=Qspl4*acc43(25)
      acc43(54)=Qspk2*acc43(24)
      acc43(55)=QspQ*acc43(20)
      acc43(46)=acc43(47)+acc43(46)+acc43(48)+acc43(49)+acc43(55)+acc43(54)+acc&
      &43(53)+acc43(52)+acc43(51)+acc43(9)+acc43(50)
      acc43(46)=Qspvak2k5*acc43(46)
      acc43(47)=Qspk2*acc43(14)
      acc43(48)=QspQ*acc43(4)
      acc43(49)=Qspvak2k1*acc43(19)
      acc43(47)=acc43(49)+acc43(48)+acc43(5)+acc43(47)
      acc43(47)=Qspvak2k1*acc43(47)
      acc43(48)=Qspk2*acc43(43)
      acc43(49)=QspQ*acc43(32)
      acc43(48)=acc43(49)+acc43(42)+acc43(48)
      acc43(48)=Qspvak2l3*acc43(48)
      acc43(49)=Qspk2*acc43(16)
      acc43(50)=QspQ*acc43(6)
      acc43(51)=QspQ*acc43(36)
      acc43(51)=acc43(37)+acc43(51)
      acc43(51)=Qspvak2l4*acc43(51)
      brack=acc43(13)+acc43(46)+acc43(47)+acc43(48)+acc43(49)+acc43(50)+acc43(5&
      &1)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d43
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d43 = 0.0_ki
      d43 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d43, ki), aimag(d43), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d43h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd43h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d43
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d43 = 0.0_ki
      d43 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d43, ki), aimag(d43), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d43h1l1_qp
