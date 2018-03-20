module     p0_gg_hhg_d49h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d49h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd49h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc49(18)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspk1
      complex(ki) :: Qspk2
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2k5
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspk1 = dotproduct(Q,k1)
      Qspk2 = dotproduct(Q,k2)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      acc49(1)=abb49(8)
      acc49(2)=abb49(9)
      acc49(3)=abb49(10)
      acc49(4)=abb49(11)
      acc49(5)=abb49(12)
      acc49(6)=abb49(13)
      acc49(7)=abb49(14)
      acc49(8)=abb49(15)
      acc49(9)=abb49(16)
      acc49(10)=abb49(17)
      acc49(11)=abb49(18)
      acc49(12)=abb49(19)
      acc49(13)=abb49(20)
      acc49(14)=acc49(12)*Qspvak2l4
      acc49(15)=acc49(14)+acc49(6)
      acc49(15)=Qspval4k5*acc49(15)
      acc49(16)=QspQ*acc49(10)
      acc49(17)=Qspvak2l4*acc49(5)
      acc49(18)=-Qspvak2k1*acc49(12)*Qspvak1k5
      acc49(15)=acc49(18)+acc49(17)+acc49(16)+acc49(2)+acc49(15)
      acc49(15)=Qspvak2k1*acc49(15)
      acc49(16)=QspQ-Qspk1
      acc49(16)=acc49(8)*acc49(16)
      acc49(17)=acc49(13)*Qspk2
      acc49(16)=acc49(17)+acc49(1)+acc49(16)
      acc49(16)=Qspvak2k1*acc49(16)
      acc49(14)=acc49(14)+acc49(9)
      acc49(14)=Qspval4k1*acc49(14)
      acc49(17)=Qspk1*acc49(7)
      acc49(18)=QspQ*acc49(11)
      acc49(14)=acc49(16)+acc49(18)+acc49(3)+acc49(17)+acc49(14)
      acc49(14)=Qspvak2k5*acc49(14)
      acc49(14)=acc49(14)+acc49(4)+acc49(15)
      brack=Qspvak2k5*acc49(14)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d49h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd49h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d49
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d49 = 0.0_ki
      d49 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d49, ki), aimag(d49), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d49h1l1_qp
