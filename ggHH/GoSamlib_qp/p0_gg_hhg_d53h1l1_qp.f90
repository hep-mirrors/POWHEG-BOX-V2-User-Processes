module p0_gg_hhg_d53h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d53h1l1.f90
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
      use p0_gg_hhg_abbrevd53h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc53(40)
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk5
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2l4
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk1 = dotproduct(Q,k1)
      Qspk5 = dotproduct(Q,k5)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc53(1)=abb53(8)
      acc53(2)=abb53(9)
      acc53(3)=abb53(10)
      acc53(4)=abb53(11)
      acc53(5)=abb53(12)
      acc53(6)=abb53(13)
      acc53(7)=abb53(14)
      acc53(8)=abb53(15)
      acc53(9)=abb53(16)
      acc53(10)=abb53(17)
      acc53(11)=abb53(18)
      acc53(12)=abb53(19)
      acc53(13)=abb53(20)
      acc53(14)=abb53(21)
      acc53(15)=abb53(22)
      acc53(16)=abb53(23)
      acc53(17)=abb53(24)
      acc53(18)=abb53(25)
      acc53(19)=abb53(26)
      acc53(20)=abb53(27)
      acc53(21)=abb53(28)
      acc53(22)=abb53(30)
      acc53(23)=abb53(32)
      acc53(24)=abb53(33)
      acc53(25)=abb53(34)
      acc53(26)=abb53(36)
      acc53(27)=abb53(41)
      acc53(28)=abb53(43)
      acc53(29)=abb53(44)
      acc53(30)=abb53(45)
      acc53(31)=abb53(46)
      acc53(32)=acc53(14)*Qspval4k5
      acc53(33)=acc53(6)*Qspvak1k5
      acc53(34)=Qspk1*acc53(22)
      acc53(35)=Qspk5*acc53(9)
      acc53(36)=Qspl4*acc53(23)
      acc53(37)=Qspvak2l4*acc53(1)
      acc53(38)=QspQ*acc53(20)
      acc53(39)=Qspk2*acc53(3)
      acc53(40)=Qspvak2k1*acc53(13)
      acc53(32)=acc53(40)+acc53(39)+acc53(38)+acc53(37)+acc53(36)+acc53(35)+acc&
      &53(34)+acc53(33)+acc53(32)+acc53(8)
      acc53(32)=Qspvak2k1*acc53(32)
      acc53(33)=Qspl4*acc53(11)
      acc53(34)=QspQ*acc53(21)
      acc53(35)=Qspk2*acc53(26)
      acc53(33)=acc53(35)+acc53(34)+acc53(15)+acc53(33)
      acc53(33)=Qspvak2k1*acc53(33)
      acc53(33)=acc53(28)+acc53(33)
      acc53(33)=Qspvak2k5*acc53(33)
      acc53(34)=Qspk1*acc53(12)
      acc53(35)=Qspk5*acc53(24)
      acc53(36)=Qspl4*acc53(25)
      acc53(37)=Qspvak2l4*acc53(31)
      acc53(38)=QspQ*acc53(27)
      acc53(39)=Qspk2*acc53(5)
      acc53(32)=acc53(33)+acc53(32)+acc53(39)+acc53(38)+acc53(37)+acc53(36)+acc&
      &53(35)+acc53(19)+acc53(34)
      acc53(32)=Qspvak2k5*acc53(32)
      acc53(33)=QspQ*acc53(4)
      acc53(34)=Qspk2*acc53(18)
      acc53(33)=acc53(34)+acc53(10)+acc53(33)
      acc53(33)=Qspvak2k1*acc53(33)
      acc53(34)=Qspvak2l4*acc53(30)
      acc53(35)=-Qspvak2l4*acc53(29)
      acc53(35)=acc53(2)+acc53(35)
      acc53(35)=QspQ*acc53(35)
      acc53(36)=Qspvak2l4*acc53(17)
      acc53(36)=acc53(7)+acc53(36)
      acc53(36)=Qspk2*acc53(36)
      brack=acc53(16)+acc53(32)+acc53(33)+acc53(34)+acc53(35)+acc53(36)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(4) :: qshift
      qshift = k2
      Q(:)  =cmplx(real(+Q_ext(:)  -qshift(:),  ki_gol), 0.0_ki_gol, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d53h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd53h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d53
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d53 = 0.0_ki
      d53 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d53, ki), aimag(d53), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d53h1l1_qp
