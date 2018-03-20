module     p0_gg_hhg_d47h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d47h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc47(22)
      complex(ki) :: Qspk1
      complex(ki) :: Qspval4k1
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspval3k5
      Qspk1 = dotproduct(Q,k1)
      Qspval4k1 = dotproduct(Q,spval4k1)
      QspQ = dotproduct(Q,Q)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      acc47(1)=abb47(10)
      acc47(2)=abb47(11)
      acc47(3)=abb47(12)
      acc47(4)=abb47(13)
      acc47(5)=abb47(14)
      acc47(6)=abb47(15)
      acc47(7)=abb47(16)
      acc47(8)=abb47(17)
      acc47(9)=abb47(18)
      acc47(10)=abb47(19)
      acc47(11)=abb47(20)
      acc47(12)=abb47(23)
      acc47(13)=abb47(24)
      acc47(14)=abb47(25)
      acc47(15)=abb47(27)
      acc47(16)=abb47(28)
      acc47(17)=abb47(33)
      acc47(18)=abb47(34)
      acc47(19)=acc47(18)*Qspk1
      acc47(20)=acc47(17)*Qspval4k1
      acc47(21)=acc47(10)*QspQ
      acc47(19)=acc47(21)+acc47(16)+acc47(19)+acc47(20)
      acc47(19)=Qspvak2l3*acc47(19)
      acc47(20)=Qspvak2l4*acc47(2)
      acc47(21)=Qspvak2l3*acc47(6)
      acc47(20)=acc47(21)+acc47(3)+acc47(20)
      acc47(20)=Qspvak2k1*acc47(20)
      acc47(21)=Qspvak2l4*acc47(12)
      acc47(22)=Qspvak2k1*acc47(5)
      acc47(22)=acc47(13)+acc47(22)
      acc47(22)=Qspvak2k5*acc47(22)
      acc47(19)=acc47(22)+acc47(20)+acc47(19)+acc47(11)+acc47(21)
      acc47(19)=Qspvak2k5*acc47(19)
      acc47(20)=Qspval3k5*acc47(4)
      acc47(21)=Qspval3k5*acc47(1)
      acc47(21)=acc47(7)+acc47(21)
      acc47(21)=Qspvak2l4*acc47(21)
      acc47(20)=acc47(21)+acc47(8)+acc47(20)
      acc47(20)=Qspvak2k1*acc47(20)
      acc47(21)=Qspvak2l4*acc47(14)
      acc47(22)=Qspvak2l3*acc47(15)
      brack=acc47(9)+acc47(19)+acc47(20)+acc47(21)+acc47(22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d47h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd47h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d47
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d47 = 0.0_ki
      d47 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d47, ki), aimag(d47), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d47h1l1_qp
