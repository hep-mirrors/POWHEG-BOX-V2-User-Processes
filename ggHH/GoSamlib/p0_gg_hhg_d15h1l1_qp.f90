module     p0_gg_hhg_d15h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d15h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc15(23)
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspval3l4
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspval4l3
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspval3l4 = dotproduct(Q,spval3l4)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspval4l3 = dotproduct(Q,spval4l3)
      acc15(1)=abb15(11)
      acc15(2)=abb15(12)
      acc15(3)=abb15(13)
      acc15(4)=abb15(14)
      acc15(5)=abb15(15)
      acc15(6)=abb15(16)
      acc15(7)=abb15(17)
      acc15(8)=abb15(18)
      acc15(9)=abb15(19)
      acc15(10)=abb15(20)
      acc15(11)=abb15(21)
      acc15(12)=abb15(22)
      acc15(13)=abb15(24)
      acc15(14)=abb15(25)
      acc15(15)=abb15(27)
      acc15(16)=abb15(33)
      acc15(17)=Qspvak2l4*acc15(5)
      acc15(18)=Qspval3l4*acc15(14)
      acc15(19)=QspQ*acc15(6)
      acc15(20)=QspQ*acc15(9)
      acc15(20)=acc15(12)+acc15(20)
      acc15(20)=Qspvak2k1*acc15(20)
      acc15(17)=acc15(20)+acc15(19)+acc15(18)+acc15(16)+acc15(17)
      acc15(17)=Qspvak2k5*acc15(17)
      acc15(18)=Qspvak2l3*acc15(3)
      acc15(19)=Qspval4l3*acc15(11)
      acc15(20)=QspQ*acc15(10)
      acc15(18)=acc15(20)+acc15(19)+acc15(2)+acc15(18)
      acc15(18)=Qspvak2k1*acc15(18)
      acc15(19)=Qspvak2l3*acc15(1)
      acc15(20)=Qspvak2l4*acc15(8)
      acc15(21)=Qspval3l4*acc15(13)
      acc15(22)=Qspval4l3*acc15(4)
      acc15(23)=QspQ*acc15(7)
      brack=acc15(15)+acc15(17)+acc15(18)+acc15(19)+acc15(20)+acc15(21)+acc15(2&
      &2)+acc15(23)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d15h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd15h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d15
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d15 = 0.0_ki
      d15 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d15, ki), aimag(d15), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d15h1l1_qp
