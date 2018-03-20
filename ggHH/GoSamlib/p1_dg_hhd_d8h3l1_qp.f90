module     p1_dg_hhd_d8h3l1_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p1_dg_hhd/helicity3d8h3l1_qp.f90
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
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki) :: brack
      complex(ki) :: acc8(28)
      complex(ki) :: QspQ
      complex(ki) :: Qspk2
      complex(ki) :: Qspvak1k5
      complex(ki) :: Qspval4k5
      complex(ki) :: Qspvak1l4
      complex(ki) :: Qspvak2k5
      complex(ki) :: Qspvak1k2
      complex(ki) :: Qspval4k2
      complex(ki) :: Qspvak1l3
      QspQ = dotproduct(Q,Q)
      Qspk2 = dotproduct(Q,k2)
      Qspvak1k5 = dotproduct(Q,spvak1k5)
      Qspval4k5 = dotproduct(Q,spval4k5)
      Qspvak1l4 = dotproduct(Q,spvak1l4)
      Qspvak2k5 = dotproduct(Q,spvak2k5)
      Qspvak1k2 = dotproduct(Q,spvak1k2)
      Qspval4k2 = dotproduct(Q,spval4k2)
      Qspvak1l3 = dotproduct(Q,spvak1l3)
      acc8(1)=abb8(9)
      acc8(2)=abb8(10)
      acc8(3)=abb8(11)
      acc8(4)=abb8(12)
      acc8(5)=abb8(13)
      acc8(6)=abb8(14)
      acc8(7)=abb8(15)
      acc8(8)=abb8(16)
      acc8(9)=abb8(17)
      acc8(10)=abb8(18)
      acc8(11)=abb8(20)
      acc8(12)=abb8(21)
      acc8(13)=abb8(22)
      acc8(14)=abb8(23)
      acc8(15)=abb8(24)
      acc8(16)=abb8(25)
      acc8(17)=abb8(26)
      acc8(18)=abb8(27)
      acc8(19)=abb8(28)
      acc8(20)=abb8(29)
      acc8(21)=abb8(30)
      acc8(22)=QspQ*acc8(18)
      acc8(23)=Qspk2*acc8(16)
      acc8(22)=acc8(23)+acc8(8)+acc8(22)
      acc8(22)=Qspvak1k5*acc8(22)
      acc8(23)=QspQ*acc8(11)
      acc8(24)=Qspk2*acc8(13)
      acc8(25)=acc8(19)*Qspval4k5
      acc8(25)=acc8(2)+acc8(25)
      acc8(25)=Qspvak1l4*acc8(25)
      acc8(26)=acc8(6)*Qspvak2k5
      acc8(26)=acc8(26)+acc8(5)
      acc8(26)=Qspvak1k2*acc8(26)
      acc8(22)=acc8(26)+acc8(22)+acc8(25)+acc8(24)+acc8(10)+acc8(23)
      acc8(22)=Qspvak1k2*acc8(22)
      acc8(23)=Qspvak1l4*acc8(19)
      acc8(23)=acc8(23)+acc8(9)
      acc8(23)=Qspval4k2*acc8(23)
      acc8(24)=QspQ*acc8(1)
      acc8(25)=Qspk2*acc8(14)
      acc8(23)=acc8(25)+acc8(7)+acc8(24)+acc8(23)
      acc8(23)=Qspvak1k5*acc8(23)
      acc8(24)=acc8(20)*Qspvak1l3
      acc8(25)=QspQ*acc8(4)
      acc8(26)=Qspk2*acc8(15)
      acc8(27)=Qspval4k2*acc8(17)
      acc8(28)=-Qspval4k2*acc8(12)
      acc8(28)=acc8(21)+acc8(28)
      acc8(28)=Qspvak1l4*acc8(28)
      brack=acc8(3)+acc8(22)+acc8(23)+acc8(24)+acc8(25)+acc8(26)+acc8(27)+acc8(&
      &28)
   end  function brack_1
!---#] function brack_1:
!---#[ numerator interfaces:
   !------#[ subroutine numerator_ninja:
   subroutine numerator_ninja(ncut, Q_ext, mu2_ext, numerator) &
   & bind(c, name="p1_dg_hhd_d8h3l1_qp_ninja")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut
      complex(ki_nin), dimension(0:3), intent(in) :: Q_ext
      complex(ki_nin), intent(in) :: mu2_ext
      complex(ki_nin), intent(out) :: numerator
      complex(ki) :: d8
      ! The Q that goes into the diagram
      complex(ki), dimension(4) :: Q
      complex(ki) :: mu2
      Q(1:4)  =cmplx(real(-Q_ext(0:3),  ki_nin), aimag(-Q_ext(0:3)), ki)
      d8 = 0.0_ki
      d8 = (cond(epspow.eq.0,brack_1,Q,mu2))
      numerator = cmplx(real(d8, ki), aimag(d8), ki_nin)
   end subroutine numerator_ninja
   !------#] subroutine numerator_ninja:
!---#] numerator interfaces:
end module p1_dg_hhd_d8h3l1_qp
