module     p0_gg_hhg_d53h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d53h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd53h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc53(22)
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2k1
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc53(1)=abb53(8)
      acc53(2)=abb53(9)
      acc53(3)=abb53(10)
      acc53(4)=abb53(11)
      acc53(5)=abb53(12)
      acc53(6)=abb53(13)
      acc53(7)=abb53(14)
      acc53(8)=abb53(15)
      acc53(9)=abb53(16)
      acc53(10)=abb53(18)
      acc53(11)=abb53(19)
      acc53(12)=abb53(20)
      acc53(13)=abb53(21)
      acc53(14)=abb53(23)
      acc53(15)=abb53(24)
      acc53(16)=abb53(29)
      acc53(17)=abb53(30)
      acc53(18)=Qspk2*acc53(11)
      acc53(19)=-QspQ*acc53(10)
      acc53(18)=acc53(19)+acc53(7)+acc53(18)
      acc53(18)=Qspvak2k5*acc53(18)
      acc53(19)=Qspk2*acc53(17)
      acc53(20)=QspQ*acc53(16)
      acc53(21)=Qspvak2l4*acc53(14)
      acc53(22)=Qspvak2l4*acc53(10)
      acc53(22)=acc53(6)+acc53(22)
      acc53(22)=Qspval4k5*acc53(22)
      acc53(18)=acc53(18)+acc53(22)+acc53(21)+acc53(20)+acc53(13)+acc53(19)
      acc53(18)=Qspvak2k5*acc53(18)
      acc53(19)=QspQ*acc53(5)
      acc53(20)=Qspvak2l4*acc53(2)
      acc53(21)=Qspvak2l4*acc53(15)
      acc53(21)=acc53(3)+acc53(21)
      acc53(21)=Qspval4k5*acc53(21)
      acc53(22)=Qspvak2k5*acc53(1)
      acc53(22)=acc53(12)+acc53(22)
      acc53(22)=Qspvak2k1*acc53(22)
      acc53(18)=acc53(22)+acc53(18)+acc53(21)+acc53(20)+acc53(4)+acc53(19)
      acc53(18)=Qspvak2k1*acc53(18)
      acc53(19)=Qspvak2k5*acc53(9)
      brack=acc53(8)+acc53(18)+acc53(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d53h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
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
