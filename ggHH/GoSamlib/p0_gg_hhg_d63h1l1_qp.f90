module     p0_gg_hhg_d63h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d63h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc63(31)
      complex(ki) :: QspQ
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval4k5
      QspQ = dotproduct(Q,Q)
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      acc63(1)=abb63(8)
      acc63(2)=abb63(9)
      acc63(3)=abb63(10)
      acc63(4)=abb63(11)
      acc63(5)=abb63(12)
      acc63(6)=abb63(13)
      acc63(7)=abb63(14)
      acc63(8)=abb63(15)
      acc63(9)=abb63(16)
      acc63(10)=abb63(17)
      acc63(11)=abb63(18)
      acc63(12)=abb63(19)
      acc63(13)=abb63(20)
      acc63(14)=abb63(21)
      acc63(15)=abb63(22)
      acc63(16)=abb63(23)
      acc63(17)=abb63(24)
      acc63(18)=abb63(25)
      acc63(19)=abb63(26)
      acc63(20)=abb63(27)
      acc63(21)=abb63(28)
      acc63(22)=abb63(29)
      acc63(23)=abb63(32)
      acc63(24)=abb63(33)
      acc63(25)=abb63(35)
      acc63(26)=abb63(38)
      acc63(27)=-QspQ*acc63(18)
      acc63(28)=Qspval4k1*acc63(1)
      acc63(29)=Qspvak2l4*acc63(21)
      acc63(30)=Qspvak2k1*acc63(2)
      acc63(27)=acc63(30)+acc63(29)+acc63(28)+acc63(4)+acc63(27)
      acc63(27)=Qspvak2k1*acc63(27)
      acc63(28)=QspQ*acc63(24)
      acc63(29)=Qspval4k1*acc63(3)
      acc63(30)=Qspvak2k1*acc63(15)
      acc63(28)=acc63(30)+acc63(29)+acc63(12)+acc63(28)
      acc63(28)=Qspvak2k5*acc63(28)
      acc63(29)=-QspQ*acc63(23)
      acc63(30)=-Qspval4k1*acc63(8)
      acc63(29)=acc63(30)+acc63(25)+acc63(29)
      acc63(29)=Qspvak2l4*acc63(29)
      acc63(30)=QspQ*acc63(7)
      acc63(31)=Qspval4k1*acc63(5)
      acc63(27)=acc63(28)+acc63(27)+acc63(29)+acc63(31)+acc63(19)+acc63(30)
      acc63(27)=Qspvak2k5*acc63(27)
      acc63(28)=-acc63(23)*Qspvak1k5
      acc63(29)=-acc63(8)*Qspval4k5
      acc63(28)=acc63(29)+acc63(10)+acc63(28)
      acc63(28)=Qspvak2l4*acc63(28)
      acc63(29)=QspQ*acc63(6)
      acc63(30)=Qspval4k1*acc63(26)
      acc63(31)=Qspvak2k1*acc63(11)
      acc63(28)=acc63(31)+acc63(28)+acc63(30)+acc63(13)+acc63(29)
      acc63(28)=Qspvak2k1*acc63(28)
      acc63(29)=QspQ*acc63(16)
      acc63(30)=Qspval4k1*acc63(22)
      acc63(29)=acc63(30)+acc63(20)+acc63(29)
      acc63(29)=Qspvak2l4*acc63(29)
      acc63(30)=QspQ*acc63(9)
      acc63(31)=Qspval4k1*acc63(17)
      brack=acc63(14)+acc63(27)+acc63(28)+acc63(29)+acc63(30)+acc63(31)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d63h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd63h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d63
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = k2-k4
      Q(1:4)  =cmplx(real(+Q_ext(0:3)  -qshift(:),  ki_nin), aimag(+Q_ext(0:3))&
      &, ki)
      d63 = 0.0_ki
      d63 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d63, ki), aimag(d63), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d63h1l1_qp
