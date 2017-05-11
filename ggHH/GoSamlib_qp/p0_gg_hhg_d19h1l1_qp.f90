module p0_gg_hhg_d19h1l1_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d19h1l1.f90
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
      use p0_gg_hhg_abbrevd19h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc19(25)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval4l3
      complex(ki) :: Qspval3l4
      complex(ki) :: Qspvak2k5
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval4l3 = dotproduct(Q,spval4l3)
      Qspval3l4 = dotproduct(Q,spval3l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc19(1)=abb19(11)
      acc19(2)=abb19(12)
      acc19(3)=abb19(13)
      acc19(4)=abb19(14)
      acc19(5)=abb19(15)
      acc19(6)=abb19(16)
      acc19(7)=abb19(17)
      acc19(8)=abb19(18)
      acc19(9)=abb19(20)
      acc19(10)=abb19(21)
      acc19(11)=abb19(22)
      acc19(12)=abb19(23)
      acc19(13)=abb19(24)
      acc19(14)=abb19(25)
      acc19(15)=abb19(26)
      acc19(16)=abb19(27)
      acc19(17)=abb19(28)
      acc19(18)=abb19(29)
      acc19(19)=acc19(1)*Qspvak2l4
      acc19(20)=acc19(3)*Qspvak2k1
      acc19(21)=acc19(4)*Qspvak2l3
      acc19(22)=acc19(8)*Qspk2
      acc19(23)=acc19(9)*QspQ
      acc19(24)=Qspval4l3*acc19(10)
      acc19(25)=Qspval3l4*acc19(5)
      acc19(19)=acc19(25)+acc19(24)+acc19(23)+acc19(22)+acc19(6)+acc19(21)+acc1&
      &9(20)+acc19(19)
      acc19(19)=Qspvak2k5*acc19(19)
      acc19(20)=acc19(16)*QspQ
      acc19(21)=acc19(18)*Qspk2
      acc19(20)=acc19(21)+acc19(20)+acc19(13)
      acc19(20)=Qspvak2k1*acc19(20)
      acc19(21)=acc19(12)*QspQ
      acc19(21)=acc19(17)+acc19(21)
      acc19(21)=Qspvak2l4*acc19(21)
      acc19(22)=acc19(2)*QspQ
      acc19(22)=acc19(15)+acc19(22)
      acc19(22)=Qspvak2l3*acc19(22)
      acc19(23)=QspQ-Qspk2
      acc19(23)=acc19(11)*acc19(23)
      acc19(24)=acc19(7)*Qspvak2k5**2
      brack=acc19(14)+acc19(19)+acc19(20)+acc19(21)+acc19(22)+acc19(23)+acc19(2&
      &4)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ function numerator_golem95:
   function numerator_golem95(Q_ext, mu2_ext) result(numerator)
      use golem_precision_golem_qp, only: ki_gol => ki
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h1_qp
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
   & bind(c, name="p0_gg_hhg_d19h1l1_ninja_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h1_qp
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
end module p0_gg_hhg_d19h1l1_qp
