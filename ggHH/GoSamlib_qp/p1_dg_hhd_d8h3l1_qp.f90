module p1_dg_hhd_d8h3l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity3d8h3l1.f90
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
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc8(35)
      complex(ki) :: Qspk2
      complex(ki) :: Qspl4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspl3
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak1k2
      Qspk2 = dotproduct(Q,k2)
      Qspl4 = dotproduct(Q,l4)
      QspQ = dotproduct(Q,Q)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspl3 = dotproduct(Q,l3)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc8(1)=abb8(9)
      acc8(2)=abb8(10)
      acc8(3)=abb8(11)
      acc8(4)=abb8(13)
      acc8(5)=abb8(14)
      acc8(6)=abb8(15)
      acc8(7)=abb8(17)
      acc8(8)=abb8(18)
      acc8(9)=abb8(19)
      acc8(10)=abb8(20)
      acc8(11)=abb8(21)
      acc8(12)=abb8(22)
      acc8(13)=abb8(23)
      acc8(14)=abb8(24)
      acc8(15)=abb8(25)
      acc8(16)=abb8(26)
      acc8(17)=abb8(27)
      acc8(18)=abb8(28)
      acc8(19)=abb8(29)
      acc8(20)=abb8(30)
      acc8(21)=abb8(31)
      acc8(22)=abb8(33)
      acc8(23)=abb8(35)
      acc8(24)=abb8(39)
      acc8(25)=Qspk2*acc8(15)
      acc8(26)=Qspl4*acc8(14)
      acc8(27)=QspQ*acc8(11)
      acc8(25)=acc8(27)+acc8(26)+acc8(9)+acc8(25)
      acc8(25)=Qspvak1k5*acc8(25)
      acc8(26)=acc8(20)*Qspvak1l4
      acc8(27)=acc8(7)*Qspval3k5
      acc8(28)=acc8(4)*Qspval4k5
      acc8(29)=acc8(3)*Qspvak2k5
      acc8(30)=Qspl3*acc8(24)
      acc8(31)=Qspk2*acc8(23)
      acc8(32)=Qspl4*acc8(22)
      acc8(33)=Qspvak1l3*acc8(5)
      acc8(34)=QspQ*acc8(21)
      acc8(35)=Qspvak1k2*acc8(2)
      acc8(25)=acc8(35)+acc8(25)+acc8(34)+acc8(33)+acc8(32)+acc8(31)+acc8(30)+a&
      &cc8(29)+acc8(28)+acc8(27)+acc8(26)+acc8(10)
      acc8(25)=Qspvak1k2*acc8(25)
      acc8(26)=Qspl3*acc8(17)
      acc8(27)=Qspk2*acc8(6)
      acc8(28)=Qspl4*acc8(18)
      acc8(29)=Qspvak1l3*acc8(13)
      acc8(30)=Qspvak1l3*acc8(12)
      acc8(30)=acc8(1)+acc8(30)
      acc8(30)=QspQ*acc8(30)
      acc8(31)=QspQ*acc8(16)
      acc8(31)=acc8(19)+acc8(31)
      acc8(31)=Qspvak1k5*acc8(31)
      brack=acc8(8)+acc8(25)+acc8(26)+acc8(27)+acc8(28)+acc8(29)+acc8(30)+acc8(&
      &31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d8
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d8 = 0.0_ki
      d8 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d8, ki), aimag(d8), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d8h3l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d8
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d8 = 0.0_ki
      d8 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d8, ki), aimag(d8), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d8h3l1_qp
