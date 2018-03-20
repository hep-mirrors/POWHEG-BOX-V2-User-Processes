module     p0_gg_hhg_d51h0l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity0d51h0l1_qp.f90
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
      use p0_gg_hhg_abbrevd51h0_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc51(33)
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspvak1k2
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      QspQ = dotproduct(Q,Q)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      acc51(1)=abb51(8)
      acc51(2)=abb51(9)
      acc51(3)=abb51(10)
      acc51(4)=abb51(11)
      acc51(5)=abb51(12)
      acc51(6)=abb51(13)
      acc51(7)=abb51(14)
      acc51(8)=abb51(15)
      acc51(9)=abb51(16)
      acc51(10)=abb51(17)
      acc51(11)=abb51(18)
      acc51(12)=abb51(19)
      acc51(13)=abb51(20)
      acc51(14)=abb51(21)
      acc51(15)=abb51(22)
      acc51(16)=abb51(23)
      acc51(17)=abb51(24)
      acc51(18)=abb51(25)
      acc51(19)=abb51(26)
      acc51(20)=abb51(27)
      acc51(21)=abb51(28)
      acc51(22)=abb51(29)
      acc51(23)=abb51(30)
      acc51(24)=abb51(31)
      acc51(25)=abb51(32)
      acc51(26)=abb51(33)
      acc51(27)=acc51(25)*Qspvak2k1
      acc51(28)=Qspval3k5*acc51(1)
      acc51(29)=Qspval3k5*acc51(5)
      acc51(29)=acc51(3)+acc51(29)
      acc51(29)=Qspvak2l3*acc51(29)
      acc51(30)=-QspQ*acc51(15)
      acc51(31)=Qspvak2k5*acc51(11)
      acc51(32)=Qspvak2k5*acc51(17)
      acc51(32)=acc51(20)+acc51(32)
      acc51(32)=Qspk2*acc51(32)
      acc51(27)=acc51(32)+acc51(31)+acc51(30)+acc51(29)+acc51(28)+acc51(12)+acc&
      &51(27)
      acc51(27)=Qspk2*acc51(27)
      acc51(28)=Qspval3k5*acc51(16)
      acc51(28)=acc51(10)+acc51(28)
      acc51(28)=Qspvak2l3*acc51(28)
      acc51(29)=QspQ*acc51(19)
      acc51(30)=-QspQ*acc51(16)
      acc51(30)=acc51(26)+acc51(30)
      acc51(30)=Qspvak2k5*acc51(30)
      acc51(27)=acc51(27)+acc51(30)+acc51(29)+acc51(21)+acc51(28)
      acc51(27)=Qspvak1k5*acc51(27)
      acc51(28)=QspQ*acc51(25)
      acc51(28)=acc51(24)+acc51(28)
      acc51(28)=QspQ*acc51(28)
      acc51(29)=QspQ*acc51(2)
      acc51(29)=acc51(8)+acc51(29)
      acc51(29)=Qspvak2k5*Qspvak1k2*acc51(29)
      acc51(28)=acc51(29)+acc51(4)+acc51(28)
      acc51(28)=Qspvak2k5*acc51(28)
      acc51(29)=Qspvak2k1*acc51(6)
      acc51(30)=Qspval3k5*acc51(23)
      acc51(31)=Qspval3k5*acc51(9)
      acc51(31)=acc51(18)+acc51(31)
      acc51(31)=Qspvak2l3*acc51(31)
      acc51(32)=QspQ*acc51(14)
      acc51(33)=Qspvak2k5*acc51(13)
      acc51(33)=acc51(22)+acc51(33)
      acc51(33)=Qspk2*acc51(33)
      brack=acc51(7)+acc51(27)+acc51(28)+acc51(29)+acc51(30)+acc51(31)+acc51(32&
      &)+acc51(33)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d51h0l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd51h0_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d51
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d51 = 0.0_ki
      d51 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d51, ki), aimag(d51), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d51h0l1_qp
