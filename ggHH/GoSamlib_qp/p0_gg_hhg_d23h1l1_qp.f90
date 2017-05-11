module p0_gg_hhg_d23h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d23h1l1.f90
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
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(36)
      complex(ki) :: QspQ
      complex(ki) :: Qspl4
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak2k5
      QspQ = dotproduct(Q,Q)
      Qspl4 = dotproduct(Q,l4)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspl3 = dotproduct(Q,l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc23(1)=abb23(11)
      acc23(2)=abb23(12)
      acc23(3)=abb23(13)
      acc23(4)=abb23(14)
      acc23(5)=abb23(15)
      acc23(6)=abb23(16)
      acc23(7)=abb23(17)
      acc23(8)=abb23(18)
      acc23(9)=abb23(19)
      acc23(10)=abb23(20)
      acc23(11)=abb23(21)
      acc23(12)=abb23(22)
      acc23(13)=abb23(23)
      acc23(14)=abb23(24)
      acc23(15)=abb23(25)
      acc23(16)=abb23(27)
      acc23(17)=abb23(28)
      acc23(18)=abb23(30)
      acc23(19)=abb23(31)
      acc23(20)=abb23(32)
      acc23(21)=abb23(34)
      acc23(22)=abb23(36)
      acc23(23)=abb23(39)
      acc23(24)=abb23(42)
      acc23(25)=abb23(43)
      acc23(26)=acc23(1)*QspQ
      acc23(27)=-acc23(7)*Qspl4
      acc23(28)=acc23(10)*Qspk2
      acc23(26)=acc23(28)+acc23(8)+acc23(27)+acc23(26)
      acc23(26)=acc23(26)*Qspvak2k1
      acc23(27)=acc23(13)*QspQ
      acc23(28)=acc23(15)*Qspvak2l3
      acc23(29)=acc23(20)*Qspl4
      acc23(30)=acc23(21)*Qspk2
      acc23(31)=Qspval4k5*acc23(17)
      acc23(32)=Qspval4k1*acc23(22)
      acc23(33)=Qspval3k5*acc23(23)
      acc23(34)=Qspval3k1*acc23(3)
      acc23(35)=Qspvak2l4*acc23(16)
      acc23(36)=Qspl3*acc23(12)
      acc23(26)=acc23(30)+acc23(29)+acc23(27)+acc23(26)+acc23(36)+acc23(35)+acc&
      &23(34)+acc23(33)+acc23(32)+acc23(31)+acc23(28)+acc23(14)
      acc23(26)=Qspvak2k5*acc23(26)
      acc23(27)=acc23(18)*QspQ
      acc23(28)=acc23(24)*Qspl4
      acc23(29)=acc23(25)*Qspk2
      acc23(27)=acc23(29)+acc23(28)+acc23(19)+acc23(27)
      acc23(27)=acc23(27)*Qspvak2k5**2
      acc23(28)=acc23(2)*QspQ
      acc23(28)=acc23(4)+acc23(28)
      acc23(28)=Qspvak2k1*acc23(28)
      acc23(29)=-acc23(5)*QspQ
      acc23(29)=acc23(9)+acc23(29)
      acc23(29)=Qspvak2l3*acc23(29)
      acc23(30)=QspQ+Qspk2
      acc23(30)=acc23(6)*acc23(30)
      brack=acc23(11)+acc23(26)+acc23(27)+acc23(28)+acc23(29)+acc23(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d23h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d23h1l1_qp
