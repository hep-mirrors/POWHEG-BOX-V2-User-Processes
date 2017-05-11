module p0_gg_hhg_d21h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d21h1l1.f90
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
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(36)
      complex(ki) :: QspQ
      complex(ki) :: Qspl3
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspl4
      complex(ki) :: Qspvak2k5
      QspQ = dotproduct(Q,Q)
      Qspl3 = dotproduct(Q,l3)
      Qspk2 = dotproduct(Q,k2)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspl4 = dotproduct(Q,l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc21(1)=abb21(11)
      acc21(2)=abb21(12)
      acc21(3)=abb21(13)
      acc21(4)=abb21(14)
      acc21(5)=abb21(15)
      acc21(6)=abb21(16)
      acc21(7)=abb21(17)
      acc21(8)=abb21(18)
      acc21(9)=abb21(19)
      acc21(10)=abb21(21)
      acc21(11)=abb21(22)
      acc21(12)=abb21(23)
      acc21(13)=abb21(24)
      acc21(14)=abb21(25)
      acc21(15)=abb21(27)
      acc21(16)=abb21(28)
      acc21(17)=abb21(30)
      acc21(18)=abb21(31)
      acc21(19)=abb21(34)
      acc21(20)=abb21(36)
      acc21(21)=abb21(38)
      acc21(22)=abb21(40)
      acc21(23)=abb21(42)
      acc21(24)=abb21(43)
      acc21(25)=abb21(44)
      acc21(26)=acc21(1)*QspQ
      acc21(27)=-acc21(7)*Qspl3
      acc21(28)=acc21(8)*Qspk2
      acc21(26)=acc21(28)+acc21(27)+acc21(5)+acc21(26)
      acc21(26)=acc21(26)*Qspvak2k1
      acc21(27)=acc21(12)*QspQ
      acc21(28)=acc21(18)*Qspl3
      acc21(29)=acc21(19)*Qspk2
      acc21(30)=acc21(21)*Qspvak2l4
      acc21(31)=Qspval4k5*acc21(20)
      acc21(32)=Qspval4k1*acc21(3)
      acc21(33)=Qspval3k5*acc21(16)
      acc21(34)=Qspval3k1*acc21(22)
      acc21(35)=Qspvak2l3*acc21(14)
      acc21(36)=Qspl4*acc21(11)
      acc21(26)=acc21(29)+acc21(28)+acc21(27)+acc21(26)+acc21(36)+acc21(35)+acc&
      &21(34)+acc21(33)+acc21(32)+acc21(31)+acc21(30)+acc21(13)
      acc21(26)=Qspvak2k5*acc21(26)
      acc21(27)=acc21(15)*QspQ
      acc21(28)=acc21(23)*Qspl3
      acc21(29)=acc21(24)*Qspk2
      acc21(27)=acc21(29)+acc21(28)+acc21(17)+acc21(27)
      acc21(27)=acc21(27)*Qspvak2k5**2
      acc21(28)=acc21(2)*QspQ
      acc21(28)=acc21(4)+acc21(28)
      acc21(28)=Qspvak2k1*acc21(28)
      acc21(29)=-acc21(9)*QspQ
      acc21(29)=acc21(25)+acc21(29)
      acc21(29)=Qspvak2l4*acc21(29)
      acc21(30)=-QspQ-Qspk2
      acc21(30)=acc21(6)*acc21(30)
      brack=acc21(10)+acc21(26)+acc21(27)+acc21(28)+acc21(29)+acc21(30)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      real(ki_gol), dimension(0:3), intent(in) :: Q_ext
      real(ki_gol), intent(in) :: mu2_ext
      complex(ki_gol) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(:)  =cmplx(real(-Q_ext(:),  ki_gol), 0.0_ki_gol, ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_gol)
   end function numerator_golem95
   !------#] function numerator_golem95:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d21h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d21h1l1_qp
