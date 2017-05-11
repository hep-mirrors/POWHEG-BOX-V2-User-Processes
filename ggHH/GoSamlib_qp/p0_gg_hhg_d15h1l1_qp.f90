module p0_gg_hhg_d15h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d15h1l1.f90
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
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(40)
      complex(ki) :: Qspl3
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk2
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk5
      Qspl3 = dotproduct(Q,l3)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk2 = dotproduct(Q,k2)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk5 = dotproduct(Q,k5)
      acc15(1)=abb15(11)
      acc15(2)=abb15(12)
      acc15(3)=abb15(13)
      acc15(4)=abb15(14)
      acc15(5)=abb15(15)
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
      acc15(17)=abb15(28)
      acc15(18)=abb15(29)
      acc15(19)=abb15(30)
      acc15(20)=abb15(31)
      acc15(21)=abb15(32)
      acc15(22)=abb15(34)
      acc15(23)=abb15(35)
      acc15(24)=abb15(36)
      acc15(25)=abb15(37)
      acc15(26)=abb15(40)
      acc15(27)=abb15(42)
      acc15(28)=abb15(44)
      acc15(29)=abb15(46)
      acc15(30)=Qspl3*acc15(25)
      acc15(31)=Qspval3k1*acc15(24)
      acc15(32)=Qspval4k1*acc15(26)
      acc15(33)=Qspvak2l4*acc15(1)
      acc15(34)=Qspk2*acc15(29)
      acc15(35)=Qspl4*acc15(11)
      acc15(36)=Qspvak2l3*acc15(13)
      acc15(37)=QspQ*acc15(16)
      acc15(38)=QspQ*acc15(8)
      acc15(38)=acc15(10)+acc15(38)
      acc15(38)=Qspvak2k1*acc15(38)
      acc15(30)=acc15(38)+acc15(37)+acc15(36)+acc15(35)+acc15(34)+acc15(33)+acc&
      &15(32)+acc15(31)+acc15(7)+acc15(30)
      acc15(30)=Qspvak2k5*acc15(30)
      acc15(31)=Qspk2*acc15(18)
      acc15(32)=-Qspl4*acc15(14)
      acc15(33)=QspQ*acc15(23)
      acc15(31)=acc15(33)+acc15(32)+acc15(5)+acc15(31)
      acc15(31)=Qspvak2k1*acc15(31)
      acc15(32)=Qspk2*acc15(6)
      acc15(33)=Qspl4*acc15(4)
      acc15(32)=acc15(33)+acc15(2)+acc15(32)
      acc15(32)=Qspvak2l3*acc15(32)
      acc15(33)=Qspvak2l4*acc15(3)
      acc15(34)=Qspvak2l3*acc15(9)
      acc15(33)=acc15(34)-acc15(21)+acc15(33)
      acc15(33)=QspQ*acc15(33)
      acc15(34)=acc15(15)*Qspk5
      acc15(35)=Qspl3*acc15(17)
      acc15(36)=Qspval3k1*acc15(28)
      acc15(37)=Qspval4k1*acc15(27)
      acc15(38)=Qspvak2l4*acc15(19)
      acc15(39)=Qspk2*acc15(20)
      acc15(40)=Qspl4*acc15(12)
      brack=acc15(22)+acc15(30)+acc15(31)+acc15(32)+acc15(33)+acc15(34)+acc15(3&
      &5)+acc15(36)+acc15(37)+acc15(38)+acc15(39)+acc15(40)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd15h1_qp
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
   & bind(c, name="p0_gg_hhg_d15h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd15h1_qp
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
end module p0_gg_hhg_d15h1l1_qp
