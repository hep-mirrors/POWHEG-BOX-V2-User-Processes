module     p1_dg_hhd_d6h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity3d6h3l1_qp.f90
   ! generator: buildfortran.py
   use p1_dg_hhd_config, only: ki => ki_qp
   use p1_dg_hhd_util_qp, only: cond
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   public :: numerator_ninja
contains
!---#[ function brack_1:
   pure function brack_1(Q,mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd6h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc6(28)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval3k5
      complex(ki) :: Qspvak1l3
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval3k2
      complex(ki) :: Qspvak1l4
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval3k5 = dotproduct(Q,spval3k5)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval3k2 = dotproduct(Q,spval3k2)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      acc6(1)=abb6(9)
      acc6(2)=abb6(10)
      acc6(3)=abb6(11)
      acc6(4)=abb6(12)
      acc6(5)=abb6(13)
      acc6(6)=abb6(14)
      acc6(7)=abb6(15)
      acc6(8)=abb6(16)
      acc6(9)=abb6(17)
      acc6(10)=abb6(18)
      acc6(11)=abb6(20)
      acc6(12)=abb6(21)
      acc6(13)=abb6(22)
      acc6(14)=abb6(23)
      acc6(15)=abb6(24)
      acc6(16)=abb6(25)
      acc6(17)=abb6(26)
      acc6(18)=abb6(27)
      acc6(19)=abb6(28)
      acc6(20)=abb6(29)
      acc6(21)=abb6(30)
      acc6(22)=QspQ*acc6(18)
      acc6(23)=Qspk2*acc6(16)
      acc6(22)=acc6(23)+acc6(8)+acc6(22)
      acc6(22)=Qspvak1k5*acc6(22)
      acc6(23)=QspQ*acc6(11)
      acc6(24)=Qspk2*acc6(13)
      acc6(25)=acc6(19)*Qspval3k5
      acc6(25)=acc6(2)+acc6(25)
      acc6(25)=Qspvak1l3*acc6(25)
      acc6(26)=acc6(6)*Qspvak2k5
      acc6(26)=acc6(26)+acc6(5)
      acc6(26)=Qspvak1k2*acc6(26)
      acc6(22)=acc6(26)+acc6(22)+acc6(25)+acc6(24)+acc6(10)+acc6(23)
      acc6(22)=Qspvak1k2*acc6(22)
      acc6(23)=Qspvak1l3*acc6(19)
      acc6(23)=acc6(23)+acc6(9)
      acc6(23)=Qspval3k2*acc6(23)
      acc6(24)=QspQ*acc6(1)
      acc6(25)=Qspk2*acc6(14)
      acc6(23)=acc6(25)+acc6(7)+acc6(24)+acc6(23)
      acc6(23)=Qspvak1k5*acc6(23)
      acc6(24)=acc6(21)*Qspvak1l4
      acc6(25)=QspQ*acc6(4)
      acc6(26)=Qspk2*acc6(15)
      acc6(27)=Qspval3k2*acc6(17)
      acc6(28)=-Qspval3k2*acc6(12)
      acc6(28)=acc6(20)+acc6(28)
      acc6(28)=Qspvak1l3*acc6(28)
      brack=acc6(3)+acc6(22)+acc6(23)+acc6(24)+acc6(25)+acc6(26)+acc6(27)+acc6(&
      &28)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d6h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd6h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d6
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d6 = 0.0_ki
      d6 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d6, ki), aimag(d6), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d6h3l1_qp
