module p0_gg_hhg_d19h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d19h3l1.f90
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
      use p0_gg_hhg_abbrevd19h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc19(61)
      complex(ki) :: QspQ
      complex(ki) :: Qspl3
      complex(ki) :: Qspl4
      complex(ki) :: Qspk5
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak5l4
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak5l3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspval4k1
      QspQ = dotproduct(Q,Q)
      Qspl3 = dotproduct(Q,l3)
      Qspl4 = dotproduct(Q,l4)
      Qspk5 = dotproduct(Q,k5)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak5l4 = dotproduct(Q,spvak5l4)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak5l3 = dotproduct(Q,spvak5l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspval4k1 = dotproduct(Q,spval4k1)
      acc19(1)=abb19(10)
      acc19(2)=abb19(11)
      acc19(3)=abb19(12)
      acc19(4)=abb19(13)
      acc19(5)=abb19(14)
      acc19(6)=abb19(15)
      acc19(7)=abb19(16)
      acc19(8)=abb19(17)
      acc19(9)=abb19(18)
      acc19(10)=abb19(20)
      acc19(11)=abb19(21)
      acc19(12)=abb19(23)
      acc19(13)=abb19(24)
      acc19(14)=abb19(25)
      acc19(15)=abb19(26)
      acc19(16)=abb19(27)
      acc19(17)=abb19(28)
      acc19(18)=abb19(31)
      acc19(19)=abb19(32)
      acc19(20)=abb19(33)
      acc19(21)=abb19(34)
      acc19(22)=abb19(35)
      acc19(23)=abb19(36)
      acc19(24)=abb19(39)
      acc19(25)=abb19(40)
      acc19(26)=abb19(41)
      acc19(27)=abb19(42)
      acc19(28)=abb19(43)
      acc19(29)=abb19(44)
      acc19(30)=abb19(45)
      acc19(31)=abb19(46)
      acc19(32)=abb19(47)
      acc19(33)=abb19(50)
      acc19(34)=abb19(51)
      acc19(35)=abb19(52)
      acc19(36)=abb19(53)
      acc19(37)=abb19(54)
      acc19(38)=abb19(57)
      acc19(39)=abb19(58)
      acc19(40)=abb19(59)
      acc19(41)=abb19(60)
      acc19(42)=abb19(63)
      acc19(43)=abb19(65)
      acc19(44)=QspQ-Qspl3+Qspl4
      acc19(44)=acc19(22)*acc19(44)
      acc19(45)=Qspk5*acc19(18)
      acc19(46)=Qspval4k2*acc19(41)
      acc19(47)=Qspvak5k1*acc19(14)
      acc19(48)=Qspvak5l4*acc19(4)
      acc19(49)=Qspval3k2*acc19(21)
      acc19(50)=Qspvak5l3*acc19(37)
      acc19(51)=Qspvak2k1*acc19(9)
      acc19(52)=Qspvak2k5*acc19(32)
      acc19(53)=Qspk2*acc19(10)
      acc19(44)=acc19(53)+acc19(52)+acc19(51)+acc19(50)+acc19(49)+acc19(48)+acc&
      &19(47)+acc19(46)+acc19(5)+acc19(45)+acc19(44)
      acc19(44)=QspQ*acc19(44)
      acc19(45)=Qspval3k1*acc19(30)
      acc19(46)=Qspval3k5*acc19(43)
      acc19(47)=Qspvak2l3*acc19(6)
      acc19(48)=Qspval3k2*acc19(13)
      acc19(49)=Qspvak5l3*acc19(36)
      acc19(50)=Qspvak2k1*acc19(8)
      acc19(51)=Qspvak2k5*acc19(3)
      acc19(52)=Qspk2*acc19(23)
      acc19(45)=acc19(52)+acc19(51)+acc19(50)+acc19(49)+acc19(48)+acc19(47)+acc&
      &19(46)+acc19(11)+acc19(45)
      acc19(45)=Qspk2*acc19(45)
      acc19(46)=acc19(35)*Qspval4l3
      acc19(47)=acc19(24)*Qspval3l4
      acc19(48)=Qspvak2l4*acc19(17)
      acc19(49)=Qspvak2l3*acc19(2)
      acc19(50)=Qspvak2k1*acc19(1)
      acc19(51)=Qspvak2k5*acc19(15)
      acc19(46)=acc19(51)+acc19(50)+acc19(49)+acc19(48)+acc19(47)+acc19(46)+acc&
      &19(31)
      acc19(46)=Qspvak5k2*acc19(46)
      acc19(47)=acc19(39)*Qspval4k5
      acc19(48)=acc19(38)*Qspval4k1
      acc19(49)=Qspl4*acc19(29)
      acc19(50)=Qspk5*acc19(28)
      acc19(51)=Qspvak2l4*acc19(27)
      acc19(52)=Qspval3k1*acc19(20)
      acc19(53)=Qspval3k5*acc19(42)
      acc19(54)=Qspval4k2*acc19(40)
      acc19(55)=Qspvak5k1*acc19(26)
      acc19(56)=Qspvak5l4*acc19(25)
      acc19(57)=Qspvak2l3*acc19(16)
      acc19(58)=Qspval3k2*acc19(19)
      acc19(59)=Qspvak5l3*acc19(34)
      acc19(60)=Qspvak2k1*acc19(7)
      acc19(61)=Qspvak2k5*acc19(33)
      brack=acc19(12)+acc19(44)+acc19(45)+acc19(46)+acc19(47)+acc19(48)+acc19(4&
      &9)+acc19(50)+acc19(51)+acc19(52)+acc19(53)+acc19(54)+acc19(55)+acc19(56)&
      &+acc19(57)+acc19(58)+acc19(59)+acc19(60)+acc19(61)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d19
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(+Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d19 = 0.0_ki
      d19 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d19, ki), aimag(d19), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d19h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d19
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(+Q_ext(0:3),  ki_nin), aimag(+Q_ext(0:3)), ki)
      d19 = 0.0_ki
      d19 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d19, ki), aimag(d19), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d19h3l1_qp
