module     p0_gg_hhg_d61h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d61h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd61h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc61(34)
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      acc61(1)=abb61(10)
      acc61(2)=abb61(11)
      acc61(3)=abb61(12)
      acc61(4)=abb61(13)
      acc61(5)=abb61(14)
      acc61(6)=abb61(15)
      acc61(7)=abb61(16)
      acc61(8)=abb61(17)
      acc61(9)=abb61(18)
      acc61(10)=abb61(19)
      acc61(11)=abb61(20)
      acc61(12)=abb61(21)
      acc61(13)=abb61(22)
      acc61(14)=abb61(23)
      acc61(15)=abb61(24)
      acc61(16)=abb61(25)
      acc61(17)=abb61(26)
      acc61(18)=abb61(27)
      acc61(19)=abb61(28)
      acc61(20)=abb61(29)
      acc61(21)=abb61(30)
      acc61(22)=abb61(31)
      acc61(23)=abb61(32)
      acc61(24)=abb61(34)
      acc61(25)=abb61(35)
      acc61(26)=abb61(36)
      acc61(27)=abb61(38)
      acc61(28)=abb61(39)
      acc61(29)=Qspk2*acc61(28)
      acc61(30)=QspQ*acc61(4)
      acc61(31)=acc61(24)*Qspval3k5
      acc61(31)=acc61(2)+acc61(31)
      acc61(31)=Qspvak2l3*acc61(31)
      acc61(29)=acc61(31)+acc61(30)+acc61(11)+acc61(29)
      acc61(29)=Qspvak2k1*acc61(29)
      acc61(30)=Qspk2*acc61(3)
      acc61(31)=QspQ*acc61(25)
      acc61(30)=acc61(31)+acc61(10)+acc61(30)
      acc61(30)=Qspvak2k1*acc61(30)
      acc61(31)=Qspvak2l3*acc61(24)
      acc61(31)=acc61(31)+acc61(22)
      acc61(31)=Qspval3k1*acc61(31)
      acc61(32)=QspQ*acc61(17)
      acc61(30)=acc61(30)+acc61(14)+acc61(32)+acc61(31)
      acc61(30)=Qspvak2k5*acc61(30)
      acc61(31)=Qspvak2l4*acc61(27)
      acc61(32)=QspQ*acc61(21)
      acc61(33)=Qspval3k1*acc61(23)
      acc61(34)=Qspval3k1*acc61(20)
      acc61(34)=acc61(12)+acc61(34)
      acc61(34)=Qspvak2l3*acc61(34)
      acc61(29)=acc61(30)+acc61(29)+acc61(34)+acc61(33)+acc61(32)+acc61(9)+acc6&
      &1(31)
      acc61(29)=Qspvak2k5*acc61(29)
      acc61(30)=Qspk2*acc61(19)
      acc61(31)=QspQ*acc61(15)
      acc61(32)=Qspval3k5*acc61(18)
      acc61(32)=acc61(6)+acc61(32)
      acc61(32)=Qspvak2l3*acc61(32)
      acc61(30)=acc61(32)+acc61(31)+acc61(13)+acc61(30)
      acc61(30)=Qspvak2k1*acc61(30)
      acc61(31)=Qspvak2l4*acc61(26)
      acc61(32)=QspQ*acc61(16)
      acc61(33)=Qspval3k1*acc61(7)
      acc61(34)=Qspval3k1*acc61(5)
      acc61(34)=acc61(1)+acc61(34)
      acc61(34)=Qspvak2l3*acc61(34)
      brack=acc61(8)+acc61(29)+acc61(30)+acc61(31)+acc61(32)+acc61(33)+acc61(34)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d61h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd61h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d61
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      real(ki), dimension(0:3) :: qshift
      qshift = -k3-k4
      Q(1:4)  =cmplx(real(-Q_ext(0:3)  -qshift(:),  ki_nin), aimag(-Q_ext(0:3))&
      &, ki)
      d61 = 0.0_ki
      d61 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d61, ki), aimag(d61), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d61h1l1_qp
