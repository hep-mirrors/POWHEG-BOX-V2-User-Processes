module     p0_gg_hhg_d21h1l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity1d21h1l1_qp.f90
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
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc21(24)
      complex(ki) :: Qspval3k1
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak2l3
      complex(ki) :: Qspk2
      complex(ki) :: QspQ
      complex(ki) :: Qspvak2k1
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak2l4
      Qspval3k1 = dotproduct(Q,spval3k1)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak2l3 = dotproduct(Q,spvak2l3)
      Qspk2 = dotproduct(Q,k2)
      QspQ = dotproduct(Q,Q)
      Qspvak2k1 = dotproduct(Q,spvak2k1)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak2l4 = dotproduct(Q,spvak2l4)
      acc21(1)=abb21(11)
      acc21(2)=abb21(12)
      acc21(3)=abb21(13)
      acc21(4)=abb21(14)
      acc21(5)=abb21(15)
      acc21(6)=abb21(16)
      acc21(7)=abb21(17)
      acc21(8)=abb21(18)
      acc21(9)=abb21(19)
      acc21(10)=abb21(20)
      acc21(11)=abb21(21)
      acc21(12)=abb21(22)
      acc21(13)=abb21(23)
      acc21(14)=abb21(24)
      acc21(15)=abb21(25)
      acc21(16)=abb21(29)
      acc21(17)=abb21(31)
      acc21(18)=abb21(34)
      acc21(19)=acc21(4)*Qspval3k1
      acc21(20)=-Qspval3k5*acc21(11)
      acc21(19)=acc21(20)+acc21(1)+acc21(19)
      acc21(19)=Qspvak2l3*acc21(19)
      acc21(20)=Qspk2*acc21(13)
      acc21(21)=QspQ*acc21(2)
      acc21(20)=acc21(21)+acc21(6)+acc21(20)
      acc21(20)=Qspvak2k1*acc21(20)
      acc21(21)=Qspk2*acc21(18)
      acc21(22)=-QspQ*acc21(11)
      acc21(21)=acc21(22)+acc21(3)+acc21(21)
      acc21(21)=Qspvak2k5*acc21(21)
      acc21(22)=Qspk2*acc21(17)
      acc21(23)=QspQ*acc21(15)
      acc21(24)=Qspval3k5*acc21(16)
      acc21(19)=acc21(21)+acc21(20)+acc21(19)+acc21(24)+acc21(23)+acc21(14)+acc&
      &21(22)
      acc21(19)=Qspvak2k5*acc21(19)
      acc21(20)=Qspvak2l3*acc21(4)
      acc21(20)=acc21(20)+acc21(9)
      acc21(20)=Qspval3k5*acc21(20)
      acc21(21)=QspQ*acc21(12)
      acc21(20)=acc21(7)+acc21(21)+acc21(20)
      acc21(20)=Qspvak2k1*acc21(20)
      acc21(21)=acc21(5)*Qspvak2l4
      acc21(22)=Qspvak2l3*acc21(8)
      brack=acc21(10)+acc21(19)+acc21(20)+acc21(21)+acc21(22)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p0_gg_hhg_d21h1l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd21h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d21
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d21 = 0.0_ki
      d21 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d21, ki), aimag(d21), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p0_gg_hhg_d21h1l1_qp
