module     p0_gg_hhg_d23h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d23h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc23(24)
      complex(ki) :: Qspval4k1
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak2l4
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l3
      Qspval4k1 = dotproduct(Q,spval4k1)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      acc23(1)=abb23(11)
      acc23(2)=abb23(12)
      acc23(3)=abb23(13)
      acc23(4)=abb23(14)
      acc23(5)=abb23(15)
      acc23(6)=abb23(16)
      acc23(7)=abb23(17)
      acc23(8)=abb23(18)
      acc23(9)=abb23(19)
      acc23(10)=abb23(20)
      acc23(11)=abb23(21)
      acc23(12)=abb23(22)
      acc23(13)=abb23(23)
      acc23(14)=abb23(24)
      acc23(15)=abb23(25)
      acc23(16)=abb23(29)
      acc23(17)=abb23(31)
      acc23(18)=abb23(34)
      acc23(19)=acc23(4)*Qspval4k1
      acc23(20)=-Qspval4k5*acc23(11)
      acc23(19)=acc23(20)+acc23(1)+acc23(19)
      acc23(19)=Qspvak2l4*acc23(19)
      acc23(20)=Qspk2*acc23(13)
      acc23(21)=QspQ*acc23(2)
      acc23(20)=acc23(21)+acc23(6)+acc23(20)
      acc23(20)=Qspvak2k1*acc23(20)
      acc23(21)=Qspk2*acc23(18)
      acc23(22)=-QspQ*acc23(11)
      acc23(21)=acc23(22)+acc23(3)+acc23(21)
      acc23(21)=Qspvak2k5*acc23(21)
      acc23(22)=Qspk2*acc23(17)
      acc23(23)=QspQ*acc23(15)
      acc23(24)=Qspval4k5*acc23(16)
      acc23(19)=acc23(21)+acc23(20)+acc23(19)+acc23(24)+acc23(23)+acc23(14)+acc&
      &23(22)
      acc23(19)=Qspvak2k5*acc23(19)
      acc23(20)=Qspvak2l4*acc23(4)
      acc23(20)=acc23(20)+acc23(9)
      acc23(20)=Qspval4k5*acc23(20)
      acc23(21)=QspQ*acc23(12)
      acc23(20)=acc23(7)+acc23(21)+acc23(20)
      acc23(20)=Qspvak2k1*acc23(20)
      acc23(21)=acc23(5)*Qspvak2l3
      acc23(22)=Qspvak2l4*acc23(8)
      brack=acc23(10)+acc23(19)+acc23(20)+acc23(21)+acc23(22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d23h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d23
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d23 = 0.0_ki
      d23 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d23, ki), aimag(d23), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d23h1l1_qp
