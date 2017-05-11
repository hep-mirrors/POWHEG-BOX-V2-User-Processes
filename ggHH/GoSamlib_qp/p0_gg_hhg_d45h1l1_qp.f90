module p0_gg_hhg_d45h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d45h1l1.f90
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
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc45(35)
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspk2
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2l3
      complex(ki) :: QspQ
      complex(ki) :: Qspk1
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspk5 = dotproduct(Q,k5)
      Qspk2 = dotproduct(Q,k2)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      QspQ = dotproduct(Q,Q)
      Qspk1 = dotproduct(Q,k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc45(1)=abb45(8)
      acc45(2)=abb45(9)
      acc45(3)=abb45(10)
      acc45(4)=abb45(11)
      acc45(5)=abb45(12)
      acc45(6)=abb45(13)
      acc45(7)=abb45(14)
      acc45(8)=abb45(15)
      acc45(9)=abb45(16)
      acc45(10)=abb45(17)
      acc45(11)=abb45(18)
      acc45(12)=abb45(19)
      acc45(13)=abb45(20)
      acc45(14)=abb45(21)
      acc45(15)=abb45(22)
      acc45(16)=abb45(23)
      acc45(17)=abb45(24)
      acc45(18)=abb45(25)
      acc45(19)=abb45(26)
      acc45(20)=abb45(27)
      acc45(21)=abb45(28)
      acc45(22)=abb45(31)
      acc45(23)=abb45(33)
      acc45(24)=abb45(34)
      acc45(25)=abb45(35)
      acc45(26)=abb45(36)
      acc45(27)=acc45(18)*Qspvak1k5
      acc45(28)=acc45(1)*Qspval3k5
      acc45(29)=Qspk5*acc45(12)
      acc45(30)=Qspk2*acc45(4)
      acc45(31)=Qspl3*acc45(6)
      acc45(32)=Qspvak2l3*acc45(5)
      acc45(33)=QspQ*acc45(20)
      acc45(34)=Qspk1*acc45(13)
      acc45(35)=Qspvak2k1*acc45(2)
      acc45(27)=acc45(35)+acc45(34)+acc45(33)+acc45(32)+acc45(31)+acc45(30)+acc&
      &45(29)+acc45(28)+acc45(27)+acc45(8)
      acc45(27)=Qspvak2k1*acc45(27)
      acc45(28)=Qspk1-Qspl3
      acc45(28)=acc45(16)*acc45(28)
      acc45(29)=Qspk2*acc45(10)
      acc45(30)=QspQ*acc45(9)
      acc45(28)=acc45(30)+acc45(3)+acc45(29)+acc45(28)
      acc45(28)=Qspvak2k1*acc45(28)
      acc45(29)=QspQ*acc45(11)
      acc45(30)=Qspk1*acc45(23)
      acc45(28)=acc45(28)+acc45(30)+acc45(22)+acc45(29)
      acc45(28)=Qspvak2k5*acc45(28)
      acc45(29)=Qspk5*acc45(17)
      acc45(30)=Qspk2*acc45(19)
      acc45(31)=-Qspl3*acc45(15)
      acc45(32)=Qspvak2l3*acc45(26)
      acc45(33)=-Qspvak2l3*acc45(25)
      acc45(33)=acc45(7)+acc45(33)
      acc45(33)=QspQ*acc45(33)
      acc45(34)=Qspvak2l3*acc45(24)
      acc45(34)=acc45(21)+acc45(34)
      acc45(34)=Qspk1*acc45(34)
      acc45(27)=acc45(28)+acc45(27)+acc45(34)+acc45(33)+acc45(32)+acc45(31)+acc&
      &45(30)+acc45(14)+acc45(29)
      brack=Qspvak2k5*acc45(27)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d45
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d45 = 0.0_ki
      d45 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d45, ki), aimag(d45), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d45h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d45
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d45 = 0.0_ki
      d45 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d45, ki), aimag(d45), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d45h1l1_qp
