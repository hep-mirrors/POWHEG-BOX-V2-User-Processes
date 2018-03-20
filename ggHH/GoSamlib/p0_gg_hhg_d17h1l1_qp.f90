module     p0_gg_hhg_d17h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d17h1l1_qp.f90
   ! generator: buildfortran.py
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc17(21)
      complex(ki) :: Qspvak2k5
      complex(ki) :: QspQ
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      QspQ = dotproduct(Q,Q)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc17(1)=abb17(11)
      acc17(2)=abb17(12)
      acc17(3)=abb17(13)
      acc17(4)=abb17(14)
      acc17(5)=abb17(15)
      acc17(6)=abb17(18)
      acc17(7)=abb17(19)
      acc17(8)=abb17(20)
      acc17(9)=abb17(23)
      acc17(10)=abb17(24)
      acc17(11)=abb17(25)
      acc17(12)=abb17(26)
      acc17(13)=abb17(27)
      acc17(14)=abb17(28)
      acc17(15)=abb17(29)
      acc17(16)=acc17(1)*Qspvak2k5
      acc17(17)=acc17(8)*QspQ
      acc17(18)=Qspval4k5*acc17(2)
      acc17(19)=Qspk5*acc17(9)
      acc17(16)=acc17(19)+acc17(18)+acc17(17)+acc17(16)+acc17(3)
      acc17(16)=Qspvak2l3*acc17(16)
      acc17(17)=acc17(10)*QspQ
      acc17(18)=acc17(12)*Qspval3k5
      acc17(19)=acc17(14)*Qspvak2k5
      acc17(17)=acc17(15)+acc17(19)+acc17(18)+acc17(17)
      acc17(17)=Qspvak2l4*acc17(17)
      acc17(18)=acc17(5)*Qspvak2k5
      acc17(18)=acc17(18)+acc17(4)
      acc17(18)=Qspvak2k1*acc17(18)
      acc17(19)=acc17(6)*Qspvak2k5
      acc17(20)=acc17(11)*QspQ
      acc17(21)=acc17(13)*Qspval3k5
      brack=acc17(7)+acc17(16)+acc17(17)+acc17(18)+acc17(19)+acc17(20)+acc17(21)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d17h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd17h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d17
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d17 = 0.0_ki
      d17 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d17, ki), aimag(d17), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d17h1l1_qp
