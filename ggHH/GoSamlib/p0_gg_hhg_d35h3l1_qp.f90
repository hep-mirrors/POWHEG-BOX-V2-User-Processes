module     p0_gg_hhg_d35h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity3d35h3l1_qp.f90
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
      use p0_gg_hhg_abbrevd35h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc35(19)
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspk5
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak5k2
      complex(ki) :: Qspvak5k1
      complex(ki) :: Qspvak2k1
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspk5 = dotproduct(Q,k5)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak5k2 = dotproduct(Q,spvak5k2)
      Qspvak5k1 = dotproduct(Q,spvak5k1)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      acc35(1)=abb35(6)
      acc35(2)=abb35(7)
      acc35(3)=abb35(8)
      acc35(4)=abb35(9)
      acc35(5)=abb35(10)
      acc35(6)=abb35(11)
      acc35(7)=abb35(12)
      acc35(8)=abb35(13)
      acc35(9)=abb35(14)
      acc35(10)=abb35(15)
      acc35(11)=abb35(16)
      acc35(12)=abb35(17)
      acc35(13)=abb35(19)
      acc35(14)=abb35(21)
      acc35(15)=-Qspk2-QspQ
      acc35(15)=acc35(4)*acc35(15)
      acc35(16)=acc35(6)*Qspk5
      acc35(17)=Qspvak2k5*acc35(2)*Qspvak5k2
      acc35(18)=Qspvak5k1*acc35(1)
      acc35(15)=acc35(18)+acc35(17)+acc35(16)+acc35(3)+acc35(15)
      acc35(15)=Qspvak2k1*acc35(15)
      acc35(16)=Qspvak2k5*acc35(5)
      acc35(17)=Qspvak5k1*acc35(13)
      acc35(18)=Qspk2*acc35(11)
      acc35(16)=acc35(18)+acc35(17)+acc35(10)+acc35(16)
      acc35(16)=Qspk2*acc35(16)
      acc35(17)=QspQ*acc35(12)
      acc35(18)=Qspvak2k5*acc35(14)
      acc35(19)=Qspvak2k5*acc35(7)
      acc35(19)=acc35(9)+acc35(19)
      acc35(19)=Qspvak5k1*acc35(19)
      brack=acc35(8)+acc35(15)+acc35(16)+acc35(17)+acc35(18)+acc35(19)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d35h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd35h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d35
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k2+k5
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d35 = 0.0_ki
      d35 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d35, ki), aimag(d35), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d35h3l1_qp
