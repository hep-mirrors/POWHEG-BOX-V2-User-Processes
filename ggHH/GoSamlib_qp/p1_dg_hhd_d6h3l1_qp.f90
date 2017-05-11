module p1_dg_hhd_d6h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity3d6h3l1.f90
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
      use p1_dg_hhd_abbrevd6h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc6(35)
      complex(ki) :: Qspk2
      complex(ki) :: Qspl3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak1k2
      Qspk2 = dotproduct(Q,k2)
      Qspl3 = dotproduct(Q,l3)
      QspQ = dotproduct(Q,Q)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspl4 = dotproduct(Q,l4)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc6(1)=abb6(9)
      acc6(2)=abb6(10)
      acc6(3)=abb6(11)
      acc6(4)=abb6(13)
      acc6(5)=abb6(14)
      acc6(6)=abb6(15)
      acc6(7)=abb6(17)
      acc6(8)=abb6(18)
      acc6(9)=abb6(19)
      acc6(10)=abb6(20)
      acc6(11)=abb6(21)
      acc6(12)=abb6(22)
      acc6(13)=abb6(23)
      acc6(14)=abb6(24)
      acc6(15)=abb6(25)
      acc6(16)=abb6(26)
      acc6(17)=abb6(27)
      acc6(18)=abb6(28)
      acc6(19)=abb6(29)
      acc6(20)=abb6(31)
      acc6(21)=abb6(32)
      acc6(22)=abb6(34)
      acc6(23)=abb6(35)
      acc6(24)=abb6(38)
      acc6(25)=Qspk2*acc6(15)
      acc6(26)=Qspl3*acc6(11)
      acc6(27)=QspQ*acc6(7)
      acc6(25)=acc6(27)+acc6(26)+acc6(9)+acc6(25)
      acc6(25)=Qspvak1k5*acc6(25)
      acc6(26)=acc6(14)*Qspval4k5
      acc6(27)=acc6(5)*Qspvak1l3
      acc6(28)=acc6(4)*Qspval3k5
      acc6(29)=acc6(3)*Qspvak2k5
      acc6(30)=Qspl4*acc6(23)
      acc6(31)=Qspk2*acc6(22)
      acc6(32)=Qspl3*acc6(24)
      acc6(33)=Qspvak1l4*acc6(20)
      acc6(34)=QspQ*acc6(21)
      acc6(35)=Qspvak1k2*acc6(2)
      acc6(25)=acc6(35)+acc6(25)+acc6(34)+acc6(33)+acc6(32)+acc6(31)+acc6(30)+a&
      &cc6(29)+acc6(28)+acc6(27)+acc6(26)+acc6(10)
      acc6(25)=Qspvak1k2*acc6(25)
      acc6(26)=Qspl4*acc6(18)
      acc6(27)=Qspk2*acc6(6)
      acc6(28)=Qspl3*acc6(17)
      acc6(29)=Qspvak1l4*acc6(13)
      acc6(30)=Qspvak1l4*acc6(12)
      acc6(30)=acc6(1)+acc6(30)
      acc6(30)=QspQ*acc6(30)
      acc6(31)=QspQ*acc6(16)
      acc6(31)=acc6(19)+acc6(31)
      acc6(31)=Qspvak1k5*acc6(31)
      brack=acc6(8)+acc6(25)+acc6(26)+acc6(27)+acc6(28)+acc6(29)+acc6(30)+acc6(&
      &31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd6h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d6h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd6h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d6h3l1_qp
