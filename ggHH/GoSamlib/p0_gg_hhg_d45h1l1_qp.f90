module     p0_gg_hhg_d45h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d45h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd45h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc45(18)
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval3k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2k5
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval3k5 = dotproduct(Q,spval3k5)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval3k1 = dotproduct(Q,spval3k1)
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
      acc45(14)=acc45(12)*Qspvak2l3
      acc45(15)=acc45(14)+acc45(6)
      acc45(15)=Qspval3k5*acc45(15)
      acc45(16)=QspQ*acc45(10)
      acc45(17)=Qspvak2l3*acc45(5)
      acc45(18)=-Qspvak2k1*acc45(12)*Qspvak1k5
      acc45(15)=acc45(18)+acc45(17)+acc45(16)+acc45(2)+acc45(15)
      acc45(15)=Qspvak2k1*acc45(15)
      acc45(16)=QspQ-Qspk1
      acc45(16)=acc45(8)*acc45(16)
      acc45(17)=acc45(13)*Qspk2
      acc45(16)=acc45(17)+acc45(1)+acc45(16)
      acc45(16)=Qspvak2k1*acc45(16)
      acc45(14)=acc45(14)+acc45(9)
      acc45(14)=Qspval3k1*acc45(14)
      acc45(17)=Qspk1*acc45(7)
      acc45(18)=QspQ*acc45(11)
      acc45(14)=acc45(16)+acc45(18)+acc45(3)+acc45(17)+acc45(14)
      acc45(14)=Qspvak2k5*acc45(14)
      acc45(14)=acc45(14)+acc45(4)+acc45(15)
      brack=Qspvak2k5*acc45(14)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d45h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
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
